import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const CustomCard({

    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }
  );
  @override
  Widget build(BuildContext context) {
   
   return Card(
    child: ListTile(
      leading: Icon(icon,size: 32,),
      title: Text(
        title,
        style: const TextStyle( fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon ( Icons.arrow_forward_ios),
    ),
   );
  }
}