void main() {
  //[[1,2,3],[4,5,7],[8,9,10]] --> [[1,4,8],[2,5,9],[3,7,10]]
  List<List<int>> arrayList = [
    [1, 2, 3],
    [4, 5, 7],
    [8, 9, 10]
  ];
  List<List<int>> target = [];
  for (int i = 0; i < arrayList.length; i++) {
    List<int> list = [];
    for (int j = 0; j < arrayList[i].length; j++) {
      list.add(arrayList[j][i]);
    }
    target.add(list);
    list = [];
  }
  print(target);
}
