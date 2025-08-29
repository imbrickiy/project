import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Generates a list of cards for the grid view.
  List<Widget> _generateCards(int count) {
    // In a real app, you would fetch data from a service here.
    return List.generate(count, (int index) {
      return _buildCard(
        imageAsset: 'assets/images/first.png',
        // Placeholder image
        title: 'Title ${index + 1}',
        subtitle: 'Secondary Text',
      );
    });
  }

  // Builds a single card widget.
  Widget _buildCard({
    required String imageAsset,
    required String title,
    required String subtitle,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0 / 11.0,
            child: Image.asset(imageAsset, fit: BoxFit.fitWidth),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                Text(subtitle, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Builds the AppBar for the home page.
  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu, semanticLabel: 'menu'),
        onPressed: () {
          print('Menu button');
        },
      ),
      title: const Text('Home'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search, semanticLabel: 'search'),
          onPressed: () {
            print('Search button');
          },
        ),
        IconButton(
          icon: const Icon(Icons.tune, semanticLabel: 'filter'),
          onPressed: () {
            print('Filter button');
          },
        ),
      ],
    );
  }

  // Builds the main body of the home page.
  Widget _buildBody() {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      childAspectRatio: 8.0 / 9.0,
      children: _generateCards(10), // Generate 10 cards for demonstration
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      resizeToAvoidBottomInset: false,
    );
  }
}
