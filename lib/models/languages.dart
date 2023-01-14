class Languages {
  String? status;
  Null? message;
  Data? data;

  Languages({this.status, this.message, this.data});

  Languages.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  AppNameText? appNameText;
  AppNameText? setupScreenFristText;
  AppNameText? titleSetupScreenSecondText;
  AppNameText? subjectSetupScreenSecondText;
  AppNameText? titleSetupScreenTrirdText;
  AppNameText? subjectSetupScreenTrirdText;
  AppNameText? companyNumberText;
  AppNameText? confirmText;
  AppNameText? quConfirmAccountText;
  AppNameText? welcomeToGpitcoText;
  AppNameText? userNameText;
  AppNameText? passwordText;
  AppNameText? loginText;
  AppNameText? invoicesText;
  AppNameText? customSupplieText;
  AppNameText? reportsText;
  AppNameText? clientSupplierText;
  AppNameText? listInvoicesText;
  AppNameText? salesPurchaseReturnText;
  AppNameText? bondCatchText;
  AppNameText? bondExchangeText;
  AppNameText? invoicesSaleText;
  AppNameText? invoicesPurchaseText;
  AppNameText? invoicesNumberText;
  AppNameText? dateTimeText;
  AppNameText? bondNumberText;
  AppNameText? dateText;
  AppNameText? branchText;
  AppNameText? fundText;
  AppNameText? movementTypeText;
  AppNameText? customNameText;
  AppNameText? customCodeText;
  AppNameText? valueText;
  AppNameText? statementText;
  AppNameText? addBondCashingText;
  AppNameText? addBondCatchText;
  AppNameText? bondNewText;
  AppNameText? printText;
  AppNameText? createSalesInvoiceText;
  AppNameText? createPurchaseText;
  AppNameText? itemCodeText;
  AppNameText? itemNameText;
  AppNameText? itemNumberText;
  AppNameText? quantityText;
  AppNameText? unitText;
  AppNameText? additionText;
  AppNameText? totalText;
  AppNameText? taxText;
  AppNameText? deductText;
  AppNameText? netText;
  AppNameText? notsText;
  AppNameText? createInvoiceText;
  AppNameText? clientNameText;
  AppNameText? invoiceValueText;
  AppNameText? newInvoiceText;
  AppNameText? listCustomersSupplierText;
  AppNameText? fundMovementText;
  AppNameText? accountStatementClientText;
  AppNameText? codeText;
  AppNameText? accountCodeText;
  AppNameText? balanceText;
  AppNameText? movementText;
  AppNameText? debtorText;
  AppNameText? creditorText;
  AppNameText? movementNumberText;
  AppNameText? totalMovementsText;
  AppNameText? downloadText;
  AppNameText? clinentText;
  AppNameText? suppliersText;
  AppNameText? newClientText;
  AppNameText? newSupplierText;
  AppNameText? addClientText;
  AppNameText? customerCodeText;
  AppNameText? nameArabicText;
  AppNameText? nameEnglishText;
  AppNameText? addressText;
  AppNameText? listPriceText;
  AppNameText? crowdPriceText;
  AppNameText? accountType;
  AppNameText? debtorCreditorText;
  AppNameText? gouupText;
  AppNameText? noteText;
  AppNameText? addSupplierText;
  AppNameText? salesReportsText;
  AppNameText? procurementReportsText;
  AppNameText? itemsMovemetText;
  AppNameText? mostMobileItemsText;
  AppNameText? lessMovingItemsText;
  AppNameText? movementClientsText;
  AppNameText? hightTrafficClinentsText;
  AppNameText? lowTrafficClientsText;
  AppNameText? salePerDayText;
  AppNameText? tatalSaleText;
  AppNameText? profileText;
  AppNameText? technicalSupportText;
  AppNameText? aboutText;
  AppNameText? logoutText;
  AppNameText? adjectiveText;
  AppNameText? phoneNumberText;
  AppNameText? emailText;
  AppNameText? saveEditsText;
  AppNameText? policyPrivacyText;
  AppNameText? helpCenterText;
  AppNameText? contactUsText;
  AppNameText? messageText;
  AppNameText? sendText;
  AppNameText? agreeText;
  AppNameText? disAgreeText;
  AppNameText? settingText;
  AppNameText? userPermissionsText;
  AppNameText? languageSelect;
  AppNameText? getStarted;
  AppNameText? skipText;
  AppNameText? startText;
  AppNameText? registerText;
  AppNameText? clientText;
  AppNameText? fieldRequired;
  AppNameText? welcomeHome;
  AppNameText? companyText;
  AppNameText? benefitName;

  Data(
      {this.appNameText,
      this.setupScreenFristText,
      this.titleSetupScreenSecondText,
      this.subjectSetupScreenSecondText,
      this.titleSetupScreenTrirdText,
      this.subjectSetupScreenTrirdText,
      this.companyNumberText,
      this.confirmText,
      this.quConfirmAccountText,
      this.welcomeToGpitcoText,
      this.userNameText,
      this.passwordText,
      this.loginText,
      this.invoicesText,
      this.customSupplieText,
      this.reportsText,
      this.clientSupplierText,
      this.listInvoicesText,
      this.salesPurchaseReturnText,
      this.bondCatchText,
      this.bondExchangeText,
      this.invoicesSaleText,
      this.invoicesPurchaseText,
      this.invoicesNumberText,
      this.dateTimeText,
      this.bondNumberText,
      this.dateText,
      this.branchText,
      this.fundText,
      this.movementTypeText,
      this.customNameText,
      this.customCodeText,
      this.valueText,
      this.statementText,
      this.addBondCashingText,
      this.addBondCatchText,
      this.bondNewText,
      this.printText,
      this.createSalesInvoiceText,
      this.createPurchaseText,
      this.itemCodeText,
      this.itemNameText,
      this.itemNumberText,
      this.quantityText,
      this.unitText,
      this.additionText,
      this.totalText,
      this.taxText,
      this.deductText,
      this.netText,
      this.notsText,
      this.createInvoiceText,
      this.clientNameText,
      this.invoiceValueText,
      this.newInvoiceText,
      this.listCustomersSupplierText,
      this.fundMovementText,
      this.accountStatementClientText,
      this.codeText,
      this.accountCodeText,
      this.balanceText,
      this.movementText,
      this.debtorText,
      this.creditorText,
      this.movementNumberText,
      this.totalMovementsText,
      this.downloadText,
      this.clinentText,
      this.suppliersText,
      this.newClientText,
      this.newSupplierText,
      this.addClientText,
      this.customerCodeText,
      this.nameArabicText,
      this.nameEnglishText,
      this.addressText,
      this.listPriceText,
      this.crowdPriceText,
      this.accountType,
      this.debtorCreditorText,
      this.gouupText,
      this.noteText,
      this.addSupplierText,
      this.salesReportsText,
      this.procurementReportsText,
      this.itemsMovemetText,
      this.mostMobileItemsText,
      this.lessMovingItemsText,
      this.movementClientsText,
      this.hightTrafficClinentsText,
      this.lowTrafficClientsText,
      this.salePerDayText,
      this.tatalSaleText,
      this.profileText,
      this.technicalSupportText,
      this.aboutText,
      this.logoutText,
      this.adjectiveText,
      this.phoneNumberText,
      this.emailText,
      this.saveEditsText,
      this.policyPrivacyText,
      this.helpCenterText,
      this.contactUsText,
      this.messageText,
      this.sendText,
      this.agreeText,
      this.disAgreeText,
      this.settingText,
      this.languageSelect,
      this.userPermissionsText,
      this.getStarted,
      this.skipText,
      this.startText,
      this.registerText,
      this.clientText,
      this.fieldRequired,
      this.companyText,
      this.welcomeHome,
      this.benefitName});

  Data.fromJson(Map<String, dynamic> json) {
    appNameText = json['app_name_text'] != null
        ? new AppNameText.fromJson(json['app_name_text'])
        : null;
    setupScreenFristText = json['setup_screen_frist_text'] != null
        ? new AppNameText.fromJson(json['setup_screen_frist_text'])
        : null;
    titleSetupScreenSecondText = json['title _setup_screen_second_text'] != null
        ? new AppNameText.fromJson(json['title _setup_screen_second_text'])
        : null;
    subjectSetupScreenSecondText =
        json['subject_setup_screen_second_text'] != null
            ? new AppNameText.fromJson(json['subject_setup_screen_second_text'])
            : null;
    titleSetupScreenTrirdText = json['title_setup_screen_trird_text'] != null
        ? new AppNameText.fromJson(json['title_setup_screen_trird_text'])
        : null;
    subjectSetupScreenTrirdText =
        json['subject _setup_screen_trird_text'] != null
            ? new AppNameText.fromJson(json['subject _setup_screen_trird_text'])
            : null;
    companyNumberText = json['company_number_text'] != null
        ? new AppNameText.fromJson(json['company_number_text'])
        : null;
    confirmText = json['confirm_text'] != null
        ? new AppNameText.fromJson(json['confirm_text'])
        : null;
    quConfirmAccountText = json['qu_confirm_account_text'] != null
        ? new AppNameText.fromJson(json['qu_confirm_account_text'])
        : null;
    welcomeToGpitcoText = json['welcome_to_Gpitco_text'] != null
        ? new AppNameText.fromJson(json['welcome_to_Gpitco_text'])
        : null;
    userNameText = json['user_name_text'] != null
        ? new AppNameText.fromJson(json['user_name_text'])
        : null;
    passwordText = json['password_text'] != null
        ? new AppNameText.fromJson(json['password_text'])
        : null;
    loginText = json['login_text'] != null
        ? new AppNameText.fromJson(json['login_text'])
        : null;
    invoicesText = json['invoices_text'] != null
        ? new AppNameText.fromJson(json['invoices_text'])
        : null;
    customSupplieText = json['custom_supplie_text'] != null
        ? new AppNameText.fromJson(json['custom_supplie_text'])
        : null;
    reportsText = json['reports_text'] != null
        ? new AppNameText.fromJson(json['reports_text'])
        : null;
    clientSupplierText = json['client_supplier_text'] != null
        ? new AppNameText.fromJson(json['client_supplier_text'])
        : null;
    listInvoicesText = json['list_invoices_text'] != null
        ? new AppNameText.fromJson(json['list_invoices_text'])
        : null;
    salesPurchaseReturnText = json['sales_purchase_return_text'] != null
        ? new AppNameText.fromJson(json['sales_purchase_return_text'])
        : null;
    bondCatchText = json['bond_catch_text'] != null
        ? new AppNameText.fromJson(json['bond_catch_text'])
        : null;
    bondExchangeText = json['bond_exchange_text'] != null
        ? new AppNameText.fromJson(json['bond_exchange_text'])
        : null;
    invoicesSaleText = json['invoices_sale_text'] != null
        ? new AppNameText.fromJson(json['invoices_sale_text'])
        : null;
    invoicesPurchaseText = json['invoices_purchase_text'] != null
        ? new AppNameText.fromJson(json['invoices_purchase_text'])
        : null;
    invoicesNumberText = json['invoices_number_text'] != null
        ? new AppNameText.fromJson(json['invoices_number_text'])
        : null;
    dateTimeText = json['date_time_text'] != null
        ? new AppNameText.fromJson(json['date_time_text'])
        : null;
    bondNumberText = json['bond_number_text'] != null
        ? new AppNameText.fromJson(json['bond_number_text'])
        : null;
    dateText = json['date_text'] != null
        ? new AppNameText.fromJson(json['date_text'])
        : null;
    branchText = json['branch_text'] != null
        ? new AppNameText.fromJson(json['branch_text'])
        : null;
    fundText = json['fund_text'] != null
        ? new AppNameText.fromJson(json['fund_text'])
        : null;
    movementTypeText = json['movement_type_text'] != null
        ? new AppNameText.fromJson(json['movement_type_text'])
        : null;
    customNameText = json['custom_name_text'] != null
        ? new AppNameText.fromJson(json['custom_name_text'])
        : null;
    customCodeText = json['custom_code_text'] != null
        ? new AppNameText.fromJson(json['custom_code_text'])
        : null;
    valueText = json['value_text'] != null
        ? new AppNameText.fromJson(json['value_text'])
        : null;
    statementText = json['statement_text'] != null
        ? new AppNameText.fromJson(json['statement_text'])
        : null;
    addBondCashingText = json['add_bond_cashing_text'] != null
        ? new AppNameText.fromJson(json['add_bond_cashing_text'])
        : null;
    addBondCatchText = json['add_bond_catch_text'] != null
        ? new AppNameText.fromJson(json['add_bond_catch_text'])
        : null;
    bondNewText = json['bond_new_text'] != null
        ? new AppNameText.fromJson(json['bond_new_text'])
        : null;
    printText = json['print_text'] != null
        ? new AppNameText.fromJson(json['print_text'])
        : null;
    createSalesInvoiceText = json['create_sales_invoice_text'] != null
        ? new AppNameText.fromJson(json['create_sales_invoice_text'])
        : null;
    createPurchaseText = json['create_purchase_text'] != null
        ? new AppNameText.fromJson(json['create_purchase_text'])
        : null;
    itemCodeText = json['item_code_text'] != null
        ? new AppNameText.fromJson(json['item_code_text'])
        : null;
    itemNameText = json['item_name_text'] != null
        ? new AppNameText.fromJson(json['item_name_text'])
        : null;
    itemNumberText = json['item_number_text'] != null
        ? new AppNameText.fromJson(json['item_number_text'])
        : null;
    quantityText = json['quantity_text'] != null
        ? new AppNameText.fromJson(json['quantity_text'])
        : null;
    unitText = json['unit_text'] != null
        ? new AppNameText.fromJson(json['unit_text'])
        : null;
    additionText = json['addition_text'] != null
        ? new AppNameText.fromJson(json['addition_text'])
        : null;
    totalText = json['total_text'] != null
        ? new AppNameText.fromJson(json['total_text'])
        : null;
    taxText = json['tax_text'] != null
        ? new AppNameText.fromJson(json['tax_text'])
        : null;
    deductText = json['deduct_text'] != null
        ? new AppNameText.fromJson(json['deduct_text'])
        : null;
    netText = json['net_text'] != null
        ? new AppNameText.fromJson(json['net_text'])
        : null;
    notsText = json['nots_text'] != null
        ? new AppNameText.fromJson(json['nots_text'])
        : null;
    createInvoiceText = json['create_invoice_text'] != null
        ? new AppNameText.fromJson(json['create_invoice_text'])
        : null;
    clientNameText = json['client_name_text'] != null
        ? new AppNameText.fromJson(json['client_name_text'])
        : null;
    invoiceValueText = json['invoice_value_text'] != null
        ? new AppNameText.fromJson(json['invoice_value_text'])
        : null;
    newInvoiceText = json['new_invoice_text'] != null
        ? new AppNameText.fromJson(json['new_invoice_text'])
        : null;
    listCustomersSupplierText = json['list_customers_supplier_text'] != null
        ? new AppNameText.fromJson(json['list_customers_supplier_text'])
        : null;
    fundMovementText = json['fund_movement_text'] != null
        ? new AppNameText.fromJson(json['fund_movement_text'])
        : null;
    accountStatementClientText = json['account_statement_client_text'] != null
        ? new AppNameText.fromJson(json['account_statement_client_text'])
        : null;
    codeText = json['code_text'] != null
        ? new AppNameText.fromJson(json['code_text'])
        : null;
    accountCodeText = json['account_code_text'] != null
        ? new AppNameText.fromJson(json['account_code_text'])
        : null;
    balanceText = json['balance_text'] != null
        ? new AppNameText.fromJson(json['balance_text'])
        : null;
    movementText = json['movement_text'] != null
        ? new AppNameText.fromJson(json['movement_text'])
        : null;
    debtorText = json['debtor_text'] != null
        ? new AppNameText.fromJson(json['debtor_text'])
        : null;
    creditorText = json['creditor_text'] != null
        ? new AppNameText.fromJson(json['creditor_text'])
        : null;
    movementNumberText = json['movement_number_text'] != null
        ? new AppNameText.fromJson(json['movement_number_text'])
        : null;
    totalMovementsText = json['total_movements_text'] != null
        ? new AppNameText.fromJson(json['total_movements_text'])
        : null;
    downloadText = json['download_text'] != null
        ? new AppNameText.fromJson(json['download_text'])
        : null;
    clinentText = json['clinent_text'] != null
        ? new AppNameText.fromJson(json['clinent_text'])
        : null;
    suppliersText = json['suppliers_text'] != null
        ? new AppNameText.fromJson(json['suppliers_text'])
        : null;
    newClientText = json['new_client_text'] != null
        ? new AppNameText.fromJson(json['new_client_text'])
        : null;
    newSupplierText = json['new_supplier_text'] != null
        ? new AppNameText.fromJson(json['new_supplier_text'])
        : null;
    addClientText = json['add_client_text'] != null
        ? new AppNameText.fromJson(json['add_client_text'])
        : null;
    customerCodeText = json['customer_code_text'] != null
        ? new AppNameText.fromJson(json['customer_code_text'])
        : null;
    nameArabicText = json['name_arabic_text'] != null
        ? new AppNameText.fromJson(json['name_arabic_text'])
        : null;
    nameEnglishText = json['name_english_text'] != null
        ? new AppNameText.fromJson(json['name_english_text'])
        : null;
    addressText = json['address_text'] != null
        ? new AppNameText.fromJson(json['address_text'])
        : null;
    listPriceText = json['list_price_text'] != null
        ? new AppNameText.fromJson(json['list_price_text'])
        : null;
    crowdPriceText = json['crowd_price_text'] != null
        ? new AppNameText.fromJson(json['crowd_price_text'])
        : null;
    accountType = json['account_type'] != null
        ? new AppNameText.fromJson(json['account_type'])
        : null;
    debtorCreditorText = json['debtor_creditor_text'] != null
        ? new AppNameText.fromJson(json['debtor_creditor_text'])
        : null;
    gouupText = json['gouup_text'] != null
        ? new AppNameText.fromJson(json['gouup_text'])
        : null;
    noteText = json['note_text'] != null
        ? new AppNameText.fromJson(json['note_text'])
        : null;
    addSupplierText = json['add_supplier_text'] != null
        ? new AppNameText.fromJson(json['add_supplier_text'])
        : null;
    salesReportsText = json['sales_reports_text'] != null
        ? new AppNameText.fromJson(json['sales_reports_text'])
        : null;
    procurementReportsText = json['procurement_reports_text'] != null
        ? new AppNameText.fromJson(json['procurement_reports_text'])
        : null;
    itemsMovemetText = json['items_movemet_text'] != null
        ? new AppNameText.fromJson(json['items_movemet_text'])
        : null;
    mostMobileItemsText = json['most_mobile_items_text'] != null
        ? new AppNameText.fromJson(json['most_mobile_items_text'])
        : null;
    lessMovingItemsText = json['less_moving_items_text'] != null
        ? new AppNameText.fromJson(json['less_moving_items_text'])
        : null;
    movementClientsText = json['movement_clients_text'] != null
        ? new AppNameText.fromJson(json['movement_clients_text'])
        : null;
    hightTrafficClinentsText = json['hight_traffic_clinents_text'] != null
        ? new AppNameText.fromJson(json['hight_traffic_clinents_text'])
        : null;
    lowTrafficClientsText = json['low_traffic_clients_text'] != null
        ? new AppNameText.fromJson(json['low_traffic_clients_text'])
        : null;
    salePerDayText = json['sale_per_day_text'] != null
        ? new AppNameText.fromJson(json['sale_per_day_text'])
        : null;
    tatalSaleText = json['tatal_sale_text'] != null
        ? new AppNameText.fromJson(json['tatal_sale_text'])
        : null;
    profileText = json['profile_text'] != null
        ? new AppNameText.fromJson(json['profile_text'])
        : null;
    technicalSupportText = json['technical_support_text'] != null
        ? new AppNameText.fromJson(json['technical_support_text'])
        : null;
    aboutText = json['about_text'] != null
        ? new AppNameText.fromJson(json['about_text'])
        : null;
    logoutText = json['logout_text'] != null
        ? new AppNameText.fromJson(json['logout_text'])
        : null;
    adjectiveText = json['adjective_text'] != null
        ? new AppNameText.fromJson(json['adjective_text'])
        : null;
    phoneNumberText = json['phone_number_text'] != null
        ? new AppNameText.fromJson(json['phone_number_text'])
        : null;
    emailText = json['email_text'] != null
        ? new AppNameText.fromJson(json['email_text'])
        : null;
    saveEditsText = json['save_edits_text'] != null
        ? new AppNameText.fromJson(json['save_edits_text'])
        : null;
    policyPrivacyText = json['policy_privacy_text'] != null
        ? new AppNameText.fromJson(json['policy_privacy_text'])
        : null;
    helpCenterText = json['help_center_text'] != null
        ? new AppNameText.fromJson(json['help_center_text'])
        : null;
    contactUsText = json['contact_us_text'] != null
        ? new AppNameText.fromJson(json['contact_us_text'])
        : null;
    messageText = json['message_text'] != null
        ? new AppNameText.fromJson(json['message_text'])
        : null;
    sendText = json['send_text'] != null
        ? new AppNameText.fromJson(json['send_text'])
        : null;
    agreeText = json['agree_text'] != null
        ? new AppNameText.fromJson(json['agree_text'])
        : null;
    disAgreeText = json['dis_agree_text'] != null
        ? new AppNameText.fromJson(json['dis_agree_text'])
        : null;
    settingText = json['setting_text'] != null
        ? new AppNameText.fromJson(json['setting_text'])
        : null;
    userPermissionsText = json['user_permissions_text'] != null
        ? new AppNameText.fromJson(json['user_permissions_text'])
        : null;
    languageSelect = json['language_select_text'] != null
        ? new AppNameText.fromJson(json['language_select_text'])
        : AppNameText.fromJson({
            "ar": "إختر اللغة",
            "en": "choose your language ",
            "key": "language_select_text"
          });
    getStarted = json['get_started_text'] != null
        ? new AppNameText.fromJson(json['language_select_text'])
        : AppNameText.fromJson(
            {"ar": "البدء ", "en": "Started ", "key": "get_started_text"});
    skipText = json['skip_text'] != null
        ? new AppNameText.fromJson(json['skip_text'])
        : AppNameText.fromJson(
            {"ar": "تخطي ", "en": "Skip ", "key": "skip_text"});
    startText = json['start_text'] != null
        ? new AppNameText.fromJson(json['start_text'])
        : AppNameText.fromJson(
            {"ar": "البدء ", "en": "Start ", "key": "start_text"});
    registerText = json['register_text'] != null
        ? new AppNameText.fromJson(json['register_text'])
        : AppNameText.fromJson(
            {"ar": "تسجيل", "en": "Signup ", "key": "register_text"});
    clientText = json['register_text'] != null
        ? new AppNameText.fromJson(json['client_text'])
        : AppNameText.fromJson(
            {"ar": "عميل", "en": "Client ", "key": "client_text"});
    fieldRequired = json['field_required'] != null
        ? new AppNameText.fromJson(json['field_required'])
        : AppNameText.fromJson({
            "ar": "لايمكن للحقل ان يكون فادغاً",
            "en": "this field cannot be empty ",
            "key": "client_text"
          });
    welcomeHome = json['welcome_home_text'] != null
        ? new AppNameText.fromJson(json['welcome_home_text'])
        : AppNameText.fromJson(
            {"ar": "مرحباً بك", "en": "Welcome", "key": "welcome_home_text"});
    companyText = json['compayn_text'] != null
        ? new AppNameText.fromJson(json['compayn_text'])
        : AppNameText.fromJson(
            {"ar": "شركه", "en": "Company", "key": "compayn_text"});
    benefitName = json['benefit_name'] != null
        ? new AppNameText.fromJson(json['benefit_name'])
        : AppNameText.fromJson({
            "ar": "إسم المستفيد",
            "en": "Benefit Name",
            "key": "benefit_name"
          });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.appNameText != null) {
      data['app_name_text'] = this.appNameText!.toJson();
    }
    if (this.setupScreenFristText != null) {
      data['setup_screen_frist_text'] = this.setupScreenFristText!.toJson();
    }
    if (this.titleSetupScreenSecondText != null) {
      data['title _setup_screen_second_text'] =
          this.titleSetupScreenSecondText!.toJson();
    }
    if (this.subjectSetupScreenSecondText != null) {
      data['subject_setup_screen_second_text'] =
          this.subjectSetupScreenSecondText!.toJson();
    }
    if (this.titleSetupScreenTrirdText != null) {
      data['title_setup_screen_trird_text'] =
          this.titleSetupScreenTrirdText!.toJson();
    }
    if (this.subjectSetupScreenTrirdText != null) {
      data['subject _setup_screen_trird_text'] =
          this.subjectSetupScreenTrirdText!.toJson();
    }
    if (this.companyNumberText != null) {
      data['company_number_text'] = this.companyNumberText!.toJson();
    }
    if (this.confirmText != null) {
      data['confirm_text'] = this.confirmText!.toJson();
    }
    if (this.quConfirmAccountText != null) {
      data['qu_confirm_account_text'] = this.quConfirmAccountText!.toJson();
    }
    if (this.welcomeToGpitcoText != null) {
      data['welcome_to_Gpitco_text'] = this.welcomeToGpitcoText!.toJson();
    }
    if (this.userNameText != null) {
      data['user_name_text'] = this.userNameText!.toJson();
    }
    if (this.passwordText != null) {
      data['password_text'] = this.passwordText!.toJson();
    }
    if (this.loginText != null) {
      data['login_text'] = this.loginText!.toJson();
    }
    if (this.invoicesText != null) {
      data['invoices_text'] = this.invoicesText!.toJson();
    }
    if (this.customSupplieText != null) {
      data['custom_supplie_text'] = this.customSupplieText!.toJson();
    }
    if (this.reportsText != null) {
      data['reports_text'] = this.reportsText!.toJson();
    }
    if (this.clientSupplierText != null) {
      data['client_supplier_text'] = this.clientSupplierText!.toJson();
    }
    if (this.listInvoicesText != null) {
      data['list_invoices_text'] = this.listInvoicesText!.toJson();
    }
    if (this.salesPurchaseReturnText != null) {
      data['sales_purchase_return_text'] =
          this.salesPurchaseReturnText!.toJson();
    }
    if (this.bondCatchText != null) {
      data['bond_catch_text'] = this.bondCatchText!.toJson();
    }
    if (this.bondExchangeText != null) {
      data['bond_exchange_text'] = this.bondExchangeText!.toJson();
    }
    if (this.invoicesSaleText != null) {
      data['invoices_sale_text'] = this.invoicesSaleText!.toJson();
    }
    if (this.invoicesPurchaseText != null) {
      data['invoices_purchase_text'] = this.invoicesPurchaseText!.toJson();
    }
    if (this.invoicesNumberText != null) {
      data['invoices_number_text'] = this.invoicesNumberText!.toJson();
    }
    if (this.dateTimeText != null) {
      data['date_time_text'] = this.dateTimeText!.toJson();
    }
    if (this.bondNumberText != null) {
      data['bond_number_text'] = this.bondNumberText!.toJson();
    }
    if (this.dateText != null) {
      data['date_text'] = this.dateText!.toJson();
    }
    if (this.branchText != null) {
      data['branch_text'] = this.branchText!.toJson();
    }
    if (this.fundText != null) {
      data['fund_text'] = this.fundText!.toJson();
    }
    if (this.movementTypeText != null) {
      data['movement_type_text'] = this.movementTypeText!.toJson();
    }
    if (this.customNameText != null) {
      data['custom_name_text'] = this.customNameText!.toJson();
    }
    if (this.customCodeText != null) {
      data['custom_code_text'] = this.customCodeText!.toJson();
    }
    if (this.valueText != null) {
      data['value_text'] = this.valueText!.toJson();
    }
    if (this.statementText != null) {
      data['statement_text'] = this.statementText!.toJson();
    }
    if (this.addBondCashingText != null) {
      data['add_bond_cashing_text'] = this.addBondCashingText!.toJson();
    }
    if (this.addBondCatchText != null) {
      data['add_bond_catch_text'] = this.addBondCatchText!.toJson();
    }
    if (this.bondNewText != null) {
      data['bond_new_text'] = this.bondNewText!.toJson();
    }
    if (this.printText != null) {
      data['print_text'] = this.printText!.toJson();
    }
    if (this.createSalesInvoiceText != null) {
      data['create_sales_invoice_text'] = this.createSalesInvoiceText!.toJson();
    }
    if (this.createPurchaseText != null) {
      data['create_purchase_text'] = this.createPurchaseText!.toJson();
    }
    if (this.itemCodeText != null) {
      data['item_code_text'] = this.itemCodeText!.toJson();
    }
    if (this.itemNameText != null) {
      data['item_name_text'] = this.itemNameText!.toJson();
    }
    if (this.itemNumberText != null) {
      data['item_number_text'] = this.itemNumberText!.toJson();
    }
    if (this.quantityText != null) {
      data['quantity_text'] = this.quantityText!.toJson();
    }
    if (this.unitText != null) {
      data['unit_text'] = this.unitText!.toJson();
    }
    if (this.additionText != null) {
      data['addition_text'] = this.additionText!.toJson();
    }
    if (this.totalText != null) {
      data['total_text'] = this.totalText!.toJson();
    }
    if (this.taxText != null) {
      data['tax_text'] = this.taxText!.toJson();
    }
    if (this.deductText != null) {
      data['deduct_text'] = this.deductText!.toJson();
    }
    if (this.netText != null) {
      data['net_text'] = this.netText!.toJson();
    }
    if (this.notsText != null) {
      data['nots_text'] = this.notsText!.toJson();
    }
    if (this.createInvoiceText != null) {
      data['create_invoice_text'] = this.createInvoiceText!.toJson();
    }
    if (this.clientNameText != null) {
      data['client_name_text'] = this.clientNameText!.toJson();
    }
    if (this.invoiceValueText != null) {
      data['invoice_value_text'] = this.invoiceValueText!.toJson();
    }
    if (this.newInvoiceText != null) {
      data['new_invoice_text'] = this.newInvoiceText!.toJson();
    }
    if (this.listCustomersSupplierText != null) {
      data['list_customers_supplier_text'] =
          this.listCustomersSupplierText!.toJson();
    }
    if (this.fundMovementText != null) {
      data['fund_movement_text'] = this.fundMovementText!.toJson();
    }
    if (this.accountStatementClientText != null) {
      data['account_statement_client_text'] =
          this.accountStatementClientText!.toJson();
    }
    if (this.codeText != null) {
      data['code_text'] = this.codeText!.toJson();
    }
    if (this.accountCodeText != null) {
      data['account_code_text'] = this.accountCodeText!.toJson();
    }
    if (this.balanceText != null) {
      data['balance_text'] = this.balanceText!.toJson();
    }
    if (this.movementText != null) {
      data['movement_text'] = this.movementText!.toJson();
    }
    if (this.debtorText != null) {
      data['debtor_text'] = this.debtorText!.toJson();
    }
    if (this.creditorText != null) {
      data['creditor_text'] = this.creditorText!.toJson();
    }
    if (this.movementNumberText != null) {
      data['movement_number_text'] = this.movementNumberText!.toJson();
    }
    if (this.totalMovementsText != null) {
      data['total_movements_text'] = this.totalMovementsText!.toJson();
    }
    if (this.downloadText != null) {
      data['download_text'] = this.downloadText!.toJson();
    }
    if (this.clinentText != null) {
      data['clinent_text'] = this.clinentText!.toJson();
    }
    if (this.suppliersText != null) {
      data['suppliers_text'] = this.suppliersText!.toJson();
    }
    if (this.newClientText != null) {
      data['new_client_text'] = this.newClientText!.toJson();
    }
    if (this.newSupplierText != null) {
      data['new_supplier_text'] = this.newSupplierText!.toJson();
    }
    if (this.addClientText != null) {
      data['add_client_text'] = this.addClientText!.toJson();
    }
    if (this.customerCodeText != null) {
      data['customer_code_text'] = this.customerCodeText!.toJson();
    }
    if (this.nameArabicText != null) {
      data['name_arabic_text'] = this.nameArabicText!.toJson();
    }
    if (this.nameEnglishText != null) {
      data['name_english_text'] = this.nameEnglishText!.toJson();
    }
    if (this.addressText != null) {
      data['address_text'] = this.addressText!.toJson();
    }
    if (this.listPriceText != null) {
      data['list_price_text'] = this.listPriceText!.toJson();
    }
    if (this.crowdPriceText != null) {
      data['crowd_price_text'] = this.crowdPriceText!.toJson();
    }
    if (this.accountType != null) {
      data['account_type'] = this.accountType!.toJson();
    }
    if (this.debtorCreditorText != null) {
      data['debtor_creditor_text'] = this.debtorCreditorText!.toJson();
    }
    if (this.gouupText != null) {
      data['gouup_text'] = this.gouupText!.toJson();
    }
    if (this.noteText != null) {
      data['note_text'] = this.noteText!.toJson();
    }
    if (this.addSupplierText != null) {
      data['add_supplier_text'] = this.addSupplierText!.toJson();
    }
    if (this.salesReportsText != null) {
      data['sales_reports_text'] = this.salesReportsText!.toJson();
    }
    if (this.procurementReportsText != null) {
      data['procurement_reports_text'] = this.procurementReportsText!.toJson();
    }
    if (this.itemsMovemetText != null) {
      data['items_movemet_text'] = this.itemsMovemetText!.toJson();
    }
    if (this.mostMobileItemsText != null) {
      data['most_mobile_items_text'] = this.mostMobileItemsText!.toJson();
    }
    if (this.lessMovingItemsText != null) {
      data['less_moving_items_text'] = this.lessMovingItemsText!.toJson();
    }
    if (this.movementClientsText != null) {
      data['movement_clients_text'] = this.movementClientsText!.toJson();
    }
    if (this.hightTrafficClinentsText != null) {
      data['hight_traffic_clinents_text'] =
          this.hightTrafficClinentsText!.toJson();
    }
    if (this.lowTrafficClientsText != null) {
      data['low_traffic_clients_text'] = this.lowTrafficClientsText!.toJson();
    }
    if (this.salePerDayText != null) {
      data['sale_per_day_text'] = this.salePerDayText!.toJson();
    }
    if (this.tatalSaleText != null) {
      data['tatal_sale_text'] = this.tatalSaleText!.toJson();
    }
    if (this.profileText != null) {
      data['profile_text'] = this.profileText!.toJson();
    }
    if (this.technicalSupportText != null) {
      data['technical_support_text'] = this.technicalSupportText!.toJson();
    }
    if (this.aboutText != null) {
      data['about_text'] = this.aboutText!.toJson();
    }
    if (this.logoutText != null) {
      data['logout_text'] = this.logoutText!.toJson();
    }
    if (this.adjectiveText != null) {
      data['adjective_text'] = this.adjectiveText!.toJson();
    }
    if (this.phoneNumberText != null) {
      data['phone_number_text'] = this.phoneNumberText!.toJson();
    }
    if (this.emailText != null) {
      data['email_text'] = this.emailText!.toJson();
    }
    if (this.saveEditsText != null) {
      data['save_edits_text'] = this.saveEditsText!.toJson();
    }
    if (this.policyPrivacyText != null) {
      data['policy_privacy_text'] = this.policyPrivacyText!.toJson();
    }
    if (this.helpCenterText != null) {
      data['help_center_text'] = this.helpCenterText!.toJson();
    }
    if (this.contactUsText != null) {
      data['contact_us_text'] = this.contactUsText!.toJson();
    }
    if (this.messageText != null) {
      data['message_text'] = this.messageText!.toJson();
    }
    if (this.sendText != null) {
      data['send_text'] = this.sendText!.toJson();
    }
    if (this.agreeText != null) {
      data['agree_text'] = this.agreeText!.toJson();
    }
    if (this.disAgreeText != null) {
      data['dis_agree_text'] = this.disAgreeText!.toJson();
    }
    if (this.settingText != null) {
      data['setting_text'] = this.settingText!.toJson();
    }
    if (this.userPermissionsText != null) {
      data['user_permissions_text'] = this.userPermissionsText!.toJson();
    }
    return data;
  }
}

class AppNameText {
  String? ar;
  String? en;
  String? key;

  AppNameText({this.ar, this.en, this.key});

  AppNameText.fromJson(Map<String, dynamic> json) {
    ar = json['ar'];
    en = json['en'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ar'] = this.ar;
    data['en'] = this.en;
    data['key'] = this.key;
    return data;
  }
}
