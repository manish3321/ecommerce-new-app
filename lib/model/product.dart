class Product {
  String id;
  String prodname;
  double price;
  double oldprice;
  String img;
  String description;

  Product(
      {this.id,
      this.prodname,
      this.oldprice,
      this.price,
      this.img,
      this.description});
}

List<Product> products = [
  Product(
    id: "1",
    prodname: "New - shining jacket 2",
    price: 750,
    oldprice: 960,
    img: "https://m.media-amazon.com/images/I/61fTX5TjAEL._UL1001_.jpg",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit ",
  ),
  Product(
    id: "2",
    prodname: "Gaming Desktop Computer AMD Ryzen 7 2700X",
    price: 214000,
    oldprice: 250000,
    img:
        "https://static-01.daraz.com.np/p/0d899f96eb6981036b8135fcc2074c72.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  ),
  Product(
    id: "3",
    prodname: "TELFAR 8-POCKET CARGO PANTS KHAKI",
    price: 750,
    oldprice: 960,
    img:
        "https://tres-bien.com/media/catalog/product/cache/5710d9a67a6480fbbebbe280e6c5c35d/t/e/telfar_200602_033.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  ),
  Product(
    id: "3",
    prodname: "TELFAR 8-POCKET CARGO PANTS KHAKI",
    price: 750,
    oldprice: 960,
    img:
        "https://tres-bien.com/media/catalog/product/cache/5710d9a67a6480fbbebbe280e6c5c35d/t/e/telfar_200602_033.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  ),
  Product(
    id: "1",
    prodname: "New - shining jacket 2",
    price: 750,
    oldprice: 960,
    img: "https://m.media-amazon.com/images/I/61fTX5TjAEL._UL1001_.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  ),
  Product(
    id: "2",
    prodname: "Gaming Desktop Computer AMD Ryzen 7 2700X",
    price: 214000,
    oldprice: null,
    img:
        "https://static-01.daraz.com.np/p/0d899f96eb6981036b8135fcc2074c72.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  ),
];
