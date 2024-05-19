//2
// class Solution {
//   ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
//     return null;
//   }
// }

// class ListNode {
//   int val;
//   ListNode? next;
//   ListNode([this.val = 0, this.next]);
// }

/*  3.longest substring without repeating characters */

class Solution {
  int lengthOfLongestSubstring(String s) {
    return s.longestSubstring.length;
  }
}

extension LengthOfLongest on String {
  String get longestSubstring {
    final shadow = this;
    List<String> subs = [];
    String str = '';
    for (var i = 0; i < length; i++) {
      if (str.contains(shadow[i])) {
        subs.add(str);
        str = shadow[i];
      } else {
        str += shadow[i];
      }
    }
    return subs.isNotEmpty ? subs.reduce(
        (value, element) => value.length > element.length ? value : element):"";
  }
}
