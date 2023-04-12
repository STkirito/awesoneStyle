import 'package:flutter/material.dart';

import 'package:awesonestyle/awesonestyle.dart';

void main() => runApp(const Example());

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AwesoneStyle View',
      home: WidgetsScreenLocal(),
    );
  }
}

class WidgetsScreenLocal extends StatelessWidget {
  const WidgetsScreenLocal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text(
            'AwsAniWidget',
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimation.bounce,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('bounce')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimation.bounceInDown,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('bounceInDownb')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimation.bounceInLeft,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('bounceInLef')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimation.bounceInUp,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('bounceInUp')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimation.dance,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('dance')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimation.elasticIn,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('elasticIn')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.elasticInDown,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('elasticInDown')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.elasticInLeft,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('elasticInLeft')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimation.elasticInRight,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('elasticInRight')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimation.elasticInUp,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('elasticInUp')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeIn,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('fadeIn')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeInDown,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeInDown')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeInDownBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInDownBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeInLeft,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeInLeft')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeInLeftBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInLeftBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeInRight,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInRight')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeInRightBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInRightBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeInUp,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeInUp')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeInUpBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInUpBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOut,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeOut')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOutDown,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutDown')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOutDownBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutDownBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOutLeft,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutLeft')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOutLeftBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutLeftBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOutRight,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutRight')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOutRightBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutRightBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOutUp,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeOutUp')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.fadeOutUpBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutUpBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.flash,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('flash')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.flipInX,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('flipInX')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.flipInY,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('flipInY')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.jelloIn,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('jelloIn')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.pulse,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('pulse')])),
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: AwsAniWidget(
                animation: AwsAnimation.roulette,
                to: 5,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('roulette')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.slideInDown,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('slideInDown')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.slideInLeft,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('slideInLeft')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.slideInRight,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('slideInRight')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.slideInUp,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('slideInUp')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.spin,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('spin')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.spinPerfect,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('spinPerfect')
                ])),
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: AwsAniWidget(
                animation: AwsAnimation.swing,
                to: 5,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('swing')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.zoomIn,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('zoomIn')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimation.zoomOut,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('zoomOut')])),
          ),
        ],
      ),
    );
  }
}
