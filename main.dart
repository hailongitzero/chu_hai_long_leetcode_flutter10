void main() {
  //Bai 1
  List<List<int>> matrix = [
    [1, 2, 3, 4],
    [4, 5, 6, 7],
    [7, 8, 9, 1],
    [7, 8, 9, 1]
  ];
  print('====Bai 1====');
  print(matrixCross(matrix));

  //Bai 2
  print('====Bai 2====');
  List<Student> students = [
    Student(1, 'student A', 12, 4, false),
    Student(1, 'student B', 12, 4, false),
    Student(1, 'student C', 12, 5, false),
    Student(1, 'student D', 12, 6, false)
  ];
  var gds = Student.graduatedStudent(students);
  gds.forEach((itm) => {print('Graduated Student: ${itm.name}')});

  //Bai 3
  print('====Bai 3====');
  print(notDivisibleThirteen(13, 39));

  //Bai 4
  print('====Bai 4====');
  print(totalNumber('9223372036854775807', '9223372036854775807'));
}

//Bai 1
matrixCross(List<List<int>> matrix) {
  int n = matrix.length;
  int total = 0;

  for (int i = 0; i < n; i++) {
    total += matrix[i][i];
    if (n % 2 == 1 && i == (n ~/ 2)) {
      continue;
    }
    total += matrix[n - (i + 1)][i];
  }
  return total;
}

//Bai  2

class Student {
  int id;
  String name;
  int age;
  double mark;
  bool graduated;
  Student(this.id, this.name, this.age, this.mark, this.graduated);
  static graduatedStudent(List<Student> students) {
    var gs = students.where((x) => x.mark >= 5);
    gs.map((s) => s.graduated = true);
    return gs;
  }
}

//Bai 3
notDivisibleThirteen(int fromNum, int toNum) {
  int total = 0;
  if (fromNum < 0 && fromNum >= toNum && toNum < 9007199254740991) {
    print('input condition invalid');
    return 0;
  }
  for (int i = fromNum; i <= toNum; i++) {
    if (i % 13 != 0) {
      total += i;
    }
  }
  return total;
}

//Bai 4
String totalNumber(String numberA, String numberB) {
  double a = double.parse(numberA);
  double b = double.parse(numberB);
  var result = a + b;
  return result.toString();
}
