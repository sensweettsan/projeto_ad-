import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String _searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doação'),
        backgroundColor: Colors.green[700],
        centerTitle: true,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Pesquisar',
                  hintStyle: TextStyle(color: Colors.white54),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    _searchValue = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Conteúdo da tela inicial',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Pesquisa: $_searchValue',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
