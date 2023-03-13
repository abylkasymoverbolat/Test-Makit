import 'dart:convert';

class Note{
 late String name;
 late String email;

  Note(this.name, this.email);

  Note.fromJson(Map<String , dynamic>json ){
    name = json['name'];
    email = json['email'];
  }
}
