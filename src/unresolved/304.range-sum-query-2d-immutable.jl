# ---
# title: 304. Range Sum Query 2D - Immutable
# id: problem304
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/range-sum-query-2d-immutable/description/>
# hidden: true
# ---
# 
# Given a 2D matrix _matrix_ , find the sum of the elements inside the rectangle
# defined by its upper left corner ( _row_ 1, _col_ 1) and lower right corner (
# _row_ 2, _col_ 2).
# 
# ![Range Sum Query 2D](https://assets.leetcode.com/static/images/courses/range_sum_query_2d.png)  
# The above rectangle (with the red border) is defined by (row1, col1) = **(2,
# 1)** and (row2, col2) = **(4, 3)** , which contains sum = **8**.
# 
# **Example:**  
# 
#     
#     
#     Given matrix = [
#       [3, 0, 1, 4, 2],
#       [5, 6, 3, 2, 1],
#       [1, 2, 0, 1, 5],
#       [4, 1, 0, 1, 7],
#       [1, 0, 3, 0, 5]
#     ]
#     
#     sumRegion(2, 1, 4, 3) -> 8
#     sumRegion(1, 1, 2, 2) -> 11
#     sumRegion(1, 2, 2, 4) -> 12
#     
# 
# **Note:**  
# 
#   1. You may assume that the matrix does not change.
#   2. There are many calls to _sumRegion_ function.
#   3. You may assume that _row_ 1 ≤ _row_ 2 and _col_ 1 ≤ _col_ 2.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
