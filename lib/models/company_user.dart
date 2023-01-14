class CompanyUser {
  String? status;
  Null? message;
  Data? data;

  CompanyUser({this.status, this.message, this.data});

  CompanyUser.fromJson(Map<String, dynamic> json) {
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
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? workPlace;
  String? job;
  String? role;
  List<String>? permissions;
  Company? company;
  Branch? branch;
  Branch? store;
  Branch? bank;

  User(
      {this.id,
      this.username,
      this.workPlace,
      this.job,
      this.role,
      this.permissions,
      this.company,
      this.branch,
      this.store,
      this.bank});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    workPlace = json['work_place'];
    job = json['job'];
    role = json['role'];
    if (json['permissions'] != null) {
      permissions = [];
      json['permissions'].forEach((v) {
        permissions!.add(v);
      });
    }
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
    branch =
        json['branch'] != null ? new Branch.fromJson(json['branch']) : null;
    store = json['store'] != null ? new Branch.fromJson(json['store']) : null;
    bank = json['bank'] != null ? new Branch.fromJson(json['bank']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['work_place'] = this.workPlace;
    data['job'] = this.job;
    data['role'] = this.role;
    if (this.permissions != null) {
      data['permissions'] = this.permissions!.map((v) => v).toList();
    }
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    if (this.branch != null) {
      data['branch'] = this.branch!.toJson();
    }
    if (this.store != null) {
      data['store'] = this.store!.toJson();
    }
    if (this.bank != null) {
      data['bank'] = this.bank!.toJson();
    }
    return data;
  }
}

class Company {
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

  Company(
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

  Company.fromJson(Map<String, dynamic> json) {
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

class Branch {
  int? id;
  String? code;
  String? name;

  Branch({this.id, this.code, this.name});

  Branch.fromJson(Map<String, dynamic> json) {
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
