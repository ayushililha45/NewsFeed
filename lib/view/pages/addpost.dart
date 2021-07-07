import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

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
  String _myActivity;
  String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }
  @override
  Widget build(BuildContext context) {
    var _controller;
        return Column(
          children: <Widget>[
    
            Container(
              //height:120,
                    width: 280,
                    padding: EdgeInsets.all(10.0),
                    child: DropDownFormField(
                      titleText: 'SELECT POST TYPE*',
                      hintText: 'Image',
                      value: _myActivity,
                      onSaved: (value) {
                        setState(() {
                          _myActivity = value;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          _myActivity = value;
                        });
                      },
                      dataSource: [
                        {
                          "display": "Image",
                          "value": "Image",
                        },
                        {
                          "display": "Video",
                          "value": "Video",
                        },
                        
                      ],
                      textField: 'display',
                      valueField: 'value',
                    ),
                  ),
            /*Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  //controller: name,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'SELECT POST TYPE*'),
                )),*/
            Container(
                width: 280,
                 height: 150,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  //controller: name,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'TITLE*'),
                )),
          Container(
              width: 280,
             
              padding: EdgeInsets.all(10.0),
              child: TextField(
                //controller: studentClass,
                autocorrect: true,
                decoration: InputDecoration(hintText: 'DESCRIPTION'),
              )),
    
    
          /*Container(
            alignment: FractionalOffset.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  TextField(
                  //controller: phoneNumber,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'ATTACH FILE*'),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      "Browse",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        //border : stadiumBorder();
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),*/
    
    
    
    
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              
              //controller: phoneNumber,
              autocorrect: true,
              decoration: InputDecoration(hintText: 'ATTACH FILE*',
              suffixIcon: IconButton(
                onPressed: () => _controller.clear(),
            icon: Icon(Icons.attach_file),
          ),
    ),
        ),
      ),
      Container(
          width: 280,
          padding: EdgeInsets.all(10.0),
          child: TextField(
            //controller: phoneNumber,
            autocorrect: true,
            decoration: InputDecoration(hintText: 'IMAGE LINK*'),
          )),
      SizedBox(
        height: 30,
      ),
      Container(
        alignment: FractionalOffset.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(
                  "POST",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(
                  "DISCARD",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      ],
    );
  }
}
