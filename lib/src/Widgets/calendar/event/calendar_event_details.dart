import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/material.dart';

//TODO: falta terminar
class _AwsCalendarEventDetails extends StatelessWidget {
  final String title;
  final String description;
  final Object? event;
  final Color color;
  final DateTime? startTime;
  final DateTime? endTime;
  final DateTime? endDate;
  final DateTime date;

  const _AwsCalendarEventDetails({
    Key? key,
    required this.title,
    this.description = "",
    this.event,
    this.color = Colors.blue,
    this.startTime,
    this.endTime,
    this.endDate,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
      child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Detalles del evento'.tr,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${'Nombre'.tr}: $title',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '${'Descripción'.tr}: $description',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(),
                  if (startTime != null) ...[
                    Text(
                      '${'inicia:'.tr} ${startTime!.hour}:${startTime!.minute}',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                  if (endTime != null) ...[
                    Text(
                      '${'Termina:'.tr} ${endTime!.hour}:${endTime!.minute}',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                  if (date.day == DateTime.now().day) ...[
                    Text(
                      'Día: Hoy'.tr,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                  if (endDate != null)
                    if (date.day != DateTime.now().day) ...[
                      Text(
                        '${'Desde el:'.tr} ${date.day}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '${'Hasta el:'.tr} ${endDate!.day}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
