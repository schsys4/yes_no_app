import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('hola mundo', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),

        _ImageBubble(),

        const SizedBox( height: 10,)
        //imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://media.tenor.com/ltJ2inZ172cAAAAM/yes-no.gif',
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: 7,
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text("Escribiendo meensaje"),
          );
        },
      )
      
    );
  }
}

