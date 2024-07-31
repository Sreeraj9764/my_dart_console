void main() {
  //[[1,2,3],[4,5,6],[7,8,9]] -> [[1,4,7],[2,5,8],[3,6,9]]
  final List<List<int>> input = [
    [1, 2, 3, 76],
    [4, 5, 6, 67],
    [7, 8, 9, 98],
    [10, 11, 12, 56]
  ];
  final List<List<int>> target = [];
  for (int i = 0; i < input.length; i++) {
    List<int> list = [];
    for (int j = 0; j < input.length; j++) {
      if (i < input[j].length) list.add(input[j][i]);
    }
    if (list.isNotEmpty) target.add([...list]);
    list.clear();
  }
  print(target);
}
