import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = 'http://your-backend-ip:8000'; // Update with actual FastAPI server URL

  /// Predicts PCOS based on feature values
  static Future<String> predictPCOS(List<double> featureValues) async {
    final url = Uri.parse('$baseUrl/predict_pcos');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"feature_values": featureValues}),
      );

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return "✅ PCOS Prediction: ${result['pcos_prediction']}";
      } else {
        return "⚠️ Error: ${response.body}";
      }
    } catch (e) {
      return "❌ Failed to connect to backend: $e";
    }
  }

  /// Predicts the next menstrual cycle date
  static Future<String> predictMenstrualCycle(
      double meanCycleLength, double cycleLength) async {
    final url = Uri.parse('$baseUrl/predict_menstrual_cycle');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "mean_cycle_length": meanCycleLength,
          "length_of_cycle": cycleLength,
        }),
      );

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return "✅ Predicted Next Period: ${result['predicted_next_period']}";
      } else {
        return "⚠️ Error: ${response.body}";
      }
    } catch (e) {
      return "❌ Failed to connect to backend: $e";
    }
  }
}
