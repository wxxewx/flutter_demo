enum UserStatus { OFFLINE, ONLINE, CHATTING }

UserStatus decodeUserStatusfromString(String des) {
  if (des == "不在线") {
    return UserStatus.OFFLINE;
  } else if (des == "在线") {
    return UserStatus.OFFLINE;
  } else {
    return UserStatus.OFFLINE;
  }
}
