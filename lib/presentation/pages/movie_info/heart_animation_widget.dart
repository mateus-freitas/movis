import 'package:flutter/material.dart';

class AnimatedHeartButton extends StatefulWidget {
  final bool initialIsLiked;
  final Duration animationDuration;
  final void Function(bool) onTap;

  const AnimatedHeartButton(
      {Key? key,
      required this.initialIsLiked,
      this.animationDuration = const Duration(milliseconds: 150),
      required this.onTap})
      : super(key: key);

  @override
  State<AnimatedHeartButton> createState() => _AnimatedHeartButtonState();
}

class _AnimatedHeartButtonState extends State<AnimatedHeartButton>
    with SingleTickerProviderStateMixin {
  late bool _isLiked;
  late AnimationController _controller;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();
    final halfDuration = widget.animationDuration.inMilliseconds ~/ 2;
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: halfDuration));
    scale = Tween<double>(begin: 1.0, end: 1.2).animate(_controller);
    _isLiked = widget.initialIsLiked;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _doAnimation() async {
    await _controller.forward();
    await _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scale,
      child: IconButton(
          onPressed: () {
            setState(() {
              _isLiked = !_isLiked;
            });
            _doAnimation();
          },
          icon: Icon(
            _isLiked ? Icons.favorite : Icons.favorite_border,
            color: _isLiked ? Colors.red : null,
          )),
    );
  }
}
