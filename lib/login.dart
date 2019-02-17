import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  final _formKey =GlobalKey<FormState>();
  final _scffoldKey = GlobalKey<ScaffoldState>();
  
  String _userEmail, _userPass;
  
  Widget build(BuildContext context){
    
    //Logo image
    var logoImage = new Image.asset(
      'resource/redvelvet.png',
      height: 200,
    );

    //Field for input uesername or email
    TextFormField userEmailField = new TextFormField(
      decoration: InputDecoration(
        hintText: 'User ID',
        icon: Icon(Icons.person),
      ),
      onSaved: (val) => _userEmail = val,
    );

    //Field for input password
    TextFormField userPassword = new TextFormField(
      decoration: InputDecoration(
        hintText: 'Password',
        icon: Icon(Icons.lock),
      ),
      obscureText: true,
      onSaved: (val) => _userPass = val,
    );

    //function for validation input
    void _ValidateInput(){
      if(_userEmail == 'admin' && _userPass == 'admin'){
        Navigator.pushNamed(context, '/home');
      }
      else if(_userEmail == '' || _userPass == ''){
        _scffoldKey.currentState.showSnackBar(
          SnackBar(
            content: new Text('กรุณาระบุ user or password',),
          )
        );
      }
      else{
        _scffoldKey.currentState.showSnackBar(
          SnackBar(
            content: new Text('user or password ไม่ถูกต้อง'),
          )
        );
      }
    }

    //Login button
    RaisedButton loginButton = new RaisedButton(
      child: new Text('LOGIN'),
      color: Colors.red,
      textColor: Colors.white,
      onPressed: _ValidateInput,
    );

    //Register button
    FlatButton registerButton = new FlatButton(
        child: SizedBox(
          child: new Text(
            'Register New Account',
            textAlign: TextAlign.right,
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        onPressed: (){
          Navigator.pushNamed(context, '/register');
        },
    );
    Container con = new Container(
        alignment: Alignment.centerRight,
        child: registerButton,
    );

    return Scaffold(
      key: _scffoldKey,
      body: Form(
        key: _formKey,
        child: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 75.0, vertical: 150.0),
            children: <Widget>[
              logoImage,
              userEmailField,
              userPassword,
              loginButton,
              con,
            ],
          ),
        ),
      ),
    );
  }
}   