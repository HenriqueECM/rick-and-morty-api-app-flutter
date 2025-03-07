import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rm_app/models/character.dart';

class Detailscreen extends StatefulWidget {
  final Character character;

  const Detailscreen(this.character, {super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    final character = widget.character;
    return Scaffold(
        appBar: AppBar(
          //  adicionando o appBar, eu não preciso de utilizar navigator pop, pois ja cria automatico
          title: Text(character.name),
          centerTitle: true,
        ),
        body: Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CachedNetworkImage(imageUrl: character.image)],
              ),
              const SizedBox(
                height: 16,
              ),
              // Aqui em vez utilizar Row para cada widget, utilizar column para todos widget
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Id: ${character.id}",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "Status: ${character.status}",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "Location: ${character.locationName}",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "Species: ${character.species}",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "Gender: ${character.gender}",
                  style: const TextStyle(fontSize: 20),
                )
              ]),
            ],
          ),
        ));
  }
}
