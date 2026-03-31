import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), 
      home: const ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {

          return orientation == Orientation.portrait
              ? _buildPortraitLayout()
              : _buildLandscapeLayout();
        },
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return Column(
      children: [
        _buildHeaderArea(),
        const Divider(color: Colors.white),
        Expanded(child: _buildListArea()),
      ],
    );
  }

  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(flex: 1, child: _buildHeaderArea()),
        const VerticalDivider(color: Colors.white, width: 1),
        Expanded(flex: 1, child: _buildListArea()),
      ],
    );
  }

  Widget _buildHeaderArea() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Cheetah Coding',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('BUTTON 1')),
            const SizedBox(width: 10),
            ElevatedButton(onPressed: () {}, child: const Text('BUTTON 2')),
          ],
        ),
      ],
    );
  }
  
  Widget _buildListArea() {
    List<String> langs = ['Dart', 'JavaScript', 'PHP', 'C++'];
    return ListView.separated(
      itemCount: langs.length,
      separatorBuilder: (context, index) => const Divider(color: Colors.white),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(langs[index], textAlign: TextAlign.center),
        );
      },
    );
  }
}