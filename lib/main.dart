import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Avtorization(),
    );
  }
}

class Avtorization extends StatelessWidget {
  const Avtorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Авторизация'),
            backgroundColor: Color(0xFFC6B1FF)
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 16.0, top: 8.0) ,
            color: const Color(0xFFE2BAE8),
            child: Row(
                children: [
                  Expanded(flex: 2, child: Container()),
                  Expanded(
                    flex: 6, child: Center(
                    child: Column(
                        children: [

                          Expanded(
                            flex: 4,
                            child:
                          ListView(
                            children: [

                          const Align(
                            alignment: Alignment.topLeft,
                            child: const Text('Логин:',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          TextField(),
                          Text(''),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: const Text('Пароль:',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          TextField(
                            obscureText: true,
                          ),
                          Text(''),
                          Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFC6B1FF),
                                    onPrimary: Colors.black87,
                                  ),
                                  child: const Text('Войти'),
                                  onPressed: (){}
                              )
                          ),
                            ],
                          ),
                          ),

                          //
                          Expanded(flex: 1, child:

                          Container(
                            child:
                          Align(
                            alignment: Alignment.bottomCenter,
                            child:
                            TextButton(
                              child: const Text('Нет аккаунта? Зарегистрируйтесь.'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Registration()),
                                );
                              },
                            ),

                          ),
),
                          ),

                        ]
                    ),
                  ),
                  ),
                  Expanded(flex: 2, child: Container())
                ]
            )
        )
    );
  }
}

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Регистрация'),
            backgroundColor: Color(0xFFC6B1FF)
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 16.0, top: 8.0) ,
            color: const Color(0xFFE2BAE8),
            child: Row(
                children: [
                  Expanded(flex: 2, child: Container()),
                  Expanded(
                    flex: 6, child: Center(
                    child: Column(
                        children: [

                          Expanded(
                              flex: 8,
                              child: ListView(
                                children: [

                          const Align(
                            alignment: Alignment.topLeft,
                            child: const Text('Имя пользователя:',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          TextField(),
                          Text(''),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: const Text('Почта:',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          TextField(),
                          Text(''),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: const Text('Пароль:',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Должно быть не менее 8 символов',
                            ),
                          ),
                          Text(''),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: const Text('Повторите пароль:',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Должно быть не менее 8 символов',
                            ),
                          ),
                          Text(''),
                          Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFC6B1FF),
                                    onPrimary: Colors.black87,
                                  ),
                                  child: const Text('Зарегистрироваться'),
                                  onPressed: (){}
                              ),
                          ),
                                ],
                              ),
                          ),

                          Expanded(flex: 1, child: Container(
                            child:
                          Align(
                            alignment: Alignment.bottomCenter,
                            child:
                            TextButton(
                              child: const Text('Авторизация.'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),

                          ),
                  )),
                        ]
                    ),
                  ),
                  ),
                  Expanded(flex: 2, child: Container())
                ]
            )
        )
    );
  }
}