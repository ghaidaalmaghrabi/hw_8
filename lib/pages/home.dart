import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = const FirstPage();
    } else {
      body = const SecondPage();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
      ),
      body: body,
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xffDF9547),
                          size: 40,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Todoist Pro',
                              style: TextStyle(fontSize: 26),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Until Jul 8 2022',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 128,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SecondCard(),
              const ThirdCard(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              'Siri',
                              style: TextStyle(fontSize: 26),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondCard extends StatelessWidget {
  const SecondCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.account_circle,
                    color: Color(0xffC05345),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
              const Divider(
                height: 32,
                color: Color(0xffF9F9F9),
                thickness: 2,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.settings,
                    color: Color(0xffC05345),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'General',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
              const Divider(
                height: 32,
                color: Color(0xffF9F9F9),
                thickness: 2,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.palette,
                    color: Color(0xffC05345),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Theme',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
              const Divider(
                height: 32,
                color: Color(0xffF9F9F9),
                thickness: 2,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.crop_square,
                    color: Color(0xffC05345),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'App Icon',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
              const Divider(
                height: 32,
                color: Color(0xffF9F9F9),
                thickness: 2,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.keyboard_double_arrow_up,
                    color: Color(0xffC05345),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Productivity',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        backgroundColor: const Color(0xffC04F41),
        title: const Text(
          'Today',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: const Color(0xffC04F41),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ThirdCard extends StatelessWidget {
  const ThirdCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.alarm,
                    color: Color(0xffC05345),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Reminders',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
              const Divider(
                height: 32,
                color: Color(0xffF9F9F9),
                thickness: 2,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.notifications,
                    color: Color(0xffC05345),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Notification',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
