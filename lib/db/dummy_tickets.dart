import 'package:facitech/models/ticket_model.dart';

class DB {
  DB._();

  static List<TicketModel> _tickets = [
    TicketModel(
      ticketNo: '1007',
      description: 'Sub - Bathroom Leak',
      status: 'active',
      date: '12/12/2018',
      time: '21 : 18',
    ),
    TicketModel(
      ticketNo: '1008',
      description: 'Sub - Bathroom Leak',
      status: 'active',
      date: '12/12/2018',
      time: '21 : 18',
    ),
    TicketModel(
      ticketNo: '1009',
      description: 'Sub - Bathroom Leak',
      status: 'active',
      date: '12/12/2018',
      time: '21 : 18',
    ),
    TicketModel(
      ticketNo: '1010',
      description: 'Sub - Bathroom Leak',
      status: 'active',
      date: '12/12/2018',
      time: '21 : 18',
    ),
    TicketModel(
      ticketNo: '1011',
      description: 'Sub - Bathroom Leak',
      status: 'closed',
      date: '12/12/2018',
      time: '21 : 18',
    ),
    TicketModel(
      ticketNo: '1012',
      description: 'Sub - Bathroom Leak',
      status: 'closed',
      rating: 4,
      date: '12/12/2018',
      time: '21 : 18',
    ),
    TicketModel(
      ticketNo: '1013',
      description: 'Sub - Bathroom Leak',
      status: 'closed',
      date: '12/12/2018',
      time: '21 : 18',
    ),
    TicketModel(
      ticketNo: '1014',
      description: 'Sub - Bathroom Leak',
      status: 'closed',
      date: '12/12/2018',
      time: '21 : 18',
    ),
  ];

  static List<TicketModel> get openTicket =>
      _tickets.where(((ticket) => ticket.status == 'active')).toList();

  static List<TicketModel> get closedTicket =>
      _tickets.where(((ticket) => ticket.status == 'closed')).toList();
}
