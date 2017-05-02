function showBlue(event) {
    event.target.style.background = "blue"; 
}

function showGrey(event) {
    event.target.style.background = "grey";
}

var firstNameField = document.getElementById("first");
firstNameField.addEventListener("mouseover", showBlue);

firstNameField.addEventListener("mouseout", showGrey);