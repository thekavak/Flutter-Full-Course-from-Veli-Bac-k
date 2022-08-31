import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  const LoadingButton({Key? key, required this.title, required this.callback})
      : super(key: key);

  final String title;

  final Future<void> Function() callback;

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child:
          _isLoading ? const CircularProgressIndicator() : Text(widget.title),
      onPressed: () async {
        if (_isLoading) return;
        print('object');
        _changeLoading();
        await widget.callback.call();
        _changeLoading();
      },
    );
  }
}
