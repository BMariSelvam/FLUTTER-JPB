class EmployerDataFormModel {
  EmployerDataFormModel({
    this.personalDetails,
    this.contactDetails,
    this.jobScopes,
    this.accountDetails,
  });

  EmployerDataFormModel.fromJson(dynamic json) {
    personalDetails = json['PersonalDetails'] != null
        ? PersonalDetails.fromJson(json['PersonalDetails'])
        : null;
    contactDetails = json['ContactDetails'] != null
        ? ContactDetails.fromJson(json['ContactDetails'])
        : null;
    jobScopes = json['JobScopes'] != null
        ? JobScopes.fromJson(json['JobScopes'])
        : null;
    accountDetails = json['AccountDetails'] != null
        ? AccountDetails.fromJson(json['AccountDetails'])
        : null;
  }
  PersonalDetails? personalDetails;
  ContactDetails? contactDetails;
  JobScopes? jobScopes;
  AccountDetails? accountDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (personalDetails != null) {
      map['PersonalDetails'] = personalDetails?.toJson();
    }
    if (contactDetails != null) {
      map['ContactDetails'] = contactDetails?.toJson();
    }
    if (jobScopes != null) {
      map['JobScopes'] = jobScopes?.toJson();
    }
    if (accountDetails != null) {
      map['AccountDetails'] = accountDetails?.toJson();
    }
    return map;
  }
}

class AccountDetails {
  AccountDetails({
    this.email,
    this.password,
    this.confirmPassword,
    this.sMSContactNumber,
    this.methodOfproceed,
  });

  AccountDetails.fromJson(dynamic json) {
    email = json['Email'];
    password = json['Password'];
    confirmPassword = json['ConfirmPassword'];
    sMSContactNumber = json['SMSContactNumber'];
    methodOfproceed = json['MethodOfproceed'];
  }
  String? email;
  String? password;
  String? confirmPassword;
  String? sMSContactNumber;
  String? methodOfproceed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Email'] = email;
    map['Password'] = password;
    map['ConfirmPassword'] = confirmPassword;
    map['SMSContactNumber'] = sMSContactNumber;
    map['MethodOfproceed'] = methodOfproceed;
    return map;
  }
}

class JobScopes {
  JobScopes({
    this.housingType,
    this.expectedJobScope,
    this.noOfBedroom,
  });

  JobScopes.fromJson(dynamic json) {
    housingType = json['HousingType'];
    if (json['ExpectedJobScope'] != null) {
      expectedJobScope = [];
      json['ExpectedJobScope'].forEach((v) {
        expectedJobScope?.add(ExpectedJobScope.fromJson(v));
      });
    }
    noOfBedroom = json['NoOfBedroom'];
  }
  String? housingType;
  List<ExpectedJobScope>? expectedJobScope;
  String? noOfBedroom;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HousingType'] = housingType;
    if (expectedJobScope != null) {
      map['ExpectedJobScope'] =
          expectedJobScope?.map((v) => v.toJson()).toList();
    }
    map['NoOfBedroom'] = noOfBedroom;
    return map;
  }
}

class ExpectedJobScope {
  ExpectedJobScope({
    this.jobScopeId,
    this.expectedJobScope,
  });

  ExpectedJobScope.fromJson(dynamic json) {
    jobScopeId = json['JobScopeId'];
    expectedJobScope = json['ExpectedJobScope'];
  }
  int? jobScopeId;
  String? expectedJobScope;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['JobScopeId'] = jobScopeId;
    map['ExpectedJobScope'] = expectedJobScope;
    return map;
  }
}

class ContactDetails {
  ContactDetails({
    this.contactPerson,
    this.mobileNo,
    this.homeNo,
    this.emailId,
  });

  ContactDetails.fromJson(dynamic json) {
    contactPerson = json['ContactPerson'];
    mobileNo = json['MobileNo'];
    homeNo = json['HomeNo'];
    emailId = json['EmailId'];
  }
  String? contactPerson;
  String? mobileNo;
  String? homeNo;
  String? emailId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ContactPerson'] = contactPerson;
    map['MobileNo'] = mobileNo;
    map['HomeNo'] = homeNo;
    map['EmailId'] = emailId;
    return map;
  }
}

class PersonalDetails {
  PersonalDetails({
    this.orgId,
    this.employerCode,
    this.employerName,
    this.nationality,
    this.nricfin,
    this.passportNo,
    this.dateOfBirth,
  });

  PersonalDetails.fromJson(dynamic json) {
    orgId = json['OrgId'];
    employerCode = json['EmployerCode'];
    employerName = json['EmployerName'];
    nationality = json['Nationality'];
    nricfin = json['NRIC_FIN'];
    passportNo = json['PassportNo'];
    dateOfBirth = json['DateOfBirth'];
  }
  int? orgId;
  String? employerCode;
  String? employerName;
  String? nationality;
  String? nricfin;
  String? passportNo;
  String? dateOfBirth;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['OrgId'] = orgId;
    map['EmployerCode'] = employerCode;
    map['EmployerName'] = employerName;
    map['Nationality'] = nationality;
    map['NRIC_FIN'] = nricfin;
    map['PassportNo'] = passportNo;
    map['DateOfBirth'] = dateOfBirth;
    return map;
  }
}
