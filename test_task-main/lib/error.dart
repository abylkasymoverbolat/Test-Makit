
import 'package:flutter/material.dart';

class Error extends StatefulWidget {
  const Error({Key? key}) : super(key: key);

  @override
  State<Error> createState() => _ErrorState();
}

class _ErrorState extends State<Error> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.report_problem_outlined,
                size: 76,
                color: Colors.deepPurple,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Не удалось загрузить информацию',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/users');
                  },

                  child: Text("Обновить",style: TextStyle(
                    fontSize: 17,
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
          )
        ],
      )
    );
  }
}
