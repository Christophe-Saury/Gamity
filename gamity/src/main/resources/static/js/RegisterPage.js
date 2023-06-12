const usernameInput = document.getElementById("username");
const passwordInput = document.getElementById("password");
const passwordConfirmInput = document.getElementById("confirmpassword");
const submitButton = document.getElementById("register-button");

function togglePasswordVisibility(inputId) {
    const input = document.getElementById(inputId);
    input.type = input.type === "password" ? "text" : "password";
}

function validatePassword() {
    const username = usernameInput.value;
    const password = passwordInput.value;
    const confirmPassword = passwordConfirmInput.value;

    // Reset previous error messages
    document.getElementById("username-error").textContent = "";
    document.getElementById("password-error").textContent = "";
    document.getElementById("confirmpassword-error").textContent = "";

    if (username.trim() === "") {
        document.getElementById("username-error").textContent = "Username is required";
        return false;
    }

    if (password.length < 8) {
        document.getElementById("password-error").textContent = "Password must be at least 8 characters long";
        return false;
    }
    if (!/[a-z]/.test(password)) {
        document.getElementById("password-error").textContent = "Password must contain at least one lowercase letter";
        return false;
    }
    if (!/[A-Z]/.test(password)) {
        document.getElementById("password-error").textContent = "Password must contain at least one uppercase letter";
        return false;
    }
    if (!/\d/.test(password)) {
        document.getElementById("password-error").textContent = "Password must contain at least one digit";
        return false;
    }
    if (!/[@$#]/.test(password)) {
        document.getElementById("password-error").textContent = "Password must contain at least one special character (@, $, #)";
        return false;
    }
    if (password !== confirmPassword) {
        document.getElementById("confirmpassword-error").textContent = "Confirm password does not match with the password";
        return false;
    }

    return true;
}

submitButton.addEventListener("click", (event) => {
    if (!validatePassword()) {
        event.preventDefault();
    }
});