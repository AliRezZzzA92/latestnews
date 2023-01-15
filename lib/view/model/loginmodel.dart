import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:blogproject/view/auth/regmob.dart';

//request baraye daryaft phonenumber be server ersal shode//
Future<http.Response> regmob(String phonenumber) async {
  //var response ra tarif mikonim ta phonenumber ra be server befrestim(post konim)//
  var response = await http.post(
    //tabdil uri be agzaye mokhtalef : host, server,path//
    Uri.parse('http://google.com'),
    //kind of data to server,map datatype//
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    //convert object to (jsonEncode)String//
    body: jsonEncode(<String, String>{"phonenumber": phonenumber}),
  );
  //return var ke function post ra dar on rikhte budim, yani javab server dar on mirizad//
  return response;
}
