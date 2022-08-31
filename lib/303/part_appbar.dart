part of 'partofLearn.dart';

class _PartofAppbar extends StatelessWidget with PreferredSizeWidget {
  const _PartofAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('aa'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.cable_outlined))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
