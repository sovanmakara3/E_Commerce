class AppUrl {
  static var baseUrl = "https://cms.istad.co";

  // Products
  static var getAllProducts = "$baseUrl/api/e-commerce-products?populate=*";
  static var postProducts = "$baseUrl/api/e-commerce-products";

  // Categories
  static var getAllCategories = "$baseUrl/api/e-commerce-categories?pupulate=*";
  static var postCategories = "$baseUrl/api/e-commerce-categories";
}
