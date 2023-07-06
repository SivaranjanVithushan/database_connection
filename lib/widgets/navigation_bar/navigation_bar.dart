import 'package:flutter/material.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: const Row(children: <Widget>[
        Hero(
          tag: 'logo',
          child: SizedBox(
              height: 80,
              width: 150,
              child: Image(image: AssetImage('assets/images/logo.png'))),
        ),
        SizedBox(width: 24),
        Spacer(),
        _NavBarItem('Episodes'),
        _NavBarItem('About'),
        _NavBarItem('Contact'),
        _NavBarItem('Login'),
      ]),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Text(title, style: const TextStyle(fontSize: 18)),
    );
  }
}
