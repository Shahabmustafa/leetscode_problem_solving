void main() {
  String c = "abeewbew";
  print(longestSubString(c));
}

int longestSubString(String s) {
  int n = s.length;
  int maxLength = 0;

  Map<String, int> charIndexMap = {};
  int start = 0;
  for (int end = 0; end < n; end++) {
    if (charIndexMap.containsKey(s[end]) && charIndexMap[s[end]]! >= start) {
      start = charIndexMap[s[end]]! + 1;
    }
    // Update the index of the current character in the map
    charIndexMap[s[end]] = end;

    // Update the maximum length of the substring
    maxLength = maxLength > end - start + 1 ? maxLength : end - start + 1;
  }
  return maxLength;
}
