import 'package:facitech/db/dummy_tickets.dart';
import 'package:facitech/journey/ticket_details/ticket_details.dart';
import 'package:facitech/models/ticket_model.dart';
import 'package:facitech/utils/constants.dart';
import 'package:facitech/widgets/ticket_tile.dart';
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
    return DB.closedTicket.length > 0
        ? showDetails
            ? TicketDetails(
                ticket: DB.closedTicket[currentTicketIndex],
                onTap: () {
                  showDetails = false;
                  setState(() {});
                },
                onRating: (r) => onRating(r, currentTicketIndex),
              )
            : ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                itemCount: DB.closedTicket.length,
                itemBuilder: (_, index) {
                  return TicketTile(
                    key: ValueKey(DB.closedTicket[index].ticketNo),
                    ticket: DB.closedTicket[index],
                    onTap: () {
                      setState(() {
                        showDetails = true;
                        currentTicketIndex = index;
                      });
                    },
                    onRating: (r) => onRating(r, index),
                  );
                },
                separatorBuilder: (_, index) => Divider(
                  thickness: 1.w,
                  color: ColorConstants.borderColor,
                ),
              )
        : NoTicketWidget();
  }

  onRating(double rating, int index) {
    DB.closedTicket[index].rating = rating;
    setState(() {});
  }
}
