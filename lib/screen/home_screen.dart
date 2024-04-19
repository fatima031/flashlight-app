import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

final textColor = Color(0xffE716F2);
var isActive = false;
var controller = TorchController();

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 13, 49, 104),
        title: Text(
          "Flashlight App",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive
                        ? "assets/images/flash light on.png"
                        : "assets/images/flashlight off.jpeg",
                    width: 200,
                    height: 200,
                    // color: isActive? null
                    //     : textColor.withOpacity(0.2),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  )
                ],
              ),
            ),
          )),
          Text(
            "Develop By Fatima Khanani",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          CircleAvatar(
            minRadius: 30,
            maxRadius: 45,
            child: Transform.scale(
                scale: 1.5,
                child: IconButton(
                    onPressed: () {
                      controller.toggle();
                      isActive = !isActive;
                      setState(() {
                        
                      });
                    },
                    icon: const Icon(Icons.power_settings_new))),
          )
        ],
      ),
    );
  }
}
