import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://your-backend-ip:8000"; // Replace with deployed backend URL

  // PCOS Prediction
  static Future<String> predictPCOS(List<double> features) async {
    final response = await http.post(
      Uri.parse("$baseUrl/predict_pcos/"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"features": features}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)["prediction"];
    } else {
      throw Exception("Failed to predict PCOS");
    }
  }

  // Menstrual Cycle Prediction
  static Future<String> predictPeriod(String lastPeriodDate) async {
    final response = await http.post(
      Uri.parse("$baseUrl/predict_period/"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"last_period_date": lastPeriodDate}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)["next_period_date"];
    } else {
      throw Exception("Failed to predict next period");
    }
  }
}
