md builds
md builds\local
.\.NuGet\nuget.exe pack NuSpec\SecureDefault.nuspec -OutputDirectory builds\local
.\.NuGet\nuget.exe pack MvcNuSpec\SecureDefaultMvc.nuspec -OutputDirectory builds\local
.\.NuGet\nuget.exe pack SslNuSpec\SecureDefaultSsl.nuspec -OutputDirectory builds\local