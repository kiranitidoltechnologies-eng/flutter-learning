// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: .fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: .center,
//           children: [
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// StatelessWidget code

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: 'Flutter Demo',
//     home: WelcomeScreen(),
//   ));
// }


// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Stateless Widget"),
//       ),
//       body: const Center(
//         child: Text(
//           "Welcome to Flutter",
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }


// StatefulWidget code


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: 'Flutter Demo',
//     debugShowCheckedModeBanner: false,
//     home: CounterStateScreen(),
//   ));
// }

// class CounterStateScreen extends StatefulWidget {
//   const CounterStateScreen({super.key});

//   State<CounterStateScreen> createState() => _CounterStateScreenState();
// }

// class _CounterStateScreenState extends State<CounterStateScreen> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build called");

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Counterds Stateful Widget"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Button pressed',
//               style: TextStyle(fontSize: 24),
//             ),
//             Text(
//               '$_counter',
//               style: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }


// UI basics

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: LayoutDemo(),
//     ),
//   );
// }

// class LayoutDemo extends StatelessWidget {
//   const LayoutDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Core Layout Widgets"),
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(25),

//         child: Column(
//           children: [
//             Container(
//               height: 80,
//               color: Colors.blue,
//               child: const Center(
//                 child: Text(
//                   "Container",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 20),

//             Row(
//               mainAxisAlignment:
//                   MainAxisAlignment.spaceEvenly,

//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 80,
//                     color: Colors.red,
//                   ),
//                 ),

//                 const SizedBox(width: 10),

//                 Expanded(
//                   child: Container(
//                     height: 80,
//                     color: Colors.green,
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 20),

//             Stack(
//               children: [
//                 Container(
//                   height: 150,
//                   width: 150,
//                   color: Colors.orange,
//                 ),

//                 const Positioned(
//                   top: 10,
//                   right: 10,
//                   child: Icon(Icons.star),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
  

// Textfileds login form

import 'package:flutter/material.dart';
import 'package:my_first_app/home_screen.dart';
import 'package:my_first_app/text_const.dart';

void main() {
  runApp(
    const MaterialApp(
      home: LoginForm(),
    ),
  );
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConst.loginForm),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text(
              TextConst.loginForm,
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: TextConst.email,
              ),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: TextConst.password,
              ),
            ),
            // const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(80),
              child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              child: const Text(TextConst.login),
            ),
            )
          ],

        ),
      ),
    );
  }
}