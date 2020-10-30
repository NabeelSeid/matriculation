class ChoiceModel {
  String choiceA;
  String choiceB;
  String choiceC;
  String choiceD;

  ChoiceModel({
    this.choiceA,
    this.choiceB,
    this.choiceC,
    this.choiceD,
  });

  factory ChoiceModel.fromJson(Map<String, dynamic> choiceJson) => ChoiceModel(
      choiceA: choiceJson['A'],
      choiceB: choiceJson['B'],
      choiceC: choiceJson['C'],
      choiceD: choiceJson['D']);
}
