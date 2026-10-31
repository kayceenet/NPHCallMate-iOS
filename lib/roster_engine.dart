class RosterEngine {
  static const List<String> titles = ["1st on Call", "2nd on Call", "3rd on Call"];
  static const List<String> dowNames = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  static const String footer = "Created by Kelechi N.W. 08164389966";

  static int dayNum(int y, int m, int d) {
    final utcDate = DateTime.utc(y, m, d);
    return (utcDate.millisecondsSinceEpoch ~/ 86400000).toInt();
  }

  static int wd(int dn) {
    return (((dn + 4) % 7) + 7) % 7;
  }
}
