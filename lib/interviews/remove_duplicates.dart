void main() {
  List<int> nums = [2, 8, 7, 6, 5, 4, 3, 5, 6, 8, 7];
  List<int> target = [];
  Map<int, int> occurrence = {};
  for (int i = 0; i < nums.length; i++) {
    if (target.contains(nums[i])) {
      occurrence[nums[i]] = occurrence[nums[i]]! + 1;
    } else {
      target.add(nums[i]);
      occurrence[nums[i]] = 1;
    }
  }
  print(target);
  print(occurrence);
}
