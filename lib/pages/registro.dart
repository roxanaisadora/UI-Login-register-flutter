
import 'package:flutter/material.dart';
import 'package:sesion_04/pages/forgot.dart';
import 'package:sesion_04/pages/form.dart';


class Registro extends StatelessWidget {
  const Registro({super.key});

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
        child: Padding(padding: const EdgeInsets.all(30.0),
        child: Column(
        children:  [
          const SizedBox(height: 50,),
          SizedBox(
            child: Image.asset(
              'assets/logo_2.png',
              width: 150,
              height: 150,
              fit:BoxFit.fill  
            ),
          ),
          const SizedBox(height: 50,),
          SizedBox(
            child:SingleChildScrollView(
              child: Column(
                children: [
                   TextField(
              style: const TextStyle(color: Colors.white, fontSize: 20),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                hintText: "Enter your email",
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
          const SizedBox(height: 20,),
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
                ],
              ),
            ) ,
          ),
           
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
           children: [
             TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Forgot()));
            },
            child: const Text('Forgot password?', style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400
            ),),
          ),
           ],
          ),
          const SizedBox(height: 70),
           MaterialButton(
                height: 45,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: const Color.fromARGB(255, 109, 50, 122),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Go!',
                  style: TextStyle(color: Color.fromARGB(255, 247, 244, 244), fontSize: 18),
                ),
                onPressed: () {}),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            const Text('Dont\'t have an account', style: TextStyle(color: Colors.white, fontSize: 16),),
             TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 30),
            ),
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Formlogin()));
            },
            child: const Text('Register', style: TextStyle(
              color: Color.fromARGB(255, 243, 229, 236), fontSize: 18, fontWeight: FontWeight.w400
            ),),
          ),
           ],
          ),
        ],
        ),)
      
      )
    );
  }
}


