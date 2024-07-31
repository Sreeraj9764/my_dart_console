void main() {
  int lengthOfLongestSubstring(String s) {
    if (s.length == 1) {
      return 1;
    }
    if (s.length == 0) {
      return 0;
    }
    List<String> targets = [];
    String str = '';
    for (int i = 0; i < s.length; i++) {
      if (!str.contains(s[i])) {
        str += s[i];
      } else {
        final lastIndex = i != s.length ? i + 1 : i;
        str = s.substring(str.indexOf(s[i]) + 1, lastIndex);
      }
      targets.add(str);
    }
    final subString = targets.reduce(
      (value, element) {
        return value.length > element.length ? value : element;
      },
    );
    return subString.length;
  }

  print(lengthOfLongestSubstring("anviaj"));
}
