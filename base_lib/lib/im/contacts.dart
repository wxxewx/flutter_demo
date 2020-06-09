
import 'package:baselib/domain/user/avatar.dart';
import 'package:baselib/domain/user/gender.dart';

class Contacts{
  final String birthday;
  final String signature;
  final String email;
  final String extension;
  final String phone;
  final String name;
  final String contactsId;
  final Avatar avatar;
  final Gender gender;

  Contacts(this.birthday, this.signature, this.email, this.extension,
      this.phone, this.name, this.contactsId, this.avatar, this.gender);


}