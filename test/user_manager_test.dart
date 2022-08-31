import 'package:flutter_test/flutter_test.dart';
import 'package:veli_hoca/303/generic_learn.dart';

void main() {
  setUp(() {});

  test('UserCalculate', () {
    final users = [
      GenericUser('vb', '11', 10),
      GenericUser('vb', '11', 10),
      GenericUser('vb', '11', 20),
    ];

    // final result = UserManagement(AdminUser('', '1', 15, 1)).calculateMoney(users);
    // expect(result, 55);
    final response =
        UserManagement(AdminUser('', '1', 15, 1)).showNames<String>(users);

    // expect(response.length, 3);
  });
}
