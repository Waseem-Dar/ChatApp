import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserModel {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? password;
  String? phoneNumber;
  String? profilePicture;
  String? country;
  bool? notificationsEnabled;
  bool? isOnline;
  bool? isAccountDeletable;
  bool? termsAccepted;
  String? pushToken;

  UserModel(
      {this.id,
        this.firstName,
        this.lastName,
        this.username,
        this.email,
        this.password,
        this.phoneNumber,
        this.profilePicture,
        this.country,
        this.notificationsEnabled,
        this.isOnline,
        this.isAccountDeletable,
        this.termsAccepted,
        this.pushToken,
      });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phoneNumber'];
    profilePicture = json['profilePicture'];
    country = json['country'];
    notificationsEnabled = json['notificationsEnabled'];
    isOnline = json['isOnline'];
    isAccountDeletable = json['isAccountDeletable'];
    termsAccepted = json['termsAccepted'];
    pushToken = json['pushToken'];
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
    data['country'] = this.country;
    data['notificationsEnabled'] = this.notificationsEnabled;
    data['isOnline'] = this.isOnline;
    data['isAccountDeletable'] = this.isAccountDeletable;
    data['termsAccepted'] = this.termsAccepted;
    data['pushToken'] = this.pushToken;
    return data;
  }
}
