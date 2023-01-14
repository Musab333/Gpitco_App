class CabBond {
  String? status;
  Null? message;
  Data? data;

  CabBond({this.status, this.message, this.data});

  CabBond.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? date;
  String? payed;
  Null? details;
  int? type;
  int? branchId;
  String? branchName;
  int? bankId;
  String? bankName;
  Person? person;

  Data(
      {this.id,
      this.date,
      this.payed,
      this.details,
      this.type,
      this.branchId,
      this.branchName,
      this.bankId,
      this.bankName,
      this.person});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    payed = json['payed'].toString();
    details = json['details'];
    type = json['type'];
    branchId = json['branch_id'];
    branchName = json['branch_name'];
    bankId = json['bank_id'];
    bankName = json['bank_name'];
    person =
        json['person'] != null ? new Person.fromJson(json['person']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['payed'] = this.payed;
    data['details'] = this.details;
    data['type'] = this.type;
    data['branch_id'] = this.branchId;
    data['branch_name'] = this.branchName;
    data['bank_id'] = this.bankId;
    data['bank_name'] = this.bankName;
    if (this.person != null) {
      data['person'] = this.person!.toJson();
    }
    return data;
  }
}

class Person {
  int? id;
  String? name;
  String? phone;
  String? code;

  Person({this.id, this.name, this.phone, this.code});

  Person.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['code'] = this.code;
    return data;
  }
}
