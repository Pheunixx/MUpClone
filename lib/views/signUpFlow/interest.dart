import 'package:flutter/material.dart';

class InterestWidget extends StatefulWidget {
  final String interestName;
  final ValueNotifier<List<String>> selectedInterestsNotifier;

  const InterestWidget({
    super.key,
    required this.interestName,
    required this.selectedInterestsNotifier,
  });

  @override
  State<InterestWidget> createState() => _InterestWidgetState();
}

class _InterestWidgetState extends State<InterestWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });

        if (isSelected) {
          widget.selectedInterestsNotifier.value = [
            ...widget.selectedInterestsNotifier.value,
            widget.interestName
          ];
        } else {
          widget.selectedInterestsNotifier.value =
              widget.selectedInterestsNotifier.value
                  .where((item) => item != widget.interestName)
                  .toList();
        }
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffffa500) : const Color(0xfffE2EBED),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          widget.interestName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
