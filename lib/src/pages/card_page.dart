import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 10,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10,
          ),
          _cardTipo1(),
          SizedBox(
            height: 10,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10,
          ),
          _cardTipo1(),
          SizedBox(
            height: 10,
          ),
          _cardTipo2(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aquí andamos razaaa, la descripción de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
                'https://media.sproutsocial.com/uploads/landscape-hero-bg-1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child:
                Text('No tengo idea de que poner pero aquí hay una imagen xd'),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}
