class HelperDataFormModel {
  HelperDataFormModel({
    this.helperBioDetails,
    this.helperContacts,
    this.familyBackground,
    this.physicalAttribute,
    this.bookingRealtedInformation,
    this.interview,
    this.accountDetails,
  });

  HelperDataFormModel.fromJson(dynamic json) {
    helperBioDetails = json['HelperBioDetails'] != null
        ? HelperBioDetails.fromJson(json['HelperBioDetails'])
        : null;
    helperContacts = json['HelperContacts'] != null
        ? HelperContacts.fromJson(json['HelperContacts'])
        : null;
    familyBackground = json['FamilyBackground'] != null
        ? FamilyBackground.fromJson(json['FamilyBackground'])
        : null;
    physicalAttribute = json['PhysicalAttribute'] != null
        ? PhysicalAttribute.fromJson(json['PhysicalAttribute'])
        : null;
    bookingRealtedInformation = json['BookingRealtedInformation'] != null
        ? BookingRealtedInformation.fromJson(json['BookingRealtedInformation'])
        : null;
    if (json['Interview'] != null) {
      interview = [];
      json['Interview'].forEach((v) {
        interview?.add(Interview.fromJson(v));
      });
    }
    accountDetails = json['AccountDetails'] != null
        ? AccountDetails.fromJson(json['AccountDetails'])
        : null;
  }
  HelperBioDetails? helperBioDetails;
  HelperContacts? helperContacts;
  FamilyBackground? familyBackground;
  PhysicalAttribute? physicalAttribute;
  BookingRealtedInformation? bookingRealtedInformation;
  List<Interview>? interview;
  AccountDetails? accountDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (helperBioDetails != null) {
      map['HelperBioDetails'] = helperBioDetails?.toJson();
    }
    if (helperContacts != null) {
      map['HelperContacts'] = helperContacts?.toJson();
    }
    if (familyBackground != null) {
      map['FamilyBackground'] = familyBackground?.toJson();
    }
    if (physicalAttribute != null) {
      map['PhysicalAttribute'] = physicalAttribute?.toJson();
    }
    if (bookingRealtedInformation != null) {
      map['BookingRealtedInformation'] = bookingRealtedInformation?.toJson();
    }
    if (interview != null) {
      map['Interview'] = interview?.map((v) => v.toJson()).toList();
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
  });

  AccountDetails.fromJson(dynamic json) {
    email = json['Email'];
    password = json['Password'];
    confirmPassword = json['ConfirmPassword'];
    sMSContactNumber = json['SMSContactNumber'];
  }
  String? email;
  String? password;
  String? confirmPassword;
  String? sMSContactNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Email'] = email;
    map['Password'] = password;
    map['ConfirmPassword'] = confirmPassword;
    map['SMSContactNumber'] = sMSContactNumber;
    return map;
  }
}

class Interview {
  Interview({
    this.orgId,
    this.helperCode,
    this.interviewDate,
    this.interviewTime,
    this.remarks,
  });

  Interview.fromJson(dynamic json) {
    orgId = json['OrgId'];
    helperCode = json['HelperCode'];
    interviewDate = json['InterviewDate'];
    interviewTime = json['InterviewTime'];
    remarks = json['Remarks'];
  }
  int? orgId;
  String? helperCode;
  String? interviewDate;
  String? interviewTime;
  String? remarks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['OrgId'] = orgId;
    map['HelperCode'] = helperCode;
    map['InterviewDate'] = interviewDate;
    map['InterviewTime'] = interviewTime;
    map['Remarks'] = remarks;
    return map;
  }
}

class BookingRealtedInformation {
  BookingRealtedInformation({
    this.basicSalary,
    this.offDayDailyRate,
    this.helperFee,
    this.pocketMoney,
    this.selectOffDays,
    this.noOffDays,
  });

  BookingRealtedInformation.fromJson(dynamic json) {
    basicSalary = json['BasicSalary'];
    offDayDailyRate = json['OffDayDailyRate'];
    helperFee = json['HelperFee'];
    pocketMoney = json['PocketMoney'];
    selectOffDays = json['SelectOffDays'];
    noOffDays = json['NoOffDays'];
  }
  int? basicSalary;
  int? offDayDailyRate;
  int? helperFee;
  int? pocketMoney;
  String? selectOffDays;
  int? noOffDays;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['BasicSalary'] = basicSalary;
    map['OffDayDailyRate'] = offDayDailyRate;
    map['HelperFee'] = helperFee;
    map['PocketMoney'] = pocketMoney;
    map['SelectOffDays'] = selectOffDays;
    map['NoOffDays'] = noOffDays;
    return map;
  }
}

class PhysicalAttribute {
  PhysicalAttribute({
    this.complexion,
    this.heightCM,
    this.heightFeet,
    this.weightKG,
    this.weightPound,
  });

  PhysicalAttribute.fromJson(dynamic json) {
    complexion = json['Complexion'];
    heightCM = json['Height_CM'];
    heightFeet = json['Height_Feet'];
    weightKG = json['Weight_KG'];
    weightPound = json['Weight_Pound'];
  }
  String? complexion;
  String? heightCM;
  String? heightFeet;
  int? weightKG;
  int? weightPound;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Complexion'] = complexion;
    map['Height_CM'] = heightCM;
    map['Height_Feet'] = heightFeet;
    map['Weight_KG'] = weightKG;
    map['Weight_Pound'] = weightPound;
    return map;
  }
}

class FamilyBackground {
  FamilyBackground({
    this.fatherOccupation,
    this.motherOccupation,
    this.fatherAge,
    this.motherAge,
    this.siblingsPosition,
    this.noOfBrother,
    this.noOfSister,
    this.brotherAge,
    this.sisterAge,
    this.husbandName,
    this.husbandOccupation,
    this.husbandAge,
    this.noOfChildren,
    this.childAge,
  });

  FamilyBackground.fromJson(dynamic json) {
    fatherOccupation = json['FatherOccupation'];
    motherOccupation = json['MotherOccupation'];
    fatherAge = json['FatherAge'];
    motherAge = json['MotherAge'];
    siblingsPosition = json['SiblingsPosition'];
    noOfBrother = json['NoOfBrother'];
    noOfSister = json['NoOfSister'];
    brotherAge = json['BrotherAge'];
    sisterAge = json['SisterAge'];
    husbandName = json['HusbandName'];
    husbandOccupation = json['HusbandOccupation'];
    husbandAge = json['HusbandAge'];
    noOfChildren = json['NoOfChildren'];
    childAge = json['ChildAge'];
  }
  String? fatherOccupation;
  String? motherOccupation;
  int? fatherAge;
  int? motherAge;
  String? siblingsPosition;
  int? noOfBrother;
  int? noOfSister;
  int? brotherAge;
  int? sisterAge;
  String? husbandName;
  String? husbandOccupation;
  int? husbandAge;
  int? noOfChildren;
  int? childAge;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['FatherOccupation'] = fatherOccupation;
    map['MotherOccupation'] = motherOccupation;
    map['FatherAge'] = fatherAge;
    map['MotherAge'] = motherAge;
    map['SiblingsPosition'] = siblingsPosition;
    map['NoOfBrother'] = noOfBrother;
    map['NoOfSister'] = noOfSister;
    map['BrotherAge'] = brotherAge;
    map['SisterAge'] = sisterAge;
    map['HusbandName'] = husbandName;
    map['HusbandOccupation'] = husbandOccupation;
    map['HusbandAge'] = husbandAge;
    map['NoOfChildren'] = noOfChildren;
    map['ChildAge'] = childAge;
    return map;
  }
}

class HelperContacts {
  HelperContacts({
    this.homeAddress,
    this.homeTelephone,
    this.whatsApp,
    this.viber,
    this.facebook,
    this.otherContact,
  });

  HelperContacts.fromJson(dynamic json) {
    homeAddress = json['HomeAddress'];
    homeTelephone = json['HomeTelephone'];
    whatsApp = json['WhatsApp'];
    viber = json['Viber'];
    facebook = json['Facebook'];
    if (json['OtherContact'] != null) {
      otherContact = [];
      json['OtherContact'].forEach((v) {
        otherContact?.add(OtherContact.fromJson(v));
      });
    }
  }
  String? homeAddress;
  String? homeTelephone;
  String? whatsApp;
  String? viber;
  String? facebook;
  List<OtherContact>? otherContact;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['HomeAddress'] = homeAddress;
    map['HomeTelephone'] = homeTelephone;
    map['WhatsApp'] = whatsApp;
    map['Viber'] = viber;
    map['Facebook'] = facebook;
    if (otherContact != null) {
      map['OtherContact'] = otherContact?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class OtherContact {
  OtherContact({
    this.orgId,
    this.helperCode,
    this.type,
    this.information,
  });

  OtherContact.fromJson(dynamic json) {
    orgId = json['OrgId'];
    helperCode = json['HelperCode'];
    type = json['Type'];
    information = json['Information'];
  }
  int? orgId;
  String? helperCode;
  String? type;
  String? information;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['OrgId'] = orgId;
    map['HelperCode'] = helperCode;
    map['Type'] = type;
    map['Information'] = information;
    return map;
  }
}

class HelperBioDetails {
  HelperBioDetails({
    this.orgId,
    this.helperCode,
    this.helperName,
    this.emailId,
    this.password,
    this.mobileNo,
    this.nricfin,
    this.nationality,
    this.passportNo,
    this.passportIssuePlace,
    this.passIssueDate,
    this.passportExpiryDate,
    this.workPermitNo,
    this.workPermitExpiry,
    this.religion,
    this.dateOfBirth,
    this.martilaStatus,
    this.birthPlace,
    this.specializationPreference,
    this.repatraiteAirport,
    this.status,
    this.otherInfo,
    this.directHire,
    this.trainingCenter,
    this.emailAddress,
    this.fileName,
    this.helperImgBase64String,
    this.isActive,
    this.createdBy,
  });

  HelperBioDetails.fromJson(dynamic json) {
    orgId = json['OrgId'];
    helperCode = json['HelperCode'];
    helperName = json['HelperName'];
    emailId = json['EmailId'];
    password = json['Password'];
    mobileNo = json['MobileNo'];
    nricfin = json['NRIC_FIN'];
    nationality = json['Nationality'];
    passportNo = json['PassportNo'];
    passportIssuePlace = json['PassportIssuePlace'];
    passIssueDate = json['PassIssueDate'];
    passportExpiryDate = json['PassportExpiryDate'];
    workPermitNo = json['WorkPermitNo'];
    workPermitExpiry = json['WorkPermitExpiry'];
    religion = json['Religion'];
    dateOfBirth = json['DateOfBirth'];
    martilaStatus = json['MartilaStatus'];
    birthPlace = json['BirthPlace'];
    specializationPreference = json['Specialization_Preference'];
    repatraiteAirport = json['RepatraiteAirport'];
    status = json['Status'];
    otherInfo = json['OtherInfo'];
    directHire = json['DirectHire'];
    trainingCenter = json['TrainingCenter'];
    emailAddress = json['EmailAddress'];
    fileName = json['FileName'];
    helperImgBase64String = json['Helper_Img_Base64String'];
    isActive = json['IsActive'];
    createdBy = json['CreatedBy'];
  }
  int? orgId;
  String? helperCode;
  String? helperName;
  String? emailId;
  String? password;
  String? mobileNo;
  String? nricfin;
  String? nationality;
  String? passportNo;
  String? passportIssuePlace;
  String? passIssueDate;
  String? passportExpiryDate;
  String? workPermitNo;
  String? workPermitExpiry;
  String? religion;
  String? dateOfBirth;
  String? martilaStatus;
  String? birthPlace;
  String? specializationPreference;
  String? repatraiteAirport;
  String? status;
  String? otherInfo;
  bool? directHire;
  String? trainingCenter;
  String? emailAddress;
  String? fileName;
  String? helperImgBase64String;
  bool? isActive;
  String? createdBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['OrgId'] = orgId;
    map['HelperCode'] = helperCode;
    map['HelperName'] = helperName;
    map['EmailId'] = emailId;
    map['Password'] = password;
    map['MobileNo'] = mobileNo;
    map['NRIC_FIN'] = nricfin;
    map['Nationality'] = nationality;
    map['PassportNo'] = passportNo;
    map['PassportIssuePlace'] = passportIssuePlace;
    map['PassIssueDate'] = passIssueDate;
    map['PassportExpiryDate'] = passportExpiryDate;
    map['WorkPermitNo'] = workPermitNo;
    map['WorkPermitExpiry'] = workPermitExpiry;
    map['Religion'] = religion;
    map['DateOfBirth'] = dateOfBirth;
    map['MartilaStatus'] = martilaStatus;
    map['BirthPlace'] = birthPlace;
    map['Specialization_Preference'] = specializationPreference;
    map['RepatraiteAirport'] = repatraiteAirport;
    map['Status'] = status;
    map['OtherInfo'] = otherInfo;
    map['DirectHire'] = directHire;
    map['TrainingCenter'] = trainingCenter;
    map['EmailAddress'] = emailAddress;
    map['FileName'] = fileName;
    map['Helper_Img_Base64String'] = helperImgBase64String;
    map['IsActive'] = isActive;
    map['CreatedBy'] = createdBy;
    return map;
  }
}
