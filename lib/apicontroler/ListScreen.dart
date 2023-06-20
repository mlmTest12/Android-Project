import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter - Retrofit Implementation"),
      ),
    //  body: _buildBody(context),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
        },
        label:Icon(Icons.cancel),
        backgroundColor: Colors.green,
      ),
    );
  }

  // build list view & manage states
  /*FutureBuilder<ResponseData> _buildBody(BuildContext context) {
    final client = RestClient(Dio
      (BaseOptions(contentType: "application/json")));
    return FutureBuilder<ResponseData>(
      future: client.getUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final ResponseData? posts = snapshot.data;
          return _buildListView(context, posts!);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }*/

  // build list view & its tile
 /* Widget _buildListView(BuildContext context, ResponseData posts) {
    return
      ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: Icon(Icons.account_box,color: Colors.green,size: 50,),
            title: Text(posts.data[index]['name'],style: TextStyle(fontSize: 20),),
            subtitle: Text(posts.data[index]['email']),
          ),
        );
      },itemCount: posts.data.length,
      );
  }*/

}
