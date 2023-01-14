class AppData {
  AppData({
    required this.status,
    this.message,
    required this.data,
  });
  late final String status;
  late final Null message;
  late final Data data;

  AppData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = null;
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.banks,
    required this.stores,
    required this.branches,
    required this.customersGroups,
    required this.vendorsGroups,
    required this.sellTaxes,
    required this.burchaseTaxes,
    required this.categories,
    required this.items,
  });
  late final List<Banks> banks;
  late final List<Stores> stores;
  late final List<Branches> branches;
  late final List<CustomersGroups> customersGroups;
  late final List<VendorsGroups> vendorsGroups;
  late final List<SellTaxes> sellTaxes;
  late final List<BurchaseTaxes> burchaseTaxes;
  late final List<Categories> categories;
  late final List<Items> items;

  Data.fromJson(Map<String, dynamic> json) {
    banks = List.from(json['banks']).map((e) => Banks.fromJson(e)).toList();
    stores = List.from(json['stores']).map((e) => Stores.fromJson(e)).toList();
    branches =
        List.from(json['branches']).map((e) => Branches.fromJson(e)).toList();
    customersGroups = List.from(json['customers_groups'])
        .map((e) => CustomersGroups.fromJson(e))
        .toList();
    vendorsGroups = List.from(json['vendors_groups'])
        .map((e) => VendorsGroups.fromJson(e))
        .toList();
    sellTaxes = List.from(json['sell_taxes'])
        .map((e) => SellTaxes.fromJson(e))
        .toList();
    burchaseTaxes = List.from(json['burchase_taxes'])
        .map((e) => BurchaseTaxes.fromJson(e))
        .toList();
    categories = List.from(json['categories'])
        .map((e) => Categories.fromJson(e))
        .toList();
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['banks'] = banks.map((e) => e.toJson()).toList();
    _data['stores'] = stores.map((e) => e.toJson()).toList();
    _data['branches'] = branches.map((e) => e.toJson()).toList();
    _data['customers_groups'] = customersGroups.map((e) => e.toJson()).toList();
    _data['vendors_groups'] = vendorsGroups.map((e) => e.toJson()).toList();
    _data['sell_taxes'] = sellTaxes.map((e) => e.toJson()).toList();
    _data['burchase_taxes'] = burchaseTaxes.map((e) => e.toJson()).toList();
    _data['categories'] = categories.map((e) => e.toJson()).toList();
    _data['items'] = items.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Banks {
  Banks({
    required this.id,
    required this.code,
    required this.name,
  });
  late final int id;
  late final String code;
  late final String name;

  Banks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}

class Stores {
  Stores({
    required this.id,
    required this.code,
    required this.name,
  });
  late final int id;
  late final String code;
  late final String name;

  Stores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}

class Branches {
  Branches({
    required this.id,
    required this.code,
    required this.name,
  });
  late final int id;
  late final String code;
  late final String name;

  Branches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}

class CustomersGroups {
  CustomersGroups({
    required this.id,
    required this.code,
    required this.name,
  });
  late final int id;
  late final String code;
  late final String name;

  CustomersGroups.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}

class VendorsGroups {
  VendorsGroups({
    required this.id,
    required this.code,
    required this.name,
  });
  late final int id;
  late final String code;
  late final String name;

  VendorsGroups.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}

class SellTaxes {
  SellTaxes({
    required this.id,
    required this.name,
  });
  late final int id;
  late final String name;

  SellTaxes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }
}

class BurchaseTaxes {
  BurchaseTaxes({
    required this.id,
    required this.name,
  });
  late final int id;
  late final String name;

  BurchaseTaxes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }
}

class Categories {
  Categories({
    required this.id,
    required this.code,
    required this.name,
  });
  late final int id;
  late final String code;
  late final String name;

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['code'] = code;
    _data['name'] = name;
    return _data;
  }
}

class Items {
  Items({
    required this.id,
    required this.name,
    required this.barcode,
    required this.publicPrice,
    required this.publicTax,
    required this.gomlaPrice,
    required this.gomlaTax,
    required this.purchasePrice,
    this.categoryId,
    this.categoryName,
    required this.defaultUnitId,
    this.firstUnitId,
    this.secondUnitId,
    required this.defaultName,
    this.firstUnitName,
    this.secondUnitName,
    required this.firstPrice,
    required this.secondPrice,
    this.qyt,
  });
  late final int id;
  late final String name;
  late final String barcode;
  late final String publicPrice;
  late final String publicTax;
  late final String gomlaPrice;
  late final String gomlaTax;
  late final String purchasePrice;
  late final Null categoryId;
  late final Null categoryName;
  late final int defaultUnitId;
  late final Null firstUnitId;
  late final Null secondUnitId;
  late final String defaultName;
  late final Null firstUnitName;
  late final Null secondUnitName;
  late final String firstPrice;
  late final String secondPrice;
  late final Null qyt;

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    barcode = json['barcode'];
    publicPrice = json['public_price'];
    publicTax = json['public_tax'];
    gomlaPrice = json['gomla_price'];
    gomlaTax = json['gomla_tax'];
    purchasePrice = json['purchase_price'];
    categoryId = null;
    categoryName = null;
    defaultUnitId = json['default_unit_id'];
    firstUnitId = null;
    secondUnitId = null;
    defaultName = json['default_name'];
    firstUnitName = null;
    secondUnitName = null;
    firstPrice = json['first_price'];
    secondPrice = json['second_price'];
    qyt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['barcode'] = barcode;
    _data['public_price'] = publicPrice;
    _data['public_tax'] = publicTax;
    _data['gomla_price'] = gomlaPrice;
    _data['gomla_tax'] = gomlaTax;
    _data['purchase_price'] = purchasePrice;
    _data['category_id'] = categoryId;
    _data['category_name'] = categoryName;
    _data['default_unit_id'] = defaultUnitId;
    _data['first_unit_id'] = firstUnitId;
    _data['second_unit_id'] = secondUnitId;
    _data['default_name'] = defaultName;
    _data['first_unit_name'] = firstUnitName;
    _data['second_unit_name'] = secondUnitName;
    _data['first_price'] = firstPrice;
    _data['second_price'] = secondPrice;
    _data['qyt'] = qyt;
    return _data;
  }
}
