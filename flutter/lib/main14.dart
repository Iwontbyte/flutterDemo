import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './pages/dialog.dart';

void main(List<String> args) {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Main"),
          ),
          body: Dialog()),
    );
  }
}

class Dialog extends StatefulWidget {
  const Dialog({super.key});

  @override
  State<Dialog> createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  void _alterDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("AlertDialog"),
            content: Text("WHATEVER i'm wirting"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              )
            ],
          );
        });
  }

  void _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop("英文");
                },
                child: Text("English"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop("中文");
                },
                child: Text("中文"),
              )
            ],
          );
        });
    return result;
  }

  void _modelBttomDialog() {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 80,
            child: Text("showBottomSheet"),
          );
        });
  }

  void _toast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _myDialog() {
    showBottomSheet(
        context: context,
        builder: (context) {
          return MyDialog(
            title: "提示",
            content: "This is content",
            onTap: () {
              Navigator.of(context).pop();
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: _alterDialog,
            icon: const Icon(Icons.light),
            label: const Text("AlterDialog"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.ice_skating_outlined),
            label: const Text("SampleDialog"),
            onPressed: _simpleDialog,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.ac_unit_outlined),
            label: const Text("ShowModelButtomDialog"),
            onPressed: _modelBttomDialog,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.icecream_outlined),
            label: const Text("ToastDialog"),
            onPressed: _toast,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.access_alarm_outlined),
            label: const Text("CustomDialog"),
            onPressed: _myDialog,
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          // ElevatedButton.icon(
          //   icon: const Icon(Icons.ice_skating_outlined),
          //   label: const Text("SampleDialog"),
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}
