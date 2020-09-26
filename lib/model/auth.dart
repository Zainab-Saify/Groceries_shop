import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth with ChangeNotifier
{
  var token;

  Future<void> authenticate() async
  {
      final response = await http.post('https://icmapidev.komerco.online/auth/api/v1/login',
      headers: {"Content-Type" : "application/json"},
      body: json.encode(
        {
          'username': "admin",
          'password': "siany-kpcm"
        }
      ));
    
      print(json.decode(response.body));
  }
}