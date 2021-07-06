import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  const AddPost({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add post"),
      ),
      body: AddPostForm(),
    );
  }
}
class AddPostForm extends StatefulWidget {
  @override
  MyPostFormState createState() {
    return MyPostFormState();
  }
}

class MyPostFormState extends State<AddPostForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 70,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: TextField(
            style: TextStyle(
              color: Colors.red[300],
              fontSize: 25,
              height: 1.2,
            ),
            decoration: InputDecoration(
              hintText: 'Add Your Post Here..',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          height: 30,),
        Container(
          alignment: FractionalOffset.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text("POST", textAlign: TextAlign.center, style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold ), ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Text("DISCARD",textAlign: TextAlign.center, style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold ), ),
                    ),
                  ),
                ],
              ),
        ),
        
      ],
    );
  }
}
