import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Homepage extends StatefulWidget{
  const Homepage ({super.key});
  @override
  State<Homepage> createState() =>  _Homepage();
}

class _Homepage extends State<Homepage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {    return Scaffold(
    // backgroundColor: Color.fromARGB(255, 243, 174, 240),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Currency converter", style: TextStyle(
          color: Color.fromARGB(255, 88, 218, 218),
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('INR${result !=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 88, 218, 218),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Please enter amount USD',
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.yellowAccent,
                  filled: true,
                  fillColor: Colors.greenAccent,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 83.3;
                });
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ),

          ],

        ),
      )
  );
  }
}


