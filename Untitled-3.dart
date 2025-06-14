document.getElementById("contactForm").addEventListener("submit", function(e) {
  e.preventDefault();

  // Input elements
  const name = document.getElementById("name");
  const email = document.getElementById("email");
  const message = document.getElementById("message");

  // Error message containers
  const nameError = document.getElementById("nameError");
  const emailError = document.getElementById("emailError");
  const messageError = document.getElementById("messageError");
  const successMessage = document.getElementById("successMessage");

  // Reset messages
  nameError.textContent = "";
  emailError.textContent = "";
  messageError.textContent = "";
  successMessage.textContent = "";

  let isValid = true;

  // Validate name
  if (name.value.trim() === "") {
    nameError.textContent = "Name is required.";
    isValid = false;
  }

  // Validate email with regex
  const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (email.value.trim() === "") {
    emailError.textContent = "Email is required.";
    isValid = false;
  } else if (!emailPattern.test(email.value.trim())) {
    emailError.textContent = "Please enter a valid email.";
    isValid = false;
  }

  // Validate message
  if (message.value.trim() === "") {
    messageError.textContent = "Message is required.";
    isValid = false;
  }

  // Show success if valid
  if (isValid) {
    successMessage.textContent = "Form submitted successfully!";
    name.value = "";
    email.value = "";
    message.value = "";
  }
});
