import 'package:flutter/material.dart';


class rich_text extends StatefulWidget {
  const rich_text({Key? key}) : super(key: key);

  @override
  _rich_textState createState() => _rich_textState();
}

class _rich_textState extends State<rich_text> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        alignment: Alignment.center,
        color: Colors.red,
        height: 100,
        width: 200,
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'this'),
                  TextSpan(text: ' is',style: TextStyle(fontSize: 30)),
                  TextSpan(text: ' Rich Text'),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
