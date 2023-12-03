class Review {
  int id;
  int researcher_id;
  String research_name;
  String submission_date;
  int admin_id;
  String document_url;
  String status;

  Review({
    required this.id,
    required this.research_name,
    required this.submission_date,
    required this.admin_id,
    required this.document_url,
    required this.researcher_id,
    required this.status,
  });
}

class Status {
  static const PENDING = "PENDING";
  static const APPROVED = "APPROVED";
  static const REJECT = "REJECT";
}
