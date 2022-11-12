import 'package:flutter/material.dart';
import 'package:sesion_04/main.dart';

class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
  Widget build(BuildContext context) {
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
          children: [
            const SizedBox(height: 20,),
            Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,size: 40,),
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
            child: Image.asset(
              'assets/forgot.png',
              width: 150,
              height: 150,
              fit:BoxFit.fill  
            ),
          ),
          const SizedBox(height: 50),
          const Text('Please enter your email address to recieve a verification card', style: TextStyle(color: Colors.white, fontSize: 16),),
          SizedBox(
            child: Column(children: [
              const SizedBox(height: 40),
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
          const SizedBox(height: 40,),
            ]),
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
                const SizedBox(height: 80,),
          ],
        ),
        ),
      ),
    );
  }
}