class Company {
  String? status;
  String? message;
  Data? data;

  Company({this.status, this.message, this.data});

  Company.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? subStartDate;
  String? subExpireDate;
  String? phone;
  String? address;
  String? usersCount;
  String? idenNumber;
  bool? isExpired;
  int? subDuration;
  bool? canCreateUser;

  Data(
      {this.name,
      this.subStartDate,
      this.subExpireDate,
      this.phone,
      this.address,
      this.usersCount,
      this.idenNumber,
      this.isExpired,
      this.subDuration,
      this.canCreateUser});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    subStartDate = json['sub_start_date'];
    subExpireDate = json['sub_expire_date'];
    phone = json['phone'];
    address = json['address'];
    usersCount = json['users_count'];
    idenNumber = json['iden_number'];
    isExpired = json['is_expired'];
    subDuration = json['sub_duration'];
    canCreateUser = json['can_create_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['sub_start_date'] = this.subStartDate;
    data['sub_expire_date'] = this.subExpireDate;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['users_count'] = this.usersCount;
    data['iden_number'] = this.idenNumber;
    data['is_expired'] = this.isExpired;
    data['sub_duration'] = this.subDuration;
    data['can_create_user'] = this.canCreateUser;
    return data;
  }
}
