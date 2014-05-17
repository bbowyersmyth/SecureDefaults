function Update-View($project, $controllerName, $viewName, $findText, $replaceText) {
	# Get the project item for the views folder
	try {
		$viewsFolderProjectItem = $project.ProjectItems.Item("Views")
	}
	catch {
        # file not found
        return
	}

    try {
        $controllerFileProjectItem = $viewsFolderProjectItem.ProjectItems.Item($controllerName)
    }
    catch {
        # file not found
        return
    }

    try {
        $viewFileProjectItem = $controllerFileProjectItem.ProjectItems.Item($viewName)
    }
    catch {
        # file not found
        return
    }

    if ($viewFileProjectItem -eq $null) {
        # file not found
        return
    }

    $viewFilePath = $viewFileProjectItem.FileNames(1)

	(Get-Content $viewFilePath) | ForEach-Object { $_ -replace $findText, $replaceText } | Set-Content $viewFilePath
}

function Update-Controller($project, $controllerName, $findText, $replaceText) {
	try {
		$controllersFolderProjectItem = $project.ProjectItems.Item("Controllers")
	}
	catch {
        # file not found
        return
	}
	
    try {
        $controllerFileProjectItem = $controllersFolderProjectItem.ProjectItems.Item($controllerName)
    }
    catch {
        # file not found
        return
    }

    if ($controllerFileProjectItem -eq $null) {
        # file not found
        return
    }

    $controllerFilePath = $controllerFileProjectItem.FileNames(1)

	(Get-Content $controllerFilePath) | ForEach-Object { $_ -replace $findText, $replaceText } | Set-Content $controllerFilePath
}

function Update-GlobalAsax($project, $function, $codeInsert) {
    $globalAsaxProjectItem = $project.ProjectItems.Item("Global.asax")
    $globalAsaxCodeProjectItem = $globalAsaxProjectItem.ProjectItems.Item("Global.asax.cs")

    $fileCodeModel = $globalAsaxCodeProjectItem.FileCodeModel
    # look for the namespace in the active document
    $cns = ForEach-Object { $fileCodeModel.CodeElements } | where { $_.Kind -eq [EnvDTE.vsCMElement]::vsCMElementNamespace }
    if ($cns -eq $null)
    {
        return
    }
    # look for the first class
    $cls = ForEach-Object { $cns.Members } | where { $_.Kind -eq [EnvDTE.vsCMElement]::vsCMElementClass }
    if ($cls -eq $null)
    {
        return
    }
    $cf = ForEach-Object { $cls.Members } | where { $_.Name -eq $function }
    if ($cf -eq $null)
    {
        if ($function -eq "Application_BeginRequest")
        {
            $cf = $cls.AddFunction("Application_BeginRequest", [EnvDTE.vsCMFunction]::vsCMFunctionFunction, [EnvDTE.vsCMTypeRef]::vsCMTypeRefVoid, -1, [EnvDTE.vsCMAccess]::vsCMAccessProtected)
            $cf.AddParameter("sender", "System.Object", -1)
            $cf.AddParameter("e", "System.EventArgs", -1)
        }
        if ($function -eq "Application_Start")
        {
            $cf = $cls.AddFunction("Application_Start", [EnvDTE.vsCMFunction]::vsCMFunctionFunction, [EnvDTE.vsCMTypeRef]::vsCMTypeRefVoid, -1, [EnvDTE.vsCMAccess]::vsCMAccessProtected)
        }
    }
    $textPoint = $cf.GetStartPoint([EnvDTE.vsCMPart]::vsCMPartBody)
    $editPoint = $textPoint.CreateEditPoint()
    $editPoint.Insert($codeInsert)
    $textPoint.CreateEditPoint().SmartFormat($editPoint)
}

function RemoveRegion-GlobalAsax($project, $regionRegex) {
    $globalAsaxProjectItem = $project.ProjectItems.Item("Global.asax")
    $globalAsaxCodeProjectItem = $globalAsaxProjectItem.ProjectItems.Item("Global.asax.cs")
    $globalAsaxFilePath = $viewFileProjectItem.FileNames(1)

	(Get-Content $globalAsaxFilePath) | ForEach-Object { $_ -replace $regionRegex, "" } | Set-Content $globalAsaxFilePath
}
