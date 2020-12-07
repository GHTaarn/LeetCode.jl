# ---
# title: 1292. Maximum Side Length of a Square with Sum Less than or Equal to Threshold
# id: problem1292
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Binary Search
# link: <https://leetcode.com/problems/maximum-side-length-of-a-square-with-sum-less-than-or-equal-to-threshold/description/>
# hidden: true
# ---
# 
# Given a `m x n` matrix `mat` and an integer `threshold`. Return the maximum
# side-length of a square with a sum less than or equal to `threshold` or return
# **0** if there is no such square.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/12/05/e1.png)
# 
#     
#     
#     Input: mat = [[1,1,3,2,4,3,2],[1,1,3,2,4,3,2],[1,1,3,2,4,3,2]], threshold = 4
#     Output: 2
#     Explanation: The maximum side length of square with sum less than 4 is 2 as shown.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: mat = [[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2]], threshold = 1
#     Output: 0
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: mat = [[1,1,1,1],[1,0,0,0],[1,0,0,0],[1,0,0,0]], threshold = 6
#     Output: 3
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: mat = [[18,70],[61,1],[25,85],[14,40],[11,96],[97,96],[63,45]], threshold = 40184
#     Output: 2
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= m, n <= 300`
#   * `m == mat.length`
#   * `n == mat[i].length`
#   * `0 <= mat[i][j] <= 10000`
#   * `0 <= threshold <= 10^5`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
