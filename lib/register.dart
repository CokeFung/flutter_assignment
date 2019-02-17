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
  
  String _registerEmail, _regisPass, _confirmPass;
  
  Widget build(BuildContext context){
    
    //Field for input uesername or email
    TextFormField regisEmailField = new TextFormField(
      decoration: InputDecoration(
        hintText: 'User ID',
        icon: Icon(Icons.person),
      ),
      onSaved: (v) => _registerEmail = v,
    );

    //Field for input password
    TextFormField regisPassword = new TextFormField(
      decoration: InputDecoration(
        hintText: 'Password',
        icon: Icon(Icons.lock),
      ),
      obscureText: true,
      onSaved: (v) => _regisPass = v,
    );

    //Field for input confirm password
    TextFormField confirmPassword = new TextFormField(
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        icon: Icon(Icons.lock),
      ),
      obscureText: true,
      onSaved: (v) => _confirmPass = v,
    );

    //function for validation input
    void _ValidateInput(){
      //print(_registerEmail);
      //print(_regisPass);
      //print(_confirmPass);
      if(_registerEmail == 'admin'){
        _scffoldKey.currentState.showSnackBar(
          SnackBar(
            content: new Text('user นี้มีอยู่ในระบบแล้ว',),
          )
        );
      }
      else if(_registerEmail == null || _regisPass == null || _confirmPass == null){
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