import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  //SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            Expanded(
              child: _crearImagen()
            ), 
          ],
        ),
      ),
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: '$_valorSlider',
      divisions: 20,
      onChanged:(_bloquearCheck) ? null : (valor){//Operador Ternario
        setState(() {
          _valorSlider = valor;
        });
      },
      value: _valorSlider,
      min: 10,
      max: 300,
    );
  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('https://images.pexels.com/photos/325185/pexels-photo-325185.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );

  }

  Widget _crearCheckBox() {
    /* return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor){
        
        setState(() {
          _bloquearCheck = valor!;
        });
      }
    ); */
    return CheckboxListTile(
      title: Text('BloquearSlider'),
      value: _bloquearCheck,
      onChanged: (valor){
        
        setState(() {
          _bloquearCheck = valor!;
        });
      }
    );
  }

}