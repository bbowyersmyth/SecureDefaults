msbuild SecureDefaults.sln /t:clean /p:Configuration=Release /p:Platform="Any CPU"
msbuild SecureDefaults.sln /p:Configuration=Release /p:Platform="Any CPU" /p:VisualStudioVersion=12.0
md builds
md builds\local
.\.NuGet\nuget.exe pack NuSpec\SecureDefault.nuspec -OutputDirectory builds\local
.\.NuGet\nuget.exe pack MvcNuSpec\SecureDefaultMvc.nuspec -OutputDirectory builds\local
.\.NuGet\nuget.exe pack SslNuSpec\SecureDefaultSsl.nuspec -OutputDirectory builds\local