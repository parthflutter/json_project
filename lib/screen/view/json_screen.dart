import 'package:flutter/material.dart';
import 'package:json_project/screen/provider/json_provider.dart';
import 'package:provider/provider.dart';

class json extends StatefulWidget {
  const json({Key? key}) : super(key: key);

  @override
  State<json> createState() => _json_State();
}
Post_provider?post_providertrue;
Post_provider?post_providerfalse;
class _json_State extends State<json> {
  @override
  Widget build(BuildContext context) {
    post_providertrue=Provider.of<Post_provider>(context,listen: true);
    post_providerfalse=Provider.of<Post_provider>(context,listen: false);
    return  SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Json Data"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
           post_providerfalse!.jsonPrasing();
          }, child: Text("json Data")),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text("${post_providertrue!.postList[index]['userId']}"),
                subtitle: Text("${post_providertrue!.postList[index]['id']}"),
                trailing: Text("${post_providertrue!.postList[index]['title']}"),
              );
            },
              itemCount: post_providertrue!.postList.length,
            ),
          ),
        ],
      ),

    ),
    );
  }
}
