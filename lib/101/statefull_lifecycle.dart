import 'package:flutter/material.dart';

class LifeCycleLearn extends StatefulWidget {
  LifeCycleLearn({Key? key, required this.message}) : super(key: key);

  final String message;
  @override
  State<LifeCycleLearn> createState() => _LifeCycleLearnState();
}

class _LifeCycleLearnState extends State<LifeCycleLearn> {
  String _message = "";
  late final bool isOdd;
  //buna initte değer atayacağız ve bu öyle kalacak daha sonra değişmeyecek

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message = widget.message;
    isOdd = widget.message.length.isOdd;
    print('a');
  }

  void computeName() {
    if (isOdd) {
      _message += " Tek";
    } else {
      _message += " Çift";
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //sayfanın öldüğü an
    print('alo');
  }

  //drawdan önce initten sonra çalışır

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    computeName();
    print('c');
  }

  @override
  void didUpdateWidget(covariant LifeCycleLearn oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('b');

    if (oldWidget.message != widget.message) {
      _message = widget.message;
      computeName();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_message)),
        body: Center(
          child: InkWell(
            child: Text(_message),
            onTap: () {
              setState(() {
                _message = "a";
              });
            },
          ),
        ));
  }
}
