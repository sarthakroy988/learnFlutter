class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id = "",
      this.name = "",
      this.desc = "",
      this.price = 0,
      this.color = "",
      this.image = ""});
}

final products = [
  Item(
      id: "Codepur001",
      name: "iphone 12 pro",
      desc: "Apple iphone 12th Generation",
      price: 999,
      color: "#33505a",
      image:
          "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-family-hero?wid=940&hei=1112&fmt=png-alpha&.v=1644969385433")
];
