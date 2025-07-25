import 'package:flutter/material.dart';

class RangeSliderFilter extends StatefulWidget {
  final String label;
  final double minValue;
  final double maxValue;
  final RangeValues? currentValues;
  final ValueChanged<RangeValues> onRangeValuesChangeEnd;

  const RangeSliderFilter({
    super.key,
    required this.label,
    required this.onRangeValuesChangeEnd,
    this.currentValues,
    this.minValue = 1,
    this.maxValue = 5,
  });

  @override
  State<RangeSliderFilter> createState() => _RangeSliderFilterState();
}

class _RangeSliderFilterState extends State<RangeSliderFilter> {
  late RangeValues _currentRangeValues;

  @override
  void initState() {
    super.initState();
    _currentRangeValues = widget.currentValues ??
        RangeValues(
          widget.minValue,
          widget.maxValue,
        );
  }

  @override
  void didUpdateWidget(covariant RangeSliderFilter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentValues == null && oldWidget.currentValues != null) {
      _currentRangeValues = RangeValues(
        widget.minValue,
        widget.maxValue,
      );
    } else if (widget.currentValues != oldWidget.currentValues &&
        widget.currentValues != _currentRangeValues) {
      setState(() {
        _currentRangeValues = widget.currentValues!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: Text(widget.label),
        ),
        Expanded(
          child: RangeSlider(
            values: _currentRangeValues,
            min: widget.minValue,
            max: widget.maxValue,
            divisions: (widget.maxValue - widget.minValue).toInt(),
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
            onChangeEnd: widget.onRangeValuesChangeEnd,
          ),
        ),
      ],
    );
  }
}
