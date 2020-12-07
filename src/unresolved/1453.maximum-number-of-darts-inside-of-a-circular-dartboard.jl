# ---
# title: 1453. Maximum Number of Darts Inside of a Circular Dartboard
# id: problem1453
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Geometry
# link: <https://leetcode.com/problems/maximum-number-of-darts-inside-of-a-circular-dartboard/description/>
# hidden: true
# ---
# 
# You have a very large square wall and a circular dartboard placed on the wall.
# You have been challenged to throw darts into the board blindfolded. Darts
# thrown at the wall are represented as an array of `points` on a 2D plane.
# 
# Return the maximum number of points that are within or lie on  **any**
# circular dartboard of radius `r`.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/04/29/sample_1_1806.png)
# 
#     
#     
#     Input: points = [[-2,0],[2,0],[0,2],[0,-2]], r = 2
#     Output: 4
#     Explanation: Circle dartboard with center in (0,0) and radius = 2 contain all points.
#     
# 
# **Example 2:**
# 
# **![](https://assets.leetcode.com/uploads/2020/04/29/sample_2_1806.png)**
# 
#     
#     
#     Input: points = [[-3,0],[3,0],[2,6],[5,4],[0,9],[7,8]], r = 5
#     Output: 5
#     Explanation: Circle dartboard with center in (0,4) and radius = 5 contain all points except the point (7,8).
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: points = [[-2,0],[2,0],[0,2],[0,-2]], r = 1
#     Output: 1
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: points = [[1,2],[3,5],[1,-1],[2,3],[4,1],[1,3]], r = 2
#     Output: 4
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= points.length <= 100`
#   * `points[i].length == 2`
#   * `-10^4 <= points[i][0], points[i][1] <= 10^4`
#   * `1 <= r <= 5000`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
