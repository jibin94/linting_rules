import 'package:flutter/material.dart';

// Missing return type for main function
main() {
  // Unnecessary new keyword and missing const
  runApp(new sample_flutter_app());
}

// Non-camel case class name
class sample_flutter_app extends StatelessWidget {
  // Missing return type and unused parameter
  build(BuildContext context) {
    // Unnecessary new keyword
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      // Non-const constructor
      home: home_page(),
    );
  }
}

// Non-camel case class name
class home_page extends StatefulWidget {
  // Missing return type
  createState() {
    return home_page_state();
  }
}

// Non-camel case class name
class home_page_state extends State<home_page> {
  // Variable not declared as final
  TextEditingController controller = TextEditingController();

  @override
  // Missing return type
  Widget build(BuildContext context) {
    // Use of print statement
    print('Building HomePage');

    // Variable not declared as final
    String welcomeMessage = 'Welcome to Flutter';

    // Unnecessary new keyword and missing const
    return new Scaffold(
      appBar: new AppBar(
        // Non-const constructor
        title: new Text('Lint Rules Demo'),
        centerTitle: true,
      ),
      body: new Center(
        child: new Column(
          // Incorrect alignment of elements
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // String concatenation instead of interpolation
            Text('Message: ' + welcomeMessage),
            new TextField(
              controller: controller,
              decoration: new InputDecoration(labelText: 'Enter something'),
            ),
            new ElevatedButton(
              onPressed: showMessage,
              // Non-const constructor
              child: new Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  // Missing return type
  // Unnecessary void async
  void showMessage() async {
    // Non-final local variable and unnecessary check
    var text = controller.text;
    if (text != null && text != '') {
      // Use of positional boolean parameter
      //showDialog(context, text);
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: new Text('Message'),
          // Use of interpolation
          content: new Text(text),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.of(ctx).pop();
                // Incorrect use of await on a non-Future value
                await nonFutureFunction();
              },
              child: Container(
                padding: EdgeInsets.all(14),
                child: Text("okay"),
              ),
            ),
          ],
        ),
      );
    }
  }

  // This function does not return a Future
  String nonFutureFunction() {
    return 'Hello, World!';
  }
}

// Class with only static members
class Utility {
  static String toUpperCase(String value) {
    return value.toUpperCase();
  }
}
