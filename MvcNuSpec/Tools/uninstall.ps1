param($installPath, $toolsPath, $package, $project)

. (Join-Path $toolsPath common.ps1)

# Auto complete off (MVC 4)
Update-View $viewsFolderProjectItem "Account" "_ChangePasswordPartial.cshtml" "@Html\.PasswordFor\(m => m\.OldPassword, new \{ ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.OldPassword)"
Update-View $viewsFolderProjectItem "Account" "_ChangePasswordPartial.cshtml" "@Html\.PasswordFor\(m => m\.NewPassword, new \{ ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.NewPassword)"
Update-View $viewsFolderProjectItem "Account" "_ChangePasswordPartial.cshtml" "@Html\.PasswordFor\(m => m\.ConfirmPassword, new \{ ""autocomplete"" = ""off""\ }\)" "@Html.PasswordFor(m => m.ConfirmPassword)"
Update-View $viewsFolderProjectItem "Account" "Login.cshtml" "@Html\.TextBoxFor\(m => m\.UserName, new \{ ""autocomplete"" = ""off"" \}\)" "@Html.TextBoxFor(m => m.UserName)"
Update-View $viewsFolderProjectItem "Account" "Login.cshtml" "@Html\.PasswordFor\(m => m\.Password, new \{ ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.Password)"
Update-View $viewsFolderProjectItem "Account" "Register.cshtml" "@Html\.TextBoxFor\(m => m\.UserName, new \{ ""autocomplete"" = ""off"" \}\)" "@Html.TextBoxFor(m => m.UserName)"
Update-View $viewsFolderProjectItem "Account" "Register.cshtml" "@Html\.PasswordFor\(m => m\.Password, new \{ ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.Password)"
Update-View $viewsFolderProjectItem "Account" "Register.cshtml" "@Html\.PasswordFor\(m => m\.ConfirmPassword, new \{ ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.ConfirmPassword)"

# Auto complete off (MVC > 4)
Update-View $viewsFolderProjectItem "Account" "Login.cshtml" "@Html\.TextBoxFor\(m => m\.Email, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.TextBoxFor(m => m.Email, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Account" "Login.cshtml" "@Html\.PasswordFor\(m => m\.Password, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.Password, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Account" "ForgotPassword.cshtml" "@Html\.TextBoxFor\(m => m\.Email, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.TextBoxFor(m => m.Email, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Account" "Register.cshtml" "@Html\.TextBoxFor\(m => m\.Email, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.TextBoxFor(m => m.Email, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Account" "Register.cshtml" "@Html\.PasswordFor\(m => m\.Password, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.Password, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Account" "Register.cshtml" "@Html\.PasswordFor\(m => m\.ConfirmPassword, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.ConfirmPassword, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Account" "ResetPassword.cshtml" "@Html\.TextBoxFor\(m => m\.Email, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.TextBoxFor(m => m.Email, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Account" "ResetPassword.cshtml" "@Html\.PasswordFor\(m => m\.Password, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.Password, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Account" "ResetPassword.cshtml" "@Html\.PasswordFor\(m => m\.ConfirmPassword, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.ConfirmPassword, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Manage" "ChangePassword.cshtml" "@Html\.PasswordFor\(m => m\.OldPassword, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.OldPassword, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Manage" "ChangePassword.cshtml" "@Html\.PasswordFor\(m => m\.NewPassword, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.NewPassword, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Manage" "ChangePassword.cshtml" "@Html\.PasswordFor\(m => m\.ConfirmPassword, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.ConfirmPassword, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Manage" "SetPassword.cshtml" "@Html\.PasswordFor\(m => m\.NewPassword, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.NewPassword, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "Manage" "SetPassword.cshtml" "@Html\.PasswordFor\(m => m\.ConfirmPassword, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.ConfirmPassword, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "UsersAdmin" "Create.cshtml" "@Html\.TextBoxFor\(m => m\.Email, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.TextBoxFor(m => m.Email, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "UsersAdmin" "Create.cshtml" "@Html\.PasswordFor\(m => m\.Password, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.Password, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "UsersAdmin" "Create.cshtml" "@Html\.PasswordFor\(m => m\.ConfirmPassword, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.PasswordFor(m => m.ConfirmPassword, new { @class = ""form-control"" })"
Update-View $viewsFolderProjectItem "UsersAdmin" "Edit.cshtml" "@Html\.TextBoxFor\(m => m\.Email, new \{ @class = ""form-control"", ""autocomplete"" = ""off"" \}\)" "@Html.TextBoxFor(m => m.Email, new { @class = ""form-control"" })"
