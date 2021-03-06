import 'package:flutter/material.dart';

class SelectOptionCustom extends StatefulWidget {
  /// items of radio buttons
  final List items;

  /// value of selected item
  final String value;

  /// values of selected item multiple
  final List values;

  /// width of each item
  final double itemWidth;

  /// height of item
  final double itemHeight;

  /// space between items
  final double itemSpace;

  /// font size of title
  final double titleSize;

  /// border radius
  final double radius;

  /// selected item's background color
  final Color selectedColor;

  /// unselected item's background color
  final Color unSelectedColor;

  /// selected title color
  final Color selectedTitleColor;

  /// unselected title color
  final Color unSelectedTitleColor;

  /// selected border color
  final Color selectedBorderColor;

  /// unselected border color
  final Color unSelectedBorderColor;

  /// center align of items
  final bool centerItem;

  /// vertical axis direction
  final bool isVertical;

  /// on tap function
  final Function onTap;

  /// list style
  final bool listStyle;

  SelectOptionCustom({
    this.items,
    this.value,
    this.values,
    this.itemWidth,
    this.itemHeight,
    this.itemSpace = 10,
    this.titleSize = 12,
    this.radius = 0,
    this.selectedColor,
    this.unSelectedColor,
    this.selectedTitleColor,
    this.unSelectedTitleColor,
    this.selectedBorderColor,
    this.unSelectedBorderColor,
    this.centerItem = true,
    this.isVertical = false,
    this.onTap,
    this.listStyle = false,
  })  : assert(items != null),
        assert(itemWidth != null),
        assert(itemHeight != null),
        assert(selectedColor != null),
        assert(unSelectedColor != null),
        assert(selectedTitleColor != null),
        assert(unSelectedTitleColor != null),
        assert(selectedBorderColor != null),
        assert(unSelectedBorderColor != null),
        assert(onTap != null);

  @override
  _SelectOptionCustomState createState() => _SelectOptionCustomState();
}

class _SelectOptionCustomState extends State<SelectOptionCustom> {
  @override
  Widget build(BuildContext context) {
    return !widget.listStyle
        ? Wrap(
            direction: !widget.isVertical ? Axis.horizontal : Axis.vertical,
            alignment: WrapAlignment.start,
            spacing: widget.itemSpace,
            children: List.generate(
              widget.items.length,
              (index) => Container(
                width: widget.itemWidth,
                child: MaterialButton(
                  height: widget.itemHeight,
                  onPressed: () => widget.onTap(widget.items[index].toString()),
                  color: widget.value == widget.items[index].toString() ||
                          (widget.values != null &&
                              widget.values
                                  .contains(widget.items[index].toString()))
                      ? widget.selectedColor
                      : widget.unSelectedColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(widget.radius)),
                    side: BorderSide(
                      color: widget.value == widget.items[index].toString() ||
                              (widget.values != null &&
                                  widget.values
                                      .contains(widget.items[index].toString()))
                          ? widget.selectedBorderColor
                          : widget.unSelectedBorderColor,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.items[index].toString(),
                      style: TextStyle(
                        color: widget.value == widget.items[index].toString() ||
                                (widget.values != null &&
                                    widget.values.contains(
                                        widget.items[index].toString()))
                            ? widget.selectedTitleColor
                            : widget.unSelectedTitleColor,
                        fontSize: widget.titleSize,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : ListView(
            scrollDirection:
                widget.isVertical ? Axis.vertical : Axis.horizontal,
            children: List.generate(
              widget.items.length,
              (index) => Container(
                width: widget.itemWidth,
                margin: EdgeInsets.symmetric(horizontal: widget.itemSpace),
                child: MaterialButton(
                  height: widget.itemHeight,
                  onPressed: () => widget.onTap(widget.items[index].toString()),
                  color: widget.value == widget.items[index].toString() ||
                          (widget.values != null &&
                              widget.values
                                  .contains(widget.items[index].toString()))
                      ? widget.selectedColor
                      : widget.unSelectedColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(widget.radius)),
                    side: BorderSide(
                      color: widget.value == widget.items[index].toString() ||
                              (widget.values != null &&
                                  widget.values
                                      .contains(widget.items[index].toString()))
                          ? widget.selectedBorderColor
                          : widget.unSelectedBorderColor,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.items[index].toString(),
                      style: TextStyle(
                        color: widget.value == widget.items[index].toString() ||
                                (widget.values != null &&
                                    widget.values.contains(
                                        widget.items[index].toString()))
                            ? widget.selectedTitleColor
                            : widget.unSelectedTitleColor,
                        fontSize: widget.titleSize,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
