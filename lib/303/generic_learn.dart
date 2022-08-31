class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);

  void sayName(String name) {
    print(name);
  }

  int calculateMoney(List<GenericUser> users) {
    int initialValue = admin.role == 1 ? admin.money : 0;
    final sumMoney = users.map((e) => e.money).fold<int>(
        initialValue, (previousValue, element) => previousValue + element);

//aynı iş
    final int money = users.fold<int>(
        0, ((previousValue, element) => previousValue + element.money));

    return sumMoney;
  }

  Iterable<R>? showNames<R>(List<GenericUser> users) {
    //bunu sadece rol 1 olanlar görebilecek

    if (R == String) {
      final names = users.map((e) => e.name).cast<R>();
      return names;
    }

    return null;
  }
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);

  bool findUserName(String name) {
    return this.name == name;
  }
}

class AdminUser extends GenericUser {
  final int role;

  AdminUser(String name, String id, int money, this.role)
      : super(name, id, money);
}
