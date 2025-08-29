import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // TODO: Add text editing controllers (101)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: _buildBody()),
            _buildGetStartedButton(),
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      children: <Widget>[
        const SizedBox(height: 40.0),
        _buildHeader(),
        const SizedBox(height: 40.0),
        _buildInfoTexts(),
      ],
    );
  }

  Widget _buildHeader() {
    return Image.asset('assets/images/first.png', width: double.infinity);
  }

  Widget _buildInfoTexts() {
    const titleStyle = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Colors.orangeAccent,
      fontFamily: 'SpaceGrotesk',
    );

    const subtitleStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.white70,
      fontFamily: 'SpaceGrotesk',
    );

    return Column(
      children: const <Widget>[
        Text('Start Your Music Journey', style: titleStyle),
        SizedBox(height: 16.0),
        Text('Now', style: titleStyle),
        SizedBox(height: 16.0),
        Text(
          'Dive into a world of music tailored just for you. Explore new sounds and rediscover old favorites.',
          textAlign: TextAlign.center,
          style: subtitleStyle,
        ),
      ],
    );
  }

  Widget _buildGetStartedButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.orangeAccent,
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          textStyle: const TextStyle(
            fontSize: 18,
            fontFamily: 'SpaceGrotesk',
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Get Started'),
      ),
    );
  }
}
