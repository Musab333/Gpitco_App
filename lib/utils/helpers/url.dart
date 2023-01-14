class Url {
  static String baseUrl = "https://gptco.mohammedomer.dev/api/v1/";
  static String getUser = "${baseUrl}user";
  static String resetPassword = "${baseUrl}reset-password";
  static String permissions = "${baseUrl}permissions";
  static String permissionsUpdate = "${baseUrl}permissions/update";
  static String getUsers = "${baseUrl}users";
  static String addUsers = "${baseUrl}users/create";
  static String updateCorporis = "${baseUrl}users/update/corporis";
  static String updateUsername = "${baseUrl}users/update_username/fugiat";

  static String cabReciepts = "${baseUrl}cab_reciepts";
  static String cabPayments = "${baseUrl}cab_payments";
  static String vendors = "${baseUrl}vendors";
  static String customers = "${baseUrl}customers";
  static String login = "${baseUrl}login";
  static String checkCompany = "${baseUrl}check_company";
  static String languges = "${baseUrl}languges";

  static String appdata =
      "${baseUrl}appdata?data[]=banks&data[]=stores&data[]=branches&data[]=vendors_groups&data[]=customers_groups&data[]=sell_taxes&=&data[]=burchase_taxes&data[]=categories&data[]=items";

  static String salesBills = "${baseUrl}sales_bills";
  static String salesBillsReturn = "${baseUrl}sales_bills_return";
  static String searchByBarcode = "${baseUrl}search_by_barcode";
  static String purchases = "${baseUrl}purchases";
  static String purchasesReturn = "${baseUrl}purchases_return";
  static String contacts = "${baseUrl}contacts";
  static String reportStatement = "${baseUrl}reports/report_statement";
  static String salesBillDaily = "${baseUrl}reports/sales_bill_daily";
  static String purchaseBillDaily = "${baseUrl}reports/purchase_bill_daily";
  static String salesDailyBrief = "${baseUrl}reports/sales_daily_brief";
  static String salesDaily = "${baseUrl}reports/sales_daily";
  static String purchaseDaily = "${baseUrl}reports/purchase_daily";
  static String salesValue = "${baseUrl}reports/sales_value";
  static String purchaseDailyVendor = "${baseUrl}reports/purchase_daily_vendor";
  static String counts = "${baseUrl}counts";
  static String materialMove = "${baseUrl}material_move";
}
