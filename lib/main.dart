
import 'package:flutter/material.dart';

void main() =>runApp(
    MaterialApp(
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.white,
  body: Container(
    child: Column(
      children: <Widget>[
     Container(
          height: 400,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/background.png'),
              fit: BoxFit.fill
            )
          ),
        child: Stack (
          children: <Widget>[
            Positioned(
              left: 30,
              width: 80,
              height: 200,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage (
                    image: AssetImage('assets/img/light-1.png')
                  )
                ),
              ) ,
            ),
            Positioned(
              left: 140,
              width: 80,
              height: 150,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage (
                        image: AssetImage('assets/img/light-2.png')
                    )
                ),
              ) ,
            ),
            Positioned(
              right: 40,
              top: 40,
              width: 80,
              height: 150,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage (
                        image: AssetImage('assets/img/clock.png')
                    )
                ),
              ) ,
            ),
            Positioned(
                child: Container(
                  margin: const EdgeInsets.only(top: 50
                   ),
                  child: const Center(
                    child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.bold),),
                  ),
                ))
          ],
        
    )
        ),
        Padding(
            padding: const EdgeInsets.all(30.0),
        child: Column(
          children:<Widget> [
            Container(
              padding:const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(143, 98, 115, 210),
                    blurRadius: 20.0,
                    offset: Offset(0, 10)
                  )
                ]
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Email or Phone number",
                        hintStyle: TextStyle(color: Colors.grey)
                         ),
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey)
                        ),
                    ),
                    )
                ],
              ),
            ),
             SizedBox(height: 30,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(143, 98, 115, 210),
                    Color.fromARGB(181, 155, 159, 212),
                  ]
                  )
              ),
              child: const Center(
                child: Text("Login",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),
   SizedBox(height: 70,),
            Text("Forget Password?" ,style: TextStyle(color:Color.fromARGB(181, 155, 159, 212)),),
      ],
  ),
          )
    ],
  )
    ),

);
  }

}

