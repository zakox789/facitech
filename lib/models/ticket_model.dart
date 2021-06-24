class TicketModel {
  final String ticketNo;
  final String description;
  final String status;
  final String date;
  int rating;
  final String time;

  TicketModel({
    this.rating: 0,
    required this.ticketNo,
    required this.description,
    required this.status,
    required this.date,
    required this.time,
  });
}
