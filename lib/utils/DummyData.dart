import '../models/Review.dart';

class DummyData{

  final List<Review> reviews = [
    Review(
      id: 1,
      researcher_id: 101,
      research_name: "Random Research 1",
      submission_date: "01-01-2023",
      admin_id: 201,
      document_url: "ABC123",
      status: Status.APPROVED,
    ),
    Review(
      id: 2,
      researcher_id: 102,
      research_name: "Random Research 2",
      submission_date: "15-02-2023",
      admin_id: 202,
      document_url: "XYZ789",
      status: Status.PENDING,
    ),
    Review(
      id: 3,
      researcher_id: 103,
      research_name: "Random Research 3",
      submission_date: "31-03-2023",
      admin_id: 203,
      document_url: "PQR456",
      status: Status.REJECT,
    ),
  ];
}