void main() {
  final solution = Solution();
  List<int> array = [5, 3, 2, 7];
  int target = 9;
  // print(solution.addSum(array, target));

  solution.addSum(array, target);
}

class Solution {
  List<int> addSum(List<int> array, int target) {
    for (int i = 0; i < array.length; i++) {
      for (int j = 0 + 1; j < array.length; j++) {
        if (array[i] + array[j] == target) {
          print([i, j]);
        }
      }
    }
    return [];
  }
}
