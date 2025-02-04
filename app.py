def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    if y == 0:
        return "Error! Division by zero."
    return x / y

def percentage(x, y):
    if y == 0:
        return "Error! Division by zero."
    return (x / y) * 100

def calculator():
    """
    A simple calculator program that performs basic arithmetic operations.

    Functions:
        calculator(): Prompts the user to select an operation and input numbers, then performs the selected operation.

    The available operations are:
        1. Addition
        2. Subtraction
        3. Multiplication
        4. Division
        5. Percentage

    The user is prompted to enter their choice of operation and two numeric values. The program then performs the selected operation and displays the result. If the user inputs invalid data, an error message is displayed.

    Note:
        - The program handles invalid numeric input by displaying an error message and terminating the current operation.
        - The program handles unexpected errors by displaying an error message and restarting the calculator.
    """
    print("Select operation:")
    print("1. Add")
    print("2. Subtract")
    print("3. Multiply")
    print("4. Divide")
    print("5. Percentage")

    choice = input("Enter choice(1/2/3/4/5): ")

    if choice in ['1', '2', '3', '4', '5']:
        try:
            num1 = float(input("Enter first number: "))
            num2 = float(input("Enter second number: "))
        except ValueError:
            print("Invalid input! Please enter numeric values.")
            return

        if choice == '1':
            print(f"{num1} + {num2} = {add(num1, num2)}")

        elif choice == '2':
            print(f"{num1} - {num2} = {subtract(num1, num2)}")

        elif choice == '3':
            print(f"{num1} * {num2} = {multiply(num1, num2)}")

        elif choice == '4':
            print(f"{num1} / {num2} = {divide(num1, num2)}")

        elif choice == '5':
            print(f"{num1} is {percentage(num1, num2)}% of {num2}")
    try:
        calculator()
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        print("Invalid input")

if __name__ == "__main__":
    calculator()