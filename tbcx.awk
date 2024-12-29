

BEGIN {
    printf "\nFace Value Discount Rate Days to Maturity Discount Amount Purchase Price Apporx Yield to Matrurity\n"


}

{


    FS = " "; # Set field separator to space

    face_value  = $1

    discount_rate = $2

    days_to_maturity = $3

    months = days_to_maturity / 30

    # Calculate discount amount
    discount_amount = face_value * discount_rate / 100 * days_to_maturity / 360

    # Calculate purchase price
    purchase_price = face_value - discount_amount

    # Calculate yield to maturity (approximate)
    yield_to_maturity = discount_amount * 365 / (purchase_price * days_to_maturity)
    discount_by_month = discount_amount  / months

    # Display results
    printf "$%-10.0f  ", face_value
    printf "%-5.2f  ", discount_rate
    printf "%3d days  ", days_to_maturity
    printf "%2d months  ", months
    printf "$%-12.2f  ", discount_amount
    printf "$%-12.2f  ", purchase_price
    printf "%-5.2f\n", yield_to_maturity * 100
}
