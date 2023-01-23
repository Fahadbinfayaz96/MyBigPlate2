import 'package:flutter/cupertino.dart';

class CategoryPageRoute extends PageRouteBuilder {
  final Widget widget;
  CategoryPageRoute({required this.widget})
      : super(
            transitionDuration: Duration(milliseconds: 0),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget Child) {
              // animation = CurvedAnimation(
              //     parent: animation, curve: Curves.easeOutCubic);
              return ScaleTransition(
                scale: animation,
                alignment: Alignment.center,
                child: Child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
