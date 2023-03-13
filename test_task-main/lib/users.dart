import 'dart:convert';

import 'package:flutter/material.dart';

import 'note.dart';
import 'package:http/http.dart' as http;

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {



  List<Note> _myNote = <Note>[];
  Future<List<Note>> Notes() async{
    var response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users")
    );
    var notes = <Note>[];
    if  (response.statusCode == 200){
     var notesJson = json.decode(response.body);
     for(var noteJson in notesJson){
       notes.add(Note.fromJson(noteJson));
     }
    }
    return notes;
  }

  @override
  Widget build(BuildContext context) {

    Notes().then((value){
      setState(() {
        _myNote.addAll(value);
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Пользователи',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          child:ListView.builder(
              itemCount: _myNote.length,
              itemBuilder: (context,index){
                return ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, '/error');
                  },
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text(
                    _myNote[index].name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                  ),
                  subtitle: Text(
                    _myNote[index].email,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),


                  ),
                  leading: Icon(Icons.account_circle_outlined,size: 70,color: Colors.grey,),
                );
              })
        ),
      )
    );
  }
}
