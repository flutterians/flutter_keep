import 'dart:math' as math;
import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    super.key,
    required this.pageData,
    required this.offset,
  });
  final Map<String, String> pageData;
  final double offset;

  @override
  Widget build(BuildContext context) {
    final gauss = math.exp(-(math.pow(offset.abs() - 0.5, 2) / 0.08));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Transform.translate(
            offset: Offset(-32 * gauss * offset.sign, 0),
            child: Image.asset('${pageData['asset']}', fit: BoxFit.cover),
          ),
          const Spacer(),
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(
              '${pageData['title']}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(height: 10),
          Transform.translate(
            offset: Offset(32 * offset, 0),
            child: Text(
              '${pageData['content']}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
