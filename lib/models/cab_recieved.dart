class CabRecieved {
  String? status;
  Null? message;
  Data? data;

  CabRecieved({this.status, this.message, this.data});

  CabRecieved.fromJson(Map<String, dynamic> json) {
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
  String? amount;
  Null? details;
  int? type;
  Bank? bank;
  Bank? branch;
  Person? person;

  Data(
      {this.id,
      this.date,
      this.amount,
      this.details,
      this.type,
      this.bank,
      this.branch,
      this.person});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    amount = json['amount'].toString();
    details = json['details'];
    type = json['type'];
    bank = json['bank'] != null ? new Bank.fromJson(json['bank']) : null;
    branch = json['branch'] != null ? new Bank.fromJson(json['branch']) : null;
    person =
        json['person'] != null ? new Person.fromJson(json['person']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['amount'] = this.amount;
    data['details'] = this.details;
    data['type'] = this.type;
    if (this.bank != null) {
      data['bank'] = this.bank!.toJson();
    }
    if (this.branch != null) {
      data['branch'] = this.branch!.toJson();
    }
    if (this.person != null) {
      data['person'] = this.person!.toJson();
    }
    return data;
  }
}

class Bank {
  int? id;
  String? code;
  String? name;

  Bank({this.id, this.code, this.name});

  Bank.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
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
