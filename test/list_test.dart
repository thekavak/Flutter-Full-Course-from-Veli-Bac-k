import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:veli_hoca/303/generic_learn.dart';
import 'package:veli_hoca/product/widget/card_generic_user.dart';

void main() {
  setUp(() {});

  test('List', () {
    List<GenericUser> users = [
      GenericUser('vb', '11', 10),
      GenericUser('vb1', '11', 10),
      GenericUser('vb3', '11', 20),
    ];

    List<GenericuserHighCard> highCards = users.map((e) {
      return GenericuserHighCard(
        items: e.name.split('').toList(),
      );
    }).toList();

    final result = users.singleWhere(
      (element) => element.findUserName('vb'),
      orElse: () {
        return GenericUser('name', '1', 11);
      },
    );

    final result1 = users.singleWhereOrNull(
      (element) => element.findUserName('vb'),
    );
  });
}
