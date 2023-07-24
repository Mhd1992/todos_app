class ToDo {
  int id;
  String title;
  bool completed;

  ToDo({required this.id, required this.title, required this.completed});

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
        id: json['id'],
        title: json['title'],
        completed: json['completed']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['completed'] = completed;
    return data;
  }
}
