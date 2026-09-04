import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();
  //قائمة المدخلات
  String operation = "0";
  String total = "0";
  @override
  Widget build(BuildContext context) {
    double sizeHeigh = MediaQuery.of(context).size.height;
    return MaterialApp(
      scaffoldMessengerKey: messengerKey,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(220, 255, 255, 255),
        appBar: AppBar(
          title: Text(
            "Easy Beasy",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          backgroundColor: const Color.fromARGB(255, 104, 144, 163),
        ),
        body: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Text(total, style: TextStyle(fontSize: 35)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: sizeHeigh / 2,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1.3,
                ),
                reverse: true,
                children: [
                  BoxNumber(
                    non: Text(
                      "%",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation += "/100";
                          total += "%";
                        } else {
                          if (operation.endsWith(".") ||
                              operation.endsWith("+") ||
                              operation.endsWith("-") ||
                              operation.endsWith("/") ||
                              operation.endsWith("*")) {
                            messengerKey.currentState?.showSnackBar(
                              SnackBar(
                                content: const Text(
                                  "غير صحيح",
                                  textAlign: TextAlign.center,
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                width: 120,
                                duration: const Duration(seconds: 1),
                              ),
                            );
                          } else {
                            operation += "/100";
                            total += "%";
                          }
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "0",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "0";
                          total = "0";
                        } else {
                          operation += "0";
                          total += "0";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      ".",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "0.";
                          total = "0.";
                        } else {
                          if (operation.endsWith(".") ||
                              operation.endsWith("+") ||
                              operation.endsWith("-") ||
                              operation.endsWith("/") ||
                              operation.endsWith("*")) {
                            messengerKey.currentState?.showSnackBar(
                              SnackBar(
                                content: const Text(
                                  "غير صحيح",
                                  textAlign: TextAlign.center,
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                width: 120,
                                duration: const Duration(seconds: 1),
                              ),
                            );
                          } else {
                            operation += ".";
                            total += ".";
                          }
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Icon(
                      Icons.favorite,
                      color: const Color.fromARGB(255, 98, 241, 252),
                      size: 26,
                      shadows: [
                        Shadow(
                          color: Colors.black.withValues(alpha: 0.4),
                          offset: Offset(2, 4),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      messengerKey.currentState?.showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              const Text(
                                "I love you",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Color.fromARGB(255, 255, 253, 253),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.favorite,
                                size: 26,
                                color: Colors.pinkAccent,
                              ),
                            ],
                          ),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                          width: 165,
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "1",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "1";
                          total = "1";
                        } else {
                          operation += "1";
                          total += "1";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "2",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "2";
                          total = "2";
                        } else {
                          operation += "2";
                          total += "2";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "3",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "3";
                          total = "3";
                        } else {
                          operation += "3";
                          total += "3";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "=",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        ////////////////////////////جزء مميز هنا
                        //هنا أنشأنا(p)،
                        //وهو المسؤول عن تحليل العملية الحسابية.
                        ExpressionParser p = GrammarParser();
                        //parse() يأخذ النص:
                        //ويحوّله إلى تعبير تفهمه المكتبة.

                        //أنشأنا أداة مسؤولة عن تنفيذ وحساب التعبير.
                        var evaluator = RealEvaluator(ContextModel());
                        //هنا يتم الحساب فعليًا.
                        try {
                          Expression exp = p.parse(operation);
                          num result = evaluator.evaluate(exp);
                          if (result.isNaN || result.isInfinite) {
                            total = "0";
                            operation = "0";

                            messengerKey.currentState?.showSnackBar(
                              SnackBar(
                                content: const Text(
                                  "عملية غير صحيحة",
                                  textAlign: TextAlign.center,
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                width: 120,
                                duration: const Duration(seconds: 1),
                              ),
                            );
                          } else if (result % 1 == 0) {
                            operation = result.toInt().toString();
                            total = operation;
                          } else {
                            operation = result.toString();
                            total = operation.toString();
                          }
                        } catch (e) {
                          messengerKey.currentState?.showSnackBar(
                            SnackBar(
                              content: const Text(
                                "قيمة غير صحيحة",
                                textAlign: TextAlign.center,
                              ),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                              width: 160,
                              duration: const Duration(seconds: 1),
                            ),
                          );
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "4",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "4";
                          total = "4";
                        } else {
                          operation += "4";
                          total += "4";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "5",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "5";
                          total = "5";
                        } else {
                          operation += "5";
                          total += "5";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "6",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "6";
                          total = "6";
                        } else {
                          operation += "6";
                          total += "6";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "+",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation += "+";
                            total += "+";
                        } else {
                          if (operation.endsWith(".") ||
                              operation.endsWith("+") ||
                              operation.endsWith("-") ||
                              operation.endsWith("/") ||
                              operation.endsWith("*")) {
                            messengerKey.currentState?.showSnackBar(
                              SnackBar(
                                content: const Text(
                                  "غير صحيح",
                                  textAlign: TextAlign.center,
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                width: 120,
                                duration: const Duration(seconds: 1),
                              ),
                            );
                          } else {
                            operation += "+";
                            total += "+";
                          }
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "7",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "7";
                          total = "7";
                        } else {
                          operation += "7";
                          total += "7";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "8",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "8";
                          total = "8";
                        } else {
                          operation += "8";
                          total += "8";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "9",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "9";
                          total = "9";
                        } else {
                          operation += "9";
                          total += "9";
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Icon(Icons.remove, color: Colors.white, size: 26),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation = "-";
                          total = "-";
                        } else {
                          if (operation.endsWith(".") ||
                              operation.endsWith("+") ||
                              operation.endsWith("-") ||
                              operation.endsWith("/") ||
                              operation.endsWith("*")) {
                            messengerKey.currentState?.showSnackBar(
                              SnackBar(
                                content: const Text(
                                  "غير صحيح",
                                  textAlign: TextAlign.center,
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                width: 120,
                                duration: const Duration(seconds: 1),
                              ),
                            );
                          } else {
                            operation += "-";
                            total += "-";
                          }
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "c",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        operation = "0";
                        total = "0";
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "÷",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation += "/";
                          total += "÷";
                        } else {
                          if (operation.endsWith(".") ||
                              operation.endsWith("+") ||
                              operation.endsWith("-") ||
                              operation.endsWith("/") ||
                              operation.endsWith("*")) {
                            messengerKey.currentState?.showSnackBar(
                              SnackBar(
                                content: const Text(
                                  "غير صحيح",
                                  textAlign: TextAlign.center,
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                width: 120,
                                duration: const Duration(seconds: 1),
                              ),
                            );
                          } else {
                            operation += "/";
                            total += "÷";
                          }
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Text(
                      "×",
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (operation == "0") {
                          operation += "*";
                          total += "×";
                        } else {
                          if (operation.endsWith(".") ||
                              operation.endsWith("+") ||
                              operation.endsWith("-") ||
                              operation.endsWith("/") ||
                              operation.endsWith("*")) {
                            messengerKey.currentState?.showSnackBar(
                              SnackBar(
                                content: const Text(
                                  "غير صحيح",
                                  textAlign: TextAlign.center,
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),

                                width: 120,
                                duration: const Duration(seconds: 1),
                              ),
                            );
                          } else {
                            operation += "*";
                            total += "×";
                          }
                        }
                      });
                    },
                  ),
                  BoxNumber(
                    non: Icon(
                      Icons.backspace_outlined,
                      color: Colors.white,
                      size: 26,
                    ),
                    color: const Color.fromARGB(255, 104, 144, 163),
                    colorText: Colors.white,
                    onTap: () {
                      setState(() {
                        if (total.endsWith("%")) {
                          operation = operation.substring(
                            0,
                            operation.length - 4,
                          );
                          total = total.substring(0, total.length - 1);
                        } else if (operation.isNotEmpty) {
                          operation = operation.substring(
                            0,
                            operation.length - 1,
                          );
                          total = total.substring(0, total.length - 1);
                        }
                        if (operation.isEmpty) {
                          operation = "0";
                          total = "0";
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BoxNumber extends StatelessWidget {
  const BoxNumber({
    super.key,
    required this.non,
    required this.color,
    required this.colorText,
    required this.onTap,
  });

  final Widget non;
  final Color color;
  final Color colorText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: InkWell(
        splashColor: const Color.fromARGB(
          158,
          255,
          255,
          255,
        ).withValues(alpha: 0.12),

        onTap: onTap,
        child: Center(child: non),
      ),
    );
  }
}
