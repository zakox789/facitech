import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/app_color_constant.dart';
import 'package:facitech/widgets/close_ticket_details.dart';
import 'package:facitech/widgets/closed_ticket_tile.dart';
import 'package:facitech/widgets/no_ticket_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClosedTicket extends StatefulWidget {
  const ClosedTicket({Key? key}) : super(key: key);

  @override
  _ClosedTicketState createState() => _ClosedTicketState();
}

class _ClosedTicketState extends State<ClosedTicket> {
  bool showDetails = false;
  int currentTicketIndex = 0;

  @override
  Widget build(BuildContext context) {
    return tickets.length > 0
        ? showDetails
            ? CloseTicketDetails(
                ticket: tickets[currentTicketIndex],
                onTap: () {
                  setState(() {
                    showDetails = false;
                  });
                },
              )
            : ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                itemCount: tickets.length,
                itemBuilder: (_, index) {
                  return ClosedTicketTile(
                    ticket: tickets[index],
                    onTap: () {
                      setState(() {
                        showDetails = true;
                        currentTicketIndex = index;
                      });
                    },
                  );
                },
                separatorBuilder: (_, index) => Divider(
                  thickness: 1.w,
                  color: ColorConstants.dividerColor,
                ),
              )
        : NoTicketWidget();
  }
}

List<TicketModel> tickets = [
  TicketModel(
      ticketNo: 'Ticket No. 1007',
      description: 'Sub - Bathroom Leak',
      status: 'Closed',
      date: '12/12/2018',
      time: '21 : 18'),
  TicketModel(
      ticketNo: 'Ticket No. 1007',
      description: 'Sub - Bathroom Leak',
      status: 'Closed',
      date: '12/12/2018',
      time: '21 : 18'),
  TicketModel(
      ticketNo: 'Ticket No. 1007',
      description: 'Sub - Bathroom Leak',
      status: 'Closed',
      date: '12/12/2018',
      time: '21 : 18'),
  TicketModel(
      ticketNo: 'Ticket No. 1007',
      description: 'Sub - Bathroom Leak',
      status: 'Closed',
      date: '12/12/2018',
      time: '21 : 18'),
];
