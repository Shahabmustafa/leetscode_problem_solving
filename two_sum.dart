void main() {
  final sum = Solution();
  List<int> nums1 = [5, 3, 2, 7];
  int target1 = 9;
  print(sum.twoSum(nums1, target1));
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      // 0 1 2 3
      for (int j = 0 + i; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          print([i, j]);
        }
      }
    }
    return [];
  }
}
