class StatementModel {
  final String title;
  final String type;
  final String? description;
  final double amount;

  StatementModel({
    required this.title,
    required this.type,
    this.description,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'type': type,
      'description': description,
      'amount': amount,
    };
  }
}