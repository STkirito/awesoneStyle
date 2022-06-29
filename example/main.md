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
              animation: AwsAnimationDo.bounce,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('bounce')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimationDo.bounceInDown,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('bounceInDownb')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimationDo.bounceInLeft,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('bounceInLef')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimationDo.bounceInUp,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('bounceInUp')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimationDo.dance,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('dance')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimationDo.elasticIn,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('elasticIn')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.elasticInDown,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('elasticInDown')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.elasticInLeft,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('elasticInLeft')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimationDo.elasticInRight,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('elasticInRight')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
              animation: AwsAnimationDo.elasticInUp,
              child: Row(
                children: const [Icon(Icons.ac_unit), Text('elasticInUp')],
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeIn,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('fadeIn')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeInDown,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeInDown')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeInDownBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInDownBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeInLeft,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeInLeft')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeInLeftBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInLeftBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeInRight,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInRight')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeInRightBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInRightBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeInUp,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeInUp')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeInUpBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeInUpBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOut,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeOut')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOutDown,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutDown')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOutDownBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutDownBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOutLeft,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutLeft')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOutLeftBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutLeftBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOutRight,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutRight')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOutRightBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutRightBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOutUp,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('fadeOutUp')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.fadeOutUpBig,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('fadeOutUpBig')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.flash,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('flash')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.flipInX,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('flipInX')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.flipInY,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('flipInY')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.jelloIn,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('jelloIn')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.pulse,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('pulse')])),
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: AwsAniWidget(
                animation: AwsAnimationDo.roulette,
                to: 5,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('roulette')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.slideInDown,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('slideInDown')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.slideInLeft,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('slideInLeft')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.slideInRight,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('slideInRight')
                ])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.slideInUp,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('slideInUp')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.spin,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('spin')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.spinPerfect,
                child: Row(children: const [
                  Icon(Icons.ac_unit),
                  Text('spinPerfect')
                ])),
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: AwsAniWidget(
                animation: AwsAnimationDo.swing,
                to: 5,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('swing')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.zoomIn,
                child:
                    Row(children: const [Icon(Icons.ac_unit), Text('zoomIn')])),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: AwsAniWidget(
                animation: AwsAnimationDo.zoomOut,
                child: Row(
                    children: const [Icon(Icons.ac_unit), Text('zoomOut')])),
          ),
        ],
      ),
    );
  }
}
