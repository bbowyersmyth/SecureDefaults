msbuild SecureDefaults.sln /t:clean /p:Configuration=Release 
msbuild SecureDefaults.sln /p:Configuration=Release /p:VisualStudioVersion=12.0
md builds
md builds\local
.\.NuGet\nuget.exe pack NuSpec\SecureDefault.nuspec -OutputDirectory builds\local
.\.NuGet\nuget.exe pack MvcNuSpec\SecureDefaultMvc.nuspec -OutputDirectory builds\local
.\.NuGet\nuget.exe pack SslNuSpec\SecureDefaultSsl.nuspec -OutputDirectory builds\local