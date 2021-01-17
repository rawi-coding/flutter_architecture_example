class Event {
  Event();

  Event.from(
    this.title,
    this.address,
    this.started,
  );

  Event.fromMap(Map data) {
    title = data['title'];
    address = data['address'];
    started = DateTime.fromMillisecondsSinceEpoch(data['started']);
  }

  String title;
  String address;
  DateTime started;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': this.title,
      'address': this.address,
      'started': this.started.millisecondsSinceEpoch,
    };
  }
}
