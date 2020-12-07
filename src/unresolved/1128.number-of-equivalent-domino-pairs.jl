# ---
# title: 1128. Number of Equivalent Domino Pairs
# id: problem1128
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/number-of-equivalent-domino-pairs/description/>
# hidden: true
# ---
# 
# Given a list of `dominoes`, `dominoes[i] = [a, b]` is _equivalent_ to
# `dominoes[j] = [c, d]` if and only if either (`a==c` and `b==d`), or (`a==d`
# and `b==c`) - that is, one domino can be rotated to be equal to another
# domino.
# 
# Return the number of pairs `(i, j)` for which `0 <= i < j < dominoes.length`,
# and `dominoes[i]` is equivalent to `dominoes[j]`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: dominoes = [[1,2],[2,1],[3,4],[5,6]]
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= dominoes.length <= 40000`
#   * `1 <= dominoes[i][j] <= 9`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
