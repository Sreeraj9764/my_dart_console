void main(List<String> arguments) {
  List<int> nums = [3, 2, 4];
  int target = 6;
  print(twoSum(nums, target));
}
//1
// List<int> twoSum(List<int> nums, int target) {
//   List<int> indices = [];
//   outerLoop:
//   for (int i = 0; i < nums.length; i++) {
//     for (int n = i + 1; n < nums.length; n++) {
//       if (nums[i] + nums[n] == target) {
//         indices = [i, n];
//         break outerLoop;
//       }
//     }
//   }
//   return indices;
// }

//2
List<int> twoSum(List<int> nums, int target) {
  Map<int, int> seen = {};

  for (int i = 0; i < nums.length; i++) {
    int compliment = target - nums[i];
    if (seen.containsKey(compliment)) {
      return [seen[compliment]!, i];
    }
    seen[nums[i]] = i;
  }
  throw Exception("Value error");
}
