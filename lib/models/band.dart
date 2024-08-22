class Band {
  String id = '';
  String name = '';
  int votes = 0;

  Band({
    required this.id,
    required this.name,
    this.votes = 0,
  });

  factory Band.fromMap(Map<String, dynamic> obj) => Band(
        id: obj['id'],
        name: obj['name'],
        votes: obj['votes'],
      );
}
