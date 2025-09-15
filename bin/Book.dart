//  Task 1
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    if (discountPercent < 0) discountPercent = 0;
    if (discountPercent > 100) discountPercent = 100;
    return price * (1 - discountPercent / 100);
  }

  void printDetailsWithDiscount(double discountPercent) {
    print(
        "Title: $title, Author: $author, Original Price: $price, "
            "Price after $discountPercent% discount: ${discountedPrice(discountPercent)}");
  }
}
