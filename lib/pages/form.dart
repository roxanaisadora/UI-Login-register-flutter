import 'package:flutter/material.dart';
import 'package:sesion_04/main.dart';

class Formlogin extends StatelessWidget {
  const Formlogin({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/fondo_2.jpg'),
          fit: BoxFit.cover
          )
        ),
        child: Padding(padding: const EdgeInsets.all(20.0),
        child: Column(
        children:  [
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,size: 35,),
          tooltip: 'Menu',
          onPressed: () {
            Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyApp()));
          },
        ),
          ],
          ),
          SizedBox(
            child: SingleChildScrollView(
              child:Column(
                children: [
                  SizedBox(
                    width: 110,
                    height: 110,
                    child:Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/icon.png'),
                         fit:BoxFit.cover
                        )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            shape: const CircleBorder(),
                             padding: const EdgeInsets.only(top: 20, left: 40),
                                child:Image.asset(
                              'assets/button_add.png',
                              width: 30,
                              height: 30,
                              fit:BoxFit.fill  
                            ) ,
                                onPressed: () {})
                        ],
                      )
                    )
                  ), 
                  const SizedBox(height: 20,),
          TextField(
            style: const TextStyle(color: Color.fromARGB(255, 248, 248, 248), fontSize: 20),
            decoration: InputDecoration(
                labelText: 'Name',
                hintText: "Enter your name",
                hintStyle:const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                  ),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.white, width: 2),
                    ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
              ),
          ),
          const SizedBox(height: 15,),
           TextField(
            style: const TextStyle(color: Color.fromARGB(255, 248, 248, 248), fontSize: 20),
            decoration: InputDecoration(
                labelText: 'E-mail',
                hintText: "Enter your E-mail",
                hintStyle:const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                  ),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                  ),
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.white, width: 2),
                    ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
              ),
          ),
           const SizedBox(height: 15,),
          TextField(
            style: const TextStyle(color: Color.fromARGB(255, 248, 248, 248), fontSize: 20),
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: 'Password',
                hintText: "Enter your password",
                hintStyle:const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                  ),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                  ),
                  prefixIcon: const Icon(
                    Icons.key,
                    color: Colors.white,
                    size: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.white, width: 2),
                    ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
              ),
          ),
          const SizedBox(height: 15),
          TextField(
            style: const TextStyle(color: Color.fromARGB(255, 248, 248, 248), fontSize: 20),
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
                labelText: 'Birthday',
                hintText: "dd/mm/yyyy",
                hintStyle:const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                  ),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                  ),
                  prefixIcon: const Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.white, width: 2),
                    ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
              ),
          ),
          const SizedBox(height: 40,),
                ],
              )
            ),
          ),
           MaterialButton(
                height: 45,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: const Color.fromARGB(255, 109, 50, 122),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Go!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {}),

          const SizedBox(height: 30),
          const Text('Or create account using social media', style: TextStyle(color: Colors.white, fontSize: 16),),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            MaterialButton(
              shape: const CircleBorder(),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child:Image.asset(
              'assets/google.png',
              width: 50,
              height: 50,
              fit:BoxFit.fill  
            ) ,
                onPressed: () {}),

            MaterialButton(
              shape: const CircleBorder(),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child:Image.asset(
              'assets/facebook.png',
              width: 50,
              height: 50,
              fit:BoxFit.fill  
            ) ,
                onPressed: () {}),

            MaterialButton(
              shape: const CircleBorder(),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child:Image.asset(
              'assets/twitter.png',
              width: 50,
              height: 50,
              fit:BoxFit.fill  
            ) ,
                onPressed: () {}),
           ],
          ),

        ],
        ),)
      
      )
    );
  }
}