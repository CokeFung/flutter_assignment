import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return new RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {

  final _formKey =GlobalKey<FormState>();
  final _scffoldKey = GlobalKey<ScaffoldState>();
  
  String _regisEmail, _regisPass, _confirmPass;
  
  Widget build(BuildContext context){
    
    //Field for input uesername or email
    TextFormField regisEmailField = new TextFormField(
      decoration: InputDecoration(
        hintText: 'User ID',
        icon: Icon(Icons.person),
      ),
      onSaved: (val) => _regisEmail = val,
    );

    //Field for input password
    TextFormField regisPassword = new TextFormField(
      decoration: InputDecoration(
        hintText: 'Password',
        icon: Icon(Icons.lock),
      ),
      obscureText: true,
      onSaved: (val) => _regisPass = val,
    );

    //Field for input confirm password
    TextFormField confirmPassword = new TextFormField(
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        icon: Icon(Icons.lock),
      ),
      obscureText: true,
      onSaved: (val) => _confirmPass = val,
    );

    //function for validation input
    void _ValidateInput(){
      if(_regisEmail == 'admin'){
        _scffoldKey.currentState.showSnackBar(
          SnackBar(
            content: new Text('user นี้มีอยู่ในระบบแล้ว',),
          )
        );
      }
      else if(_regisEmail == '' || _regisPass == '' || _confirmPass == ''){
        _scffoldKey.currentState.showSnackBar(
          SnackBar(
            content: new Text('กรุณาระบุข้อมูลให้ครบถ้วน',),
          )
        );
      }
      else{
        Navigator.pushNamed(context, '/login');
      }
    }

    //Login button
    RaisedButton regisButton = new RaisedButton(
      child: new Text('CONTINUE'),
      color: Colors.red,
      textColor: Colors.white,
      onPressed: _ValidateInput,
    );

    return Scaffold(
      key: _scffoldKey,
      body: Form(
        key: _formKey,
        child: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 75.0, vertical: 150.0),
            children: <Widget>[
              regisEmailField,
              regisPassword,
              confirmPassword,
              regisButton,
            ],
          ),
        ),
      ),
    );
  }
}   