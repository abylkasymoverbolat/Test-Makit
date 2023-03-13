
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);



  @override
  State<signIn> createState() => _signInState();
}


class _signInState extends State<signIn> {

  var _userNameController = TextEditingController();
  var _userPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            left: 0,
              child: Container(
                height: 474,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/back.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 123,left: 34),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                            text: "Вход",
                            style:TextStyle(
                              fontSize: 34,
                              color: Colors.white,
                            )
                          ))
                    ],
                  ),
                ),
              ),
          ),
          Positioned(
              top: 197,
              child: Container(
            height: 400,
            width: MediaQuery.of(context).size.width-40,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 3,
                )
              ]
            ),
                child:Container(
                  width: MediaQuery.of(context).size.width-30,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _userNameController,
                        decoration: InputDecoration(
                          hintText: "Email",
                          labelText: 'Email',
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextField(
                        controller: _userPassController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Пароль",
                          labelText: 'Пароль',
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/loading');
                          },

                          child: Text("Войти",style: TextStyle(
                            fontSize: 16,
                          ),),

                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.deepPurpleAccent,
                              minimumSize: Size(230, 38),

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )
                          )


                      ),

                    ],
                  ) ,
                )


          ))
        ],
      ),
    );

  }
}
