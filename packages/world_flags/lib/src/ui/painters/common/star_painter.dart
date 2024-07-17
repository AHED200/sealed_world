import "dart:math";
import "dart:ui";

import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class StarPainter extends ElementsPainter {
  StarPainter(super.properties, super.aspectRatio);
  static const startRadians = pi / 2;
  static const radiansMultiplier = pi / 180;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final star = shapeType<Star>() ?? const Star();
    final radiansPerPoint = pi * 2 / (star.points * 2);
    final center = calculateCenter(size);
    final radius = calculateSize(size);
    final path = Path();

    for (var i = 0; i <= star.points * 2; i++) {
      final radiusFactor = i.isEven ? star.radiusFactor : 1;
      final x = center.dx +
          radius * radiusFactor * cos(i * radiansPerPoint + startRadians);
      final y = center.dy +
          radius * radiusFactor * sin(i * radiansPerPoint + startRadians);
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    var paint = paintCreator();
    if (!star.isFilled) {
      paint.style = PaintingStyle.stroke;
      paint.strokeWidth = radius / 8;
    }
    if (property.angle == null) {
      canvas.drawPath(path..close(), paint);
    } else {
      final angleInRadians = (property.angle ?? 0) * radiansMultiplier;
      canvas
        ..save()
        ..translate(center.dx, center.dy)
        ..rotate(angleInRadians)
        ..translate(-center.dx, -center.dy)
        ..drawPath(path..close(), paint)
        ..restore();
    }

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
