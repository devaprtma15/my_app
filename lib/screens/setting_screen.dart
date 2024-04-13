// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/components/asset_image_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _count = 0;
  final String imageUrl = 'https://picsum.photos/250?image=9';

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  String _cekGenap() {
    if (_count % 2 == 0) {
      return 'Genap';
    } else {
      return 'Ganjil';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Column(
            children: [
              AssetImageWidget(
                  imagePath: 'assets/images/profil.png',
                  width: 300,
                  height: 250,
                  fit: BoxFit.cover),
            ],
          ),
          const Divider(),
          const Row(
            children: [Text('Putu Deva Pratama Artha ')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ignore: prefer_const_constructors,
              IconButton(
                  onPressed: _increment, icon: const Icon(Icons.thumb_up)),
              IconButton(
                  onPressed: _decrement, icon: const Icon(Icons.thumb_down)),
              Text(
                'Likes $_count',
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}