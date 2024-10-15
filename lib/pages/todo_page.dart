import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //Definir controlador

  TextEditingController myController = TextEditingController();
  String greetingMessage = "";

  void greetUser() {
    setState(() {
      greetingMessage = "Hola " + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              // Text field
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ingresa tu nombre",
                ),
              ),

              // Boton

              ElevatedButton(
                onPressed: greetUser,
                child: Text("Saludo"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
