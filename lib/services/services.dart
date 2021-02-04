import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:bwa_foodmarket/models/models.dart';

part 'user_services.dart';
part 'food_services.dart';
part 'transaction_services.dart';

String baseURL = "http://192.168.100.19/bwa-foodmarket-backend/public/api/";