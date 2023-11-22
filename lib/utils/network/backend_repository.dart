import 'dart:convert';
import '../../constants/endpoints.dart';
import '../../modules/login/model/login_model.dart';
import 'backend_calls.dart';

class BackendRepository {
  Future<String> fetchCampaigns() async {
    try {
      String response = await BackendCall().getRequest(
        endpoint: campaignsEndpoint,
        body: {},
      );
      return response;
    } catch (e) {
      throw Exception('fetch campaigns error');
    }
  }

  Future<String> fetchCampaignDetail({
    required int id,
  }) async {
    try {
      String response = await BackendCall().getRequest(
        endpoint: campaignDetailEndpoint,
        body: {},
        parameters: "campaign_id=$id",
      );
      return response;
    } catch (e) {
      throw Exception('fetch campaign detail error');
    }
  }

  Future<String> postFinalizedCall({
    required Map<String, dynamic> data,
  }) async {
    try {
      String response = await BackendCall().postRequest(
        endpoint: finalizedCallEndpoint,
        body: data,
        tokenRequired: true,
      );
      return response;
    } catch (e) {
      return "";
    }
  }

  Future<String> fetchTasks(String stateName) async {
    try {
      String response = await BackendCall().getRequest(
        endpoint: tasksEndpoint,
        body: {},
        parameters: "type=$stateName",
      );

      return response;
    } catch (e) {
      throw Exception("Error fetching tasks");
    }
  }

  Future<Map> pauseCampaign(
      {required int campaignId, required String status}) async {
    try {
      String response = await BackendCall().postRequest(
        endpoint: pauseCampaignEndpoint,
        body: {
          "campaign_id": campaignId,
          "status": status,
        },
        tokenRequired: true,
      );
      return jsonDecode(response);
    } catch (e) {
      throw ("Error pausing Campaign");
    }
  }

  login(LoginModel user) async {
    try {
      String response = await BackendCall().postRequest(
        endpoint: loginEndpoint,
        body: user.toJson(),
        tokenRequired: false,
      );
      return response;
    } catch (e) {
      throw ("Error Login");
    }
  }

  getDropdownStatus({required String status}) async {
    try {
      String response = await BackendCall().getRequest(
        endpoint: callStatusEndpoint,
        body: {},
        parameters: "type=$status",
      );
      return response;
    } catch (e) {
      throw ("Error pausing Campaign");
    }
  }

  Future<String> getTimeline({required String campaignNoId}) async {
    try {
      String response = await BackendCall().getRequest(
        endpoint: timelineEndpoint,
        body: {},
        parameters: "campaign_number_id=$campaignNoId",
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
