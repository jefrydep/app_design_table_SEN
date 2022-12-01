import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:  _HeaderCurvoPainter()
      ),
    );
  }
}


class _HeaderCurvoPainter extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = new Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo( 0, size.height * 0.25 );
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.40, size.width, size.height * 0.25 );
    path.lineTo( size.width, 0 );

  


    canvas.drawPath(path, lapiz );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}
