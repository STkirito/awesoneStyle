import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';

class AwsMultiCalendarEventDetails extends StatelessWidget {
  final String? _title;
  final TextStyle? _titleStyle;
  final String? _nullTitle;
  final TextStyle? _nullTitleStyle;
  final BoxDecoration? _decoration;
  final List<CalendarEventData<Object?>> _events;
  final bool _endDate;
  const AwsMultiCalendarEventDetails({
    Key? key,
    required List<CalendarEventData<Object?>> events,
    String? title,
    TextStyle? titleStyle,
    BoxDecoration? decoration,
    String? nullTitle,
    TextStyle? nullTitleStyle,
    bool endDate = false,
  })  : _events = events,
        _title = title,
        _titleStyle = titleStyle,
        _decoration = decoration,
        _nullTitle = nullTitle,
        _nullTitleStyle = nullTitleStyle,
        _endDate = endDate,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AwsScreenSize.height(100),
      width: AwsScreenSize.width(100),
      decoration: _decoration ??
          const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff2d96ee),
                Color(0xff7821f3),
              ],
              stops: [
                0,
                1,
              ],
            ),
            backgroundBlendMode: BlendMode.srcOver,
          ),
      child: _events.isNotEmpty
          ? SizedBox(
              height: AwsScreenSize.height(100),
              width: AwsScreenSize.width(100),
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.vertical,
                children: [
                  Text(
                    _title?.tr ?? 'Detalles del evento'.tr,
                    style: _titleStyle ??
                        const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Flexible(
                    child: ListView.builder(
                      itemCount: _events.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (_endDate == true) {
                          return _ChildrenCalendarEventDetails(
                            title: _events[index].title,
                            description: _events[index].description,
                            startTime: _events[index].startTime,
                            endTime: _events[index].endTime,
                            date: _events[index].date,
                            endDate: _events[index].endDate,
                          );
                        } else {
                          return _ChildrenCalendarEventDetails(
                            title: _events[index].title,
                            description: _events[index].description,
                            startTime: _events[index].startTime,
                            endTime: _events[index].endTime,
                            date: _events[index].date,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          : _CalendarEventDetailsNull(
              title: _nullTitle,
              titleStyle: _nullTitleStyle,
            ),
    );
  }
}

class AwsCalendarEventDetails extends StatelessWidget {
  final String? _titleContainer;
  final TextStyle? _titleContainerStyle;
  final String? _nullTitleContainer;
  final TextStyle? _nullTitleContainerStyle;
  final String _title;
  final String _description;
  final DateTime? _startTime;
  final DateTime? _endTime;
  final DateTime? _endDate;
  final DateTime _date;
  final TextStyle? _style;
  final BoxDecoration? _decoration;
  const AwsCalendarEventDetails({
    Key? key,
    String? titleContainer,
    TextStyle? titleContainerStyle,
    required String title,
    String description = "",
    Object? event,
    Color color = Colors.blue,
    DateTime? startTime,
    DateTime? endTime,
    DateTime? endDate,
    required DateTime date,
    String? nullTitleContainer,
    TextStyle? nullTitleContainerStyle,
    TextStyle? style,
    BoxDecoration? decoration,
  })  : _titleContainer = titleContainer,
        _titleContainerStyle = titleContainerStyle,
        _title = title,
        _description = description,
        _startTime = startTime,
        _endTime = endTime,
        _date = date,
        _endDate = endDate,
        _style = style,
        _nullTitleContainer = nullTitleContainer,
        _nullTitleContainerStyle = nullTitleContainerStyle,
        _decoration = decoration,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _decoration ??
          const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff2d96ee),
                Color(0xff7821f3),
              ],
              stops: [
                0,
                1,
              ],
            ),
            backgroundBlendMode: BlendMode.srcOver,
          ),
      child: _title != 'null'
          ? SizedBox(
              height: AwsScreenSize.height(100),
              width: AwsScreenSize.width(100),
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.vertical,
                children: [
                  Text(
                    _titleContainer?.tr ?? 'Detalles del evento'.tr,
                    style: _titleContainerStyle ??
                        const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Flexible(
                    child: ListView(
                      children: [
                        _ChildrenCalendarEventDetails(
                          title: _title,
                          description: _description,
                          startTime: _startTime,
                          endTime: _endTime,
                          date: _date,
                          endDate: _endDate,
                          style: _style,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : _CalendarEventDetailsNull(
              title: _nullTitleContainer,
              titleStyle: _nullTitleContainerStyle,
            ),
    );
  }
}

class _CalendarEventDetailsNull extends StatelessWidget {
  final String? _title;
  final TextStyle? _titleStyle;
  const _CalendarEventDetailsNull({
    Key? key,
    String? title,
    TextStyle? titleStyle,
  })  : _title = title,
        _titleStyle = titleStyle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            _title?.tr ?? 'Selecioné un evento'.tr,
            style: _titleStyle ?? const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _ChildrenCalendarEventDetails extends StatelessWidget {
  final String _title;
  final String _description;
  final DateTime? _startTime;
  final DateTime? _endTime;
  final DateTime _date;
  final DateTime? _endDate;
  final TextStyle? _style;

  const _ChildrenCalendarEventDetails({
    Key? key,
    required String title,
    required String description,
    required DateTime? startTime,
    required DateTime? endTime,
    required DateTime date,
    DateTime? endDate,
    TextStyle? style,
  })  : _title = title,
        _description = description,
        _startTime = startTime,
        _endTime = endTime,
        _date = date,
        _endDate = endDate,
        _style = style,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AwsScreenSize.width(100),
      height: AwsScreenSize.height(100),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  '${'Nombre'.tr}:',
                  style: _style ??
                      const TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(width: 10),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: TextField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: InputBorder.none,
                      ),
                      readOnly: true,
                      expands: false,
                      controller: TextEditingController(text: _title),
                      style: _style ??
                          const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_startTime != null) ...[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    '${'inicia'.tr}:',
                    style: _style ??
                        const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                        readOnly: true,
                        expands: false,
                        controller: TextEditingController(
                          text: AwsFormatter.completTime(
                              hour: _startTime!.hour,
                              minute: _startTime!.minute),
                        ),
                        style: _style ??
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          if (_endTime != null) ...[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    '${'Termina'.tr}:',
                    style: _style ??
                        const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                        readOnly: true,
                        expands: false,
                        controller: TextEditingController(
                          text: AwsFormatter.completTime(
                              hour: _endTime!.hour, minute: _endTime!.minute),
                        ),
                        style: _style ??
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          if (_date.day == DateTime.now().day) ...[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    '${'Día'.tr}:',
                    style: _style ??
                        const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                        readOnly: true,
                        expands: false,
                        controller: TextEditingController(text: 'Hoy'),
                        style: _style ??
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          if (_date != DateTime.now()) ...[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    '${'Día'.tr}:',
                    style: _style ??
                        const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                        readOnly: true,
                        expands: false,
                        controller:
                            TextEditingController(text: _date.day.toString()),
                        style: _style ??
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          if (_endDate != null) ...[
            if (_date.day != DateTime.now().day) ...[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      '${'Desde el'.tr}:',
                      style: _style ??
                          const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(34),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: InputBorder.none,
                          ),
                          readOnly: true,
                          expands: false,
                          controller:
                              TextEditingController(text: _date.day.toString()),
                          style: _style ??
                              const TextStyle(
                                  color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      '${'Hasta el'.tr}:',
                      style: _style ??
                          const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(34),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: InputBorder.none,
                          ),
                          readOnly: true,
                          expands: false,
                          controller: TextEditingController(
                              text: _endDate!.day.toString()),
                          style: _style ??
                              const TextStyle(
                                  color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${'Descripción'.tr}:',
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                AwsAreaTextField(
                  readOnly: true,
                  expands: false,
                  controller: TextEditingController(text: _description),
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
