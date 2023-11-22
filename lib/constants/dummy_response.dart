String dummyCampainlistApi =
    '{"campaign":[{"id":1,"title":"Deadpool: Digital DVD Release Release Release","status":"ongoing","completed":14,"total":24},{"id":2,"title":"State Bicycle Co: 12 Days of State","status":"onhold","completed":22,"total":50},{"title":"Disney: InstaGaston","status":"new","completed":0,"total":24},{"title":"McDonalds:I am Lovin It Super Bowl Campaingn","status":"closed","completed":1,"total":10},{"title":"Deadpool: Digital DVD Release","status":"ongoing","completed":14,"total":24}]}';
String dummyCamapainDetail =
    '{"id":1,"name":"Munib","number":"0123","note":"This is a note for customer detail page"}';

var dummyAllTasks =
    '{"task": [{"title": "Deadpool: Digital DVD Release Campaign","subTitle": "Book Meeting","dateTime": "August 18, 2022 - 07:30 PM","taskState": "overDue","hasOpened": "false","customerId": 1,    "name": "Munib","number": "0123","note": "This is a note for customer detail page ","timeline": [{"callMode": "August 22, 2022 - 05:00 PM","callOutCome": "Answered","leadStatus": "Qualified","agentNotes": "Book a meeting later when his meeting is done his meeting is done his meeting is done ","taskCreated": "August 22, 2022 - 05:01 PM","description": "Book meeting"},{"callMode": "","callOutCome": "","leadStatus": "","agentNotes": "","taskCreated": "","description": ""}]},{"title": "McDonalds: I’m Lovin It Super Bowl Campaign","subTitle": "Book Meeting","dateTime": "August 18, 2022 - 07:30 PM","taskState": "overDue","hasOpened": "true"},{"title": "Urban Decay: Electric Launch and Coachella","subTitle": "Book Meeting","dateTime": "August 22, 2022 - 05:00 PM","taskState": "upcoming","hasOpened": "false"},{"title": "Airbnb: We Are Here Campaign","subTitle": "Book Meeting","dateTime": "August 26, 2022 - 11:00 AM","taskState": "newTask","hasOpened": "true"},{"title": "State Bicycle Co: 12 Days of State","subTitle": "Book Meeting","dateTime": "August 26, 2022 - 11:00 AM","taskState": "newTask","hasOpened": "true"}]}';
var dummyOverdueTasks =
    '{"task":[{"title": "Deadpool: Digital DVD Release Campaign","subTitle": "Book Meeting","dateTime": "August 18, 2022 - 07:30 PM","taskState": "overDue","hasOpened": "false","customerId": 1,      "name": "Munib",      "number": "0123",    "note": "This is a note for customer detail page","timeline": [        {          "callMode": "August 22, 2022 - 05:00 PM",          "callOutCome": "Answered",          "leadStatus": "Qualified",          "agentNotes": "Book a meeting later when his meeting is done",          "taskCreated": "August 22, 2022 - 05:01 PM",          "description": "Book meeting"        },        {          "callMode": "",          "callOutCome": "",          "leadStatus": "",          "agentNotes": "",          "taskCreated": "",          "description": ""        }      ]},{"title": "McDonalds: I’m Lovin It Super Bowl Campaign","subTitle": "Book Meeting","dateTime": "August 18, 2022 - 07:30 PM","taskState": "overDue","hasOpened": "true"}]}';
var dummyNewTask =
    '{"task":[{"title": "Airbnb: We Are Here Campaign","subTitle": "Book Meeting","dateTime": "August 26, 2022 - 11:00 AM","taskState": "newTask","hasOpened": "true"},{"title": "State Bicycle Co: 12 Days of State","subTitle": "Book Meeting","dateTime": "August 26, 2022 - 11:00 AM","taskState": "newTask","hasOpened": "true"}]}';
var dummyUpcomingTasks =
    '{    "task": [{"id": 1,"title": "Deadpool: Digital DVD Release Campaign","subTitle": "Book Meeting","dateTime": "August 18, 2022 - 07:30 PM","taskState": "upcoming","hasOpened": "false","customerId": 1,"name": "Munib","number": "0123","note": "This is a note for customer detail page","timeline": [{"callMode": "August 22, 2022 - 05:00 PM","callOutCome": "Answered","leadStatus": "Qualified","agentNotes": "Book a meeting later when his meeting is done","taskCreated": "August 22, 2022 - 05:01 PM","description": "Book meeting"},{"callMode": "","callOutCome": "","leadStatus": "","agentNotes": "","taskCreated": "","description": ""}]}]}';

var dummyPause = '{"pause":"true"}';

final dummyApiMap = {
  "campaign_list": dummyCampainlistApi,
  "campaign_details": dummyCamapainDetail,
  "all": dummyAllTasks,
  "newTask": dummyNewTask,
  "upcoming": dummyUpcomingTasks,
  "overDue": dummyOverdueTasks,
  "pause": dummyPause,
};
