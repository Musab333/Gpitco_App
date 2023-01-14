class InvoiceResponse {
  String? status;
  Null? message;
  List<Data>? data;

  InvoiceResponse({this.status, this.message, this.data});

  InvoiceResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? date;
  int? empId;
  String? empName;
  int? customerId;
  String? customerName;
  int? sellType;
  int? priceType;
  int? branchId;
  String? branchName;
  int? bankId;
  String? bankName;
  int? storeId;
  String? storeName;
  int? totalInvoice;
  int? totalPaid;
  double? totalTax;
  int? totalDiscount;
  int? totalMoneyRemain;
  String? remark;
  List<Items>? items;

  Data(
      {this.id,
      this.date,
      this.empId,
      this.empName,
      this.customerId,
      this.customerName,
      this.sellType,
      this.priceType,
      this.branchId,
      this.branchName,
      this.bankId,
      this.bankName,
      this.storeId,
      this.storeName,
      this.totalInvoice,
      this.totalPaid,
      this.totalTax,
      this.totalDiscount,
      this.totalMoneyRemain,
      this.remark,
      this.items});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    empId = json['emp_id'];
    empName = json['emp_name'];
    customerId = json['customer_id'];
    customerName = json['customer_name'];
    sellType = json['sell_type'];
    priceType = json['price_type'];
    branchId = json['branch_id'];
    branchName = json['branch_name'];
    bankId = json['bank_id'];
    bankName = json['bank_name'];
    storeId = json['store_id'];
    storeName = json['store_name'];
    totalInvoice = json['total_invoice'];
    totalPaid = json['total_paid'];
    totalTax = json['total_tax'];
    totalDiscount = json['total_discount'];
    totalMoneyRemain = json['total_money_remain'];
    remark = json['remark'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['emp_id'] = this.empId;
    data['emp_name'] = this.empName;
    data['customer_id'] = this.customerId;
    data['customer_name'] = this.customerName;
    data['sell_type'] = this.sellType;
    data['price_type'] = this.priceType;
    data['branch_id'] = this.branchId;
    data['branch_name'] = this.branchName;
    data['bank_id'] = this.bankId;
    data['bank_name'] = this.bankName;
    data['store_id'] = this.storeId;
    data['store_name'] = this.storeName;
    data['total_invoice'] = this.totalInvoice;
    data['total_paid'] = this.totalPaid;
    data['total_tax'] = this.totalTax;
    data['total_discount'] = this.totalDiscount;
    data['total_money_remain'] = this.totalMoneyRemain;
    data['remark'] = this.remark;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? reportId;
  int? itemId;
  String? itemName;
  int? taxId;
  int? amount;
  int? price;
  double? taxPrice;
  double? taxValue;
  int? totalPrice;
  String? remark;
  int? categoryId;
  String? categoryName;
  int? unitId;
  String? unitName;
  int? storeId;
  String? storeName;
  int? rowNumber;
  int? qyt;

  Items(
      {this.reportId,
      this.itemId,
      this.itemName,
      this.taxId,
      this.amount,
      this.price,
      this.taxPrice,
      this.taxValue,
      this.totalPrice,
      this.remark,
      this.categoryId,
      this.categoryName,
      this.unitId,
      this.unitName,
      this.storeId,
      this.storeName,
      this.rowNumber,
      this.qyt});

  Items.fromJson(Map<String, dynamic> json) {
    reportId = json['report_id'];
    itemId = json['item_id'];
    itemName = json['item_name'];
    taxId = json['tax_id'];
    amount = json['amount'];
    price = json['price'];
    taxPrice = json['tax_price'];
    taxValue = json['tax_value'];
    totalPrice = json['total_price'];
    remark = json['remark'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    unitId = json['unit_id'];
    unitName = json['unit_name'];
    storeId = json['store_id'];
    storeName = json['store_name'];
    rowNumber = json['row_number'];
    qyt = json['qyt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['report_id'] = this.reportId;
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    data['tax_id'] = this.taxId;
    data['amount'] = this.amount;
    data['price'] = this.price;
    data['tax_price'] = this.taxPrice;
    data['tax_value'] = this.taxValue;
    data['total_price'] = this.totalPrice;
    data['remark'] = this.remark;
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['unit_id'] = this.unitId;
    data['unit_name'] = this.unitName;
    data['store_id'] = this.storeId;
    data['store_name'] = this.storeName;
    data['row_number'] = this.rowNumber;
    data['qyt'] = this.qyt;
    return data;
  }
}
