import 'package:google_maps_flutter/google_maps_flutter.dart';

class user_model {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? password;
  String? phoneNumber;
  String? profilePicture;
  String? location;
  String? country;
  bool? isLocationShared;
  bool? isGuardian;
  bool? notificationsEnabled;
  String? accountStatus;
  bool? isOnline;
  List<String>? contacts;
  List<String>? chats;
  List<String>? groups;
  List<String>? favourites;
  String? influenceLevel;
  bool? isAccountDeletable;
  String? lastLogin;
  String? preferredLanguage;
  bool? termsAccepted;

  user_model(
      {this.id,
        this.firstName,
        this.lastName,
        this.username,
        this.email,
        this.password,
        this.phoneNumber,
        this.profilePicture,
        this.location,
        this.country,
        this.isLocationShared,
        this.isGuardian,
        this.notificationsEnabled,
        this.accountStatus,
        this.isOnline,
        this.contacts,
        this.chats,
        this.groups,
        this.favourites,
        this.influenceLevel,
        this.isAccountDeletable,
        this.lastLogin,
        this.preferredLanguage,
        this.termsAccepted});

  user_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    profilePicture = json['profilePicture'];
    location = json['location'];
    country = json['country'];
    isLocationShared = json['isLocationShared'];
    isGuardian = json['isGuardian'];
    notificationsEnabled = json['notificationsEnabled'];
    accountStatus = json['accountStatus'];
    isOnline = json['isOnline'];
    contacts = json['contacts'].cast<String>();
    chats = json['chats'].cast<String>();
    groups = json['groups'].cast<String>();
    favourites = json['favourites'].cast<String>();
    influenceLevel = json['influenceLevel'];
    isAccountDeletable = json['isAccountDeletable'];
    lastLogin = json['lastLogin'];
    preferredLanguage = json['preferredLanguage'];
    termsAccepted = json['termsAccepted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phoneNumber'] = this.phoneNumber;
    data['profilePicture'] = this.profilePicture;
    data['location'] = this.location;
    data['country'] = this.country;
    data['isLocationShared'] = this.isLocationShared;
    data['isGuardian'] = this.isGuardian;
    data['notificationsEnabled'] = this.notificationsEnabled;
    data['accountStatus'] = this.accountStatus;
    data['isOnline'] = this.isOnline;
    data['contacts'] = this.contacts;
    data['chats'] = this.chats;
    data['groups'] = this.groups;
    data['favourites'] = this.favourites;
    data['influenceLevel'] = this.influenceLevel;
    data['isAccountDeletable'] = this.isAccountDeletable;
    data['lastLogin'] = this.lastLogin;
    data['preferredLanguage'] = this.preferredLanguage;
    data['termsAccepted'] = this.termsAccepted;
    return data;
  }
}