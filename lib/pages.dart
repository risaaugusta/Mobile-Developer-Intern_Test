// pages ini berfungsi untuk menghubungkan semua halaman agar bisa dipanggil di setiap widget

// import 'dart:io' show Platform;
import 'dart:convert';
import 'dart:developer';
import 'dart:io' ;
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

part 'modules/first_screen.dart';
part 'modules/second_screen.dart';
part 'modules/third_screen.dart';
part 'api_services/request/api_list_user.dart';
part 'api_services/response/users.dart';
part 'global/variable.dart';
