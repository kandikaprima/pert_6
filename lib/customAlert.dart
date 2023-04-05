import 'package:flutter/material.dart';

Future<dynamic> CustomAlert(BuildContext context, String pesan) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          "Eror 404",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: Text(
          pesan,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alert Dialog Page",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            CustomAlert(context, "Contoh Alert");
          },
          child: Text("Tampilkan alert dialog"),
        ),
      ),
    );
  }
}
