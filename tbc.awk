BEGIN {
    FS = " "; # Set field separator to space

    # Get user input
    printf "Enter the face value of the Treasury Bill: "
    getline face_value < "/dev/stdin"

    printf "Enter the discount rate (in percentage): "
    getline discount_rate < "/dev/stdin"

    printf "Enter the number of days to maturity: "
    getline days_to_maturity < "/dev/stdin"

    # Calculate discount amount
    discount_amount = face_value * discount_rate / 100 * days_to_maturity / 360

    # Calculate purchase price
    purchase_price = face_value - discount_amount

    # Calculate yield to maturity (approximate)
    yield_to_maturity = discount_amount * 365 / (purchase_price * days_to_maturity)

    # Display results
    printf "\nTreasury Bill Information:\n"
    printf "Face Value: $%.2f\n", face_value
    printf "Discount Rate: %.2f%%\n", discount_rate
    printf "Days to Maturity: %d days\n", days_to_maturity
    printf "Discount Amount: $%.2f\n", discount_amount
    printf "Purchase Price: $%.2f\n", purchase_price
    printf "Approximate Yield to Maturity: %.2f%%\n", yield_to_maturity * 100
}
