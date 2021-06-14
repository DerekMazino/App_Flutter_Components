import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email  = '';
  String _fecha  = '';
  String _opcionSeleccionada = 'Volar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Text'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(),
          
        ],
      ),
    );
  }

  Widget _crearInput() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Sólo es el nombre',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_circle )
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );

  }


  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon( Icons.email )
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPersona() {

    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_opcionSeleccionada),
    );

  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon( Icons.lock_open ),
        icon: Icon( Icons.lock )
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }
}