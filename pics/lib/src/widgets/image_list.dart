import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  const ImageList({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
          return Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Image.network(images[index].url)),
              Text(images[index].title)
            ]),
          );
        });
  }
}
