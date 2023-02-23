import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              // height: 150,
              // width: 150,
              child: Image.asset(
            "Images/undraw.png",
            fit: BoxFit.cover,
          )),
          const Text(
            "Welcome",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                      onPressed: () => {
                            debugPrint("Login CLicked"),
                            Fluttertoast.showToast(
                              msg: "Login Success",
                              fontSize: 15,
                              textColor: Colors.black,
                              backgroundColor: Colors.grey.shade200,
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 2,
                            ),
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const ToastMsg())),
                          },
                      style: TextButton.styleFrom(),
                      child: const Text("LOGIN")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*class ToastMsg extends StatefulWidget {
  const ToastMsg({Key? key}) : super(key: key);

  @override
  State<ToastMsg> createState() => _ToastMsgState();
}

class _ToastMsgState extends State<ToastMsg> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}*/

