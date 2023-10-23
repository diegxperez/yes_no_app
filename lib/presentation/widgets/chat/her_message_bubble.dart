import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    // Busca el tema dentro del contexto
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Consequat officia incididunt excepteur ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),

        _ImageBubble(),

        const SizedBox(
          height: 10,
        )

        //todo: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
            'https://yesno.wtf/assets/no/4-122be48db47678331dbef3dd6ac6ff56.gif',
            width: size.width * 0.7,
            height: 150,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if( loadingProgress == null) return child;

              return Container(
                width: size.width * 0.7,
                height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: const Text('Data enviando mensaje'),
              );
            },
            ));
  }
}
