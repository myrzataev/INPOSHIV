abstract class UrlRoutes {
  static const String baseUrl =
  //  "https://24redirect.ru";
  "http://192.168.31.209:8080";
  static const String deleteAccount = "api/auth/account";
  static const String auth = "api/register";
  static const String login = "api/auth/login";
  static const String refresh = "api/auth/refresh";
  static const String getCategories = "api/clothing/category";
  static const String customersurvey = "api/customersurvey";
  static const String customerPriorities = "api/customer-priorities";
  static const String manufacturerPriorities = "api/manufacturer-priorities";
  static const String fabricTypes = "api/fabrics";
  static const String profile = "api/profile";
  static const String getSizeList = "api/sizes";
  static const String getCurrency = "api/currency/usd";
  static const String createOrder = "api/orders";
  static const String createAuction = "api/auctions";
  static const String manufacturer = "api/manufacturers";
  static const String createManufacturerProfile = "api/manufacturersurvey";
  static const String sendMessage = "api/chat/messages";
  static const String createChatRoom = "api/chat/chatRoom";
  static const String getChatRoomHistory = "/api/chat/messages";
  static const String getChatRoomsList = "api/chat/userChatRooms";
  static const String sendInvoice = "api/invoice";
  static const String ordersByCustomer = "api/orders/by-customer";
  static const String searchOrder = "api/manufacturers/orders";
  static const String searchManufacturer =
      "api/manufacturers/relevant-manufacturers";
  static const String manufacturerAuctions = "api/auctions/my";
  static const String orderTracking = "api/order-tracking/order";
  static const String reviewToManufacturer = "/api/reviews/to-manufacturer";
  static const String invoiceDetails = "api/invoice/order/";
  static const String notificationsHistory = "api/notification/history";
  static const String customersCompletedOrders = "api/orders/completed";
  static const String changePassword = "api/profile/password";
  static const String manufacturersCompletedOrders =
      "api/orders/completed-by-manufacturer";
  static const String reviewToCustomer = "api/reviews/to-customer";
  static const String sendFilesToChat = "api/files/upload";
  static const String customersOrderHistory = "api/orders/order-history";
    static const String activeAuctions = "api/auctions/active";

}
