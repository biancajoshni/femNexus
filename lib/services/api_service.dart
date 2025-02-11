import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://your-backend-ip:8000"; // Replace with deployed backend URL

  // PCOS Prediction
  static Future<String> predictPCOS(List<double> features) async {
    try {
      final response = await http
          .post(
            Uri.parse("$baseUrl/predict_pcos/"),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({"features": features}),
          )
          .timeout(const Duration(seconds: 10)); // Timeout added

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData.containsKey("prediction")) {
          return responseData["prediction"];
        } else {
          throw Exception("Unexpected response format: ${response.body}");
        }
      } else {
        throw Exception("Failed to predict PCOS: ${response.reasonPhrase}");
      }
    } catch (e) {
      throw Exception("Error in predictPCOS: $e");
    }
  }

  // Menstrual Cycle Prediction
  static Future<String> predictPeriod(String lastPeriodDate) async {
    try {
      final response = await http
          .post(
            Uri.parse("$baseUrl/predict_period/"),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({"last_period_date": lastPeriodDate}),
          )
          .timeout(const Duration(seconds: 10)); // Timeout added

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData.containsKey("next_period_date")) {
          return responseData["next_period_date"];
        } else {
          throw Exception("Unexpected response format: ${response.body}");
        }
      } else {
        throw Exception("Failed to predict next period: ${response.reasonPhrase}");
      }
    } catch (e) {
      throw Exception("Error in predictPeriod: $e");
    }
  }
}
