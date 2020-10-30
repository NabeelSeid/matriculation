class SearchRefModel {
  String subject;
  List<ExamRef> nationalExams;

  SearchRefModel({this.subject, this.nationalExams});

  factory SearchRefModel.fromJson(Map<String, dynamic> ref) => SearchRefModel(
      subject: ref['subject'].toString(),
      nationalExams: (ref['national-exams'] as List)
          .map((e) => ExamRef.fromJson(e))
          .toList());
}

class ExamRef {
  String filename;
  int year;

  ExamRef({this.filename, this.year});

  factory ExamRef.fromJson(Map<String, dynamic> examRef) =>
      ExamRef(filename: examRef['filename'], year: examRef['year']);
}
