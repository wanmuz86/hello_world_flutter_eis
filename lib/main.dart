import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
// stless atau stful + tab
class HomePage extends StatelessWidget {
  // 2) Create EditingController for textfield = 1 TextField 1 EditingController
  var nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Struktur sesebuah app
    return Scaffold(
      backgroundColor: Colors.yellow,
      // App Bar -
      appBar:AppBar(title: Text("Hello World"), backgroundColor: Colors.red,),
      // body - Bahagian putih di dalam
        // Text - Hello World
      body:SingleChildScrollView(
        child: Center(child: Column(
          children: [
            Text("Welcome to my app", style: GoogleFonts.tiltNeon(textStyle: TextStyle(fontSize: 32, color: Colors.blue)),),
            SizedBox(height: 8,),
            Text("I hope you enjoy it", style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 24, color: Colors.green)),),
            SizedBox(height: 8,),
            Text("Thank you for visiting",style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 18, color: Colors.orange)),),
            SizedBox(height: 8,),
            Image.network("https://a.cdn-hotels.com/gdcs/production99/d1417/4da30a77-ecb2-4ead-a771-e61fac2a73dd.jpg"),
            SizedBox(height: 8,),
            Image.asset("assets/kelas_flutter.jpg"),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is left"),
                SizedBox(width: 8,),
                Text("This is right")
              ],
            ),
              TextField(decoration: InputDecoration(hintText: "Enter your name"), controller: nameEditingController,),
            TextButton(onPressed: (){
              Fluttertoast.showToast(
                // the first two properties - compulsary - hitam tengah bawah
                // the other properties - Custom toast
                  msg: "Hello ${nameEditingController.text}",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }, child: Text("Press me!"))
          ],
        )),
      )
    );
  }
}
