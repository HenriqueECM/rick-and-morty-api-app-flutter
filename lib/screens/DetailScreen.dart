import 'package:flutter/material.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: ()  { // proxima aula arrumar tamanho do botao
               Navigator.pop(context);
              },
              child: Text('<- Voltar para a página 2'),
            );
  }
}