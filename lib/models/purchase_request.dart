class PurchaseResponse {
  String? status;
  Null? message;
  List<Data>? data;

  PurchaseResponse({this.status, this.message, this.data});

  PurchaseResponse.fromJson(Map<String, dynamic> json) {
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
  String? number;
  String? date;
  int? empId;
  String? empName;
  int? vendorId;
  String? vendorName;
  String? type;
  int? branchId;
  String? branchName;
  int? bankId;
  String? bankName;
  int? storeId;
  String? storeName;
  double? totalInvoice;
  double? totalPaid;
  int? totalRemain;
  int? totalTax;
  int? totalDiscount;
  String? remark;
  List<Items>? items;

  Data(
      {this.id,
      this.number,
      this.date,
      this.empId,
      this.empName,
      this.vendorId,
      this.vendorName,
      this.type,
      this.branchId,
      this.branchName,
      this.bankId,
      this.bankName,
      this.storeId,
      this.storeName,
      this.totalInvoice,
      this.totalPaid,
      this.totalRemain,
      this.totalTax,
      this.totalDiscount,
      this.remark,
      this.items});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    date = json['date'];
    empId = json['emp_id'];
    empName = json['emp_name'];
    vendorId = json['vendor_id'];
    vendorName = json['vendor_name'];
    type = json['type'];
    branchId = json['branch_id'];
    branchName = json['branch_name'];
    bankId = json['bank_id'];
    bankName = json['bank_name'];
    storeId = json['store_id'];
    storeName = json['store_name'];
    totalInvoice = json['total_invoice'];
    totalPaid = json['total_paid'];
    totalRemain = json['total_remain'];
    totalTax = json['total_tax'];
    totalDiscount = json['total_discount'];
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
    data['number'] = this.number;
    data['date'] = this.date;
    data['emp_id'] = this.empId;
    data['emp_name'] = this.empName;
    data['vendor_id'] = this.vendorId;
    data['vendor_name'] = this.vendorName;
    data['type'] = this.type;
    data['branch_id'] = this.branchId;
    data['branch_name'] = this.branchName;
    data['bank_id'] = this.bankId;
    data['bank_name'] = this.bankName;
    data['store_id'] = this.storeId;
    data['store_name'] = this.storeName;
    data['total_invoice'] = this.totalInvoice;
    data['total_paid'] = this.totalPaid;
    data['total_remain'] = this.totalRemain;
    data['total_tax'] = this.totalTax;
    data['total_discount'] = this.totalDiscount;
    data['remark'] = this.remark;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? reportId;
  String? itemId;
  String? itemName;
  String? taxId;
  int? amount;
  double? price;
  double? taxValue;
  int? totalPrice;
  String? remark;
  int? categoryId;
  String? categoryName;
  int? unitId;
  String? unitName;
  int? rowNumber;

  Items(
      {this.reportId,
      this.itemId,
      this.itemName,
      this.taxId,
      this.amount,
      this.price,
      this.taxValue,
      this.totalPrice,
      this.remark,
      this.categoryId,
      this.categoryName,
      this.unitId,
      this.unitName,
      this.rowNumber});

  Items.fromJson(Map<String, dynamic> json) {
    reportId = json['report_id'];
    itemId = json['item_id'];
    itemName = json['item_name'];
    taxId = json['tax_id'];
    amount = json['amount'];
    price = json['price'];
    taxValue = json['tax_value'];
    totalPrice = json['total_price'];
    remark = json['remark'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    unitId = json['unit_id'];
    unitName = json['unit_name'];
    rowNumber = json['row_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['report_id'] = this.reportId;
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    data['tax_id'] = this.taxId;
    data['amount'] = this.amount;
    data['price'] = this.price;
    data['tax_value'] = this.taxValue;
    data['total_price'] = this.totalPrice;
    data['remark'] = this.remark;
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['unit_id'] = this.unitId;
    data['unit_name'] = this.unitName;
    data['row_number'] = this.rowNumber;
    return data;
  }
}
