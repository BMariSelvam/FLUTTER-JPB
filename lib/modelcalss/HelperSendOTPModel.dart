class MaidSendOtpModel {
  MaidSendOtpModel({
    this.orgId,
    this.name,
    this.email,
    this.phone,
    this.viaOTP,
  });

  MaidSendOtpModel.fromJson(dynamic json) {
    orgId = json['OrgId'];
    name = json['Name'];
    email = json['Email'];
    phone = json['Phone'];
    viaOTP = json['viaOTP'];
  }
  int? orgId;
  String? name;
  String? email;
  String? phone;
  String? viaOTP;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['OrgId'] = orgId;
    map['Name'] = name;
    map['Email'] = email;
    map['Phone'] = phone;
    map['viaOTP'] = viaOTP;
    return map;
  }
}
