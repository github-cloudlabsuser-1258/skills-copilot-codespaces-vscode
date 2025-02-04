// Function to perform addition
function add(a, b) {
    return a + b;
}

// Function to perform subtraction
function subtract(a, b) {
    return a - b;
}

// Function to perform multiplication
function multiply(a, b) {
    return a * b;
}

// Function to perform division
function divide(a, b) {
    if (b === 0) {
        return "Error! Division by zero.";
    }
    return a / b;
}

// Function to get user input and perform the selected operation
function calculator() {
    const operation = prompt("Select operation:\n1. Add\n2. Subtract\n3. Multiply\n4. Divide");

    if (['1', '2', '3', '4'].includes(operation)) {
        const num1 = parseFloat(prompt("Enter the first number:"));
        const num2 = parseFloat(prompt("Enter the second number:"));

        let result;
        switch (operation) {
            case '1':
                result = add(num1, num2);
                break;
            case '2':
                result = subtract(num1, num2);
                break;
            case '3':
                result = multiply(num1, num2);
                break;
            case '4':
                result = divide(num1, num2);
                break;
        }

        alert(`The result is: ${result}`);
    } else {
        alert("Invalid operation selected. Please try again.");
    }
}

// Run the calculator function
calculator();