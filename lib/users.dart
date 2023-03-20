class User {
  final String month;
  final String value;
  final String price;
  final String perMonth;
  final String emoji;

  User(this.month, this.value, this.price, this.perMonth, this.emoji);
  static final myUsers = <User>[
    User("6 Month", "Best Value", "€50.20", "Per Month", "😎"),
    User("10 Month", "Best Value", "€20.60", "Per Month", "🔥"),
    User("20 Month", "Best Match", "€30.12", "Per Month", "☝🏻"),
  ];
}
