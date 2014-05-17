param($installPath, $toolsPath, $package, $project)

$xml = [xml](get-content $project.ProjectItems.Item("web.config").FileNames(1));
$root = $xml.get_DocumentElement();
$guid = [GUID]::NewGuid();

if ( !$root."system.web".authentication.forms.hasAttribute("name") ) { 
	$root."system.web".authentication.forms.setAttribute("name", $guid.toString().substring(0, 7) + "_auth");
}
if ( !$root."system.web".sessionState.hasAttribute("cookieName") ) { 
	$root."system.web".sessionState.setAttribute("cookieName", $guid.toString().substring(0, 7) + "_sid");
}
$xml.Save($project.ProjectItems.Item("web.config").FileNames(1));