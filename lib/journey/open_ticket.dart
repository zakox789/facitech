import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/app_color_constant.dart';
import 'package:facitech/widgets/no_ticket_widget.dart';
import 'package:facitech/widgets/open_ticket_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpenTicket extends StatelessWidget {
  const OpenTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tickets.length > 0
        ? ListView.separated(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
            ),
            itemCount: tickets.length,
            itemBuilder: (_, index) {
              return OpenTicketTile(ticket: tickets[index]);
            },
            separatorBuilder: (_, index) => Divider(
              thickness: 1,
              color: ColorConstants.emptyIconColor,
            ),
          )
        : NoTicketWidget();
  }
}

List<TicketModel> tickets = [
  TicketModel(
    ticketNo: 'Ticket No. 1007',
    description: 'Sub - Bathroom Leak',
    status: 'Active',
    date: '12/12/2018',
  ),
  TicketModel(
    ticketNo: 'Ticket No. 1007',
    description: 'Sub - Bathroom Leak',
    status: 'Active',
    date: '12/12/2018',
  ),
  TicketModel(
    ticketNo: 'Ticket No. 1007',
    description: 'Sub - Bathroom Leak',
    status: 'Active',
    date: '12/12/2018',
  ),
  TicketModel(
    ticketNo: 'Ticket No. 1007',
    description: 'Sub - Bathroom Leak',
    status: 'Active',
    date: '12/12/2018',
  ),
];
