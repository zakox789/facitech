import 'package:facitech/db/dummy_tickets.dart';
import 'package:facitech/utils/constants.dart';
import 'package:facitech/widgets/no_ticket_widget.dart';
import 'package:facitech/journey/ticket_details/ticket_details.dart';
import 'package:facitech/widgets/ticket_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpenTicket extends StatefulWidget {
  const OpenTicket({Key? key}) : super(key: key);

  @override
  _OpenTicketState createState() => _OpenTicketState();
}

class _OpenTicketState extends State<OpenTicket> {
  bool showDetails = false;
  int currentTicketIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DB.openTicket.length > 0
        ? showDetails
            ? TicketDetails(
                ticket: DB.openTicket[currentTicketIndex],
                onTap: () {
                  showDetails = false;
                  setState(() {});
                },
                onClose: () {
                  showDetails = false;
                  DB.openTicket[currentTicketIndex].status = 'closed';
                  setState(() {});
                },
              )
            : ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                itemCount: DB.openTicket.length,
                itemBuilder: (_, index) {
                  return TicketTile(
                    key: ValueKey(DB.openTicket[index].ticketNo),
                    ticket: DB.openTicket[index],
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
                  color: ColorConstants.borderColor,
                ),
              )
        : NoTicketWidget();
  }
}
