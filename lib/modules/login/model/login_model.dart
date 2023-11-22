class LoginModel {
  String? username;
  String? password;
  int? agentSeatId;
  int? companyId;
  String? token;

  LoginModel({this.username, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    agentSeatId = json['agent_seat_id'];
    companyId = json['company_id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}
