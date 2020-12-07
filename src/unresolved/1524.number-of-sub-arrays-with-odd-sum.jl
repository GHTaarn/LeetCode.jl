# ---
# title: 1524. Number of Sub-arrays With Odd Sum
# id: problem1524
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Math
# link: <https://leetcode.com/problems/number-of-sub-arrays-with-odd-sum/description/>
# hidden: true
# ---
# 
# Given an array of integers `arr`. Return _the number of sub-arrays_ with
# **odd** sum.
# 
# As the answer may grow large, the answer  **must be**  computed modulo `10^9 +
# 7`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: arr = [1,3,5]
#     Output: 4
#     Explanation: All sub-arrays are [[1],[1,3],[1,3,5],[3],[3,5],[5]]
#     All sub-arrays sum are [1,4,9,3,8,5].
#     Odd sums are [1,9,3,5] so the answer is 4.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: arr = [2,4,6]
#     Output: 0
#     Explanation: All sub-arrays are [[2],[2,4],[2,4,6],[4],[4,6],[6]]
#     All sub-arrays sum are [2,6,12,4,10,6].
#     All sub-arrays have even sum and the answer is 0.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: arr = [1,2,3,4,5,6,7]
#     Output: 16
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: arr = [100,100,99,99]
#     Output: 4
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: arr = [7]
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= arr.length <= 10^5`
#   * `1 <= arr[i] <= 100`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
