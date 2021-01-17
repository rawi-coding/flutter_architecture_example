class Friend {
  Friend.from(this.fullName, this.userName);

  Friend.fromMap(Map data) {
    fullName = data['fullName'];
    userName = data['userName'];
  }

  String fullName;
  String userName;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'fullName': this.fullName,
        'userName': this.userName,
      };
}
