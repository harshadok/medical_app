class ModeFirebase {
  String? name;
  String? id;

  ModeFirebase({this.name, this.id});

  factory ModeFirebase.fromJson(Map<String, dynamic> json) {
    return ModeFirebase(name: json['name'], id: json['id']);
  }

  Map<String, dynamic> tojson() {
    return {'name ': name, 'id': id};
  }
}
