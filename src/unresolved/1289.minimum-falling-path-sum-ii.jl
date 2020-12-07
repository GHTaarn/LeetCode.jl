# ---
# title: 1289. Minimum Falling Path Sum II
# id: problem1289
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/minimum-falling-path-sum-ii/description/>
# hidden: true
# ---
# 
# Given a square grid of integers `arr`, a _falling path with non-zero shifts_
# is a choice of exactly one element from each row of `arr`, such that no two
# elements chosen in adjacent rows are in the same column.
# 
# Return the minimum sum of a falling path with non-zero shifts.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: arr = [[1,2,3],[4,5,6],[7,8,9]]
#     Output: 13
#     Explanation:
#     The possible falling paths are:
#     [1,5,9], [1,5,7], [1,6,7], [1,6,8],
#     [2,4,8], [2,4,9], [2,6,7], [2,6,8],
#     [3,4,8], [3,4,9], [3,5,7], [3,5,9]
#     The falling path with the smallest sum is [1,5,7], so the answer is 13.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= arr.length == arr[i].length <= 200`
#   * `-99 <= arr[i][j] <= 99`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
