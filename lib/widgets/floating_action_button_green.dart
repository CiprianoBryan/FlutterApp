import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>
                                    with AutomaticKeepAliveClientMixin {
  bool isFavorite;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    this.isFavorite = false;
  }

  void onPressedFav() {
    setState(() {
      this.isFavorite = !this.isFavorite;
    });
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: this.isFavorite? Text("Agregaste a Favoritos"):
                                    Text("Quitaste de tus favoritos"),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this.isFavorite? Icons.favorite: Icons.favorite_border,
      ),
    );
  }
}