String FindNumperInListByBinarySearch(List<int> numpers, int query) {
  String solution = ("-1");
  if (numpers.isEmpty) {
    return solution;
  }
  int lowIndex = 0;
  int highIndex = numpers.length - 1;

  while (lowIndex <= highIndex) {
    int midIndex = (lowIndex + highIndex) ~/ 2;
    if (query == numpers[midIndex]) {
      solution = ("the Numper : $query , indexNumper : $midIndex}");
      return solution;
    }
    if (query < numpers[midIndex]) {
      lowIndex = midIndex + 1;
    } else {
      highIndex = midIndex - 1;
    }
  }
  return solution;
}
