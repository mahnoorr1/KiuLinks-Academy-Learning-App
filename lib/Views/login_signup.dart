import 'package:flutter/material.dart';
class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );
  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(bottomRight: Radius.circular(160), bottomLeft: Radius.circular(160)),
                // color: Colors.purple,
                image: DecorationImage(
                  image: AssetImage("assets/login purple bar.png",),
                  fit: BoxFit.cover
                )
              ),
              height: MediaQuery.of(context).size.height * 0.53,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.18,
                  ),
                  SizeTransition(sizeFactor: _animation,

                    child: Image.asset("assets/LOGO WHITE CIRCLE.png", width: MediaQuery.of(context).size.width *0.4, height: MediaQuery.of(context).size.width *0.4,),
                    axis: Axis.horizontal,
                    axisAlignment: -1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  new Text(
                    "KiuLinks",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                    ),
                  ),

                ],
              ),),

          ],
        ),
      ),
    );

  }
}