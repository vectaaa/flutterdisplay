import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Display App",
      home: MyDisplayForm(),

    );
  }
}

//Defining what custom form does.
class MyDisplayForm extends StatefulWidget{
  const MyDisplayForm({Key key}) : super(key: key);

  @override
  _MyDisplayFormSate createState() => _MyDisplayFormSate();
}
//Here we define the corresponding state class
//This class holds the data elated to the form.

class _MyDisplayFormSate extends State<MyDisplayForm> {
  //Here we create a text controller and use it to retrieve the current value of the textField
  final myController = TextEditingController();

  @override
  void dispose() {
    //We clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Display App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              //Here we retrieve the text a user has entered by using the text editing controller
              content: Text(myController.text),

            );
          },);
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.visibility),
      ),
    );
  }
}


