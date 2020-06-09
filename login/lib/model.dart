class RegisterStatus {
  final bool registered;

  final String userId;

  RegisterStatus.normal() : this(false, "0");

  RegisterStatus(this.registered, this.userId);

  @override
  String toString() {
    return 'SmsCodeResponse{ registered: $registered, userId: $userId}';
  }
}
