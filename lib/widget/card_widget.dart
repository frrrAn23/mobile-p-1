// import 'package:flutter/material.dart';
//
//  class CardWidget extends StatelessWidget {
//    final IconData icon;
//    final String judul;
//
//    const CardWidget({super.key, required this.icon, required this.judul});
//
//    @override
//    Widget build(BuildContext context) {
//      return Card(
//        child: ListTile(
//          leading: Icon(icon),
//          title: Text(judul),
//        ),
//      );
//    }
//   }

//style baru
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String judul;
  final IconData icon;
  final bool isLastItem; // Menandakan apakah ini adalah item terakhir
  final VoidCallback? onTap;

  const CardWidget({
    Key? key,
    required this.judul,
    required this.icon,
    this.isLastItem = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Menambahkan padding khusus jika item terakhir
    EdgeInsets padding = isLastItem
        ? const EdgeInsets.fromLTRB( 20, 16, 16, 32) // Padding lebih untuk item terakhir
        : const EdgeInsets.all(0);

    return Padding(
      padding: padding,
      child: Card(
        elevation: 4,
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            judul,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: onTap ?? () {
            // Action ketika card diklik
            print("$judul diklik");
          },
        ),
      ),
    );
  }
}