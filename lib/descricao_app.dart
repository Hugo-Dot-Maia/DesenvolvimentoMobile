import 'package:flutter/material.dart';
import 'dart:ui';

class Descricao extends StatelessWidget {
  const Descricao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Games"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/controller.png')
                )
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
                "Projeto de LDDM",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 30,
                  ),
            ),
          ),
          Column(
              children: const <Widget>[
                Text("Feito por alunos do quarto período de Engenharia de Computação PUC Minas:"
                    " Hugo Maia, Izabela Galinari, Raphael Lulli e Philipi Carvalho,"
                    " este app tem o intuito de ser uma biblioteca de informações sobre os jogos de video games já lançados,"
                    " trazendo informações sobre o estilo dos jogos, desenvolvedora, imagens e muito mais."
                    " Assim o usuário terá uma fonte confiável para conferir as informações do produto que deseja comprar, tudo isso usando a api:"
                    " https://api-docs.igdb.com/#game"),
              ]
          ),

        ],
      ),
    );
  }
}
