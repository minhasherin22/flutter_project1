
//remove first fromjson and tojson
//also removetojson code from bottom
class NewsMode {
    int? userId;
    int? id;
    String? title;
    String? body;

    NewsMode({
        this.userId,
        this.id,
        this.title,
        this.body,
    });
//also remove factory keyword
//make it as normal constructor
//instead of : this make = this
     NewsMode.fromJson(Map<String, dynamic> json){
        userId= json["userId"];
        id = json["id"];
        title = json["title"];
        body = json["body"];
     }

    
}
