# ---
# title: 593. Valid Square
# id: problem593
# author: Indigo
# date: 2021-06-26
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/valid-square/description/>
# hidden: true
# ---
# 
# Given the coordinates of four points in 2D space `p1`, `p2`, `p3` and `p4`,
# return `true` _if  the four points construct a square_.
# 
# The coordinate of a point `pi` is represented as `[xi, yi]`. The input is
# **not** given in any order.
# 
# A **valid square** has four equal sides with positive length and four equal
# angles (90-degree angles).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: p1 = [0,0], p2 = [1,1], p3 = [1,0], p4 = [0,1]
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: p1 = [0,0], p2 = [1,1], p3 = [1,0], p4 = [0,12]
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: p1 = [1,0], p2 = [-1,0], p3 = [0,1], p4 = [0,-1]
#     Output: true
#     
# 
# 
# 
# **Constraints:**
# 
#   * `p1.length == p2.length == p3.length == p4.length == 2`
#   * `-104 <= xi, yi <= 104`
# 
# 
## @lc code=start
using LeetCode

function valid_square(ps::Vector{Vector{Int}})
    sort!(ps)
    ps[1] + ps[4] != ps[2] + ps[3] && return false
    sum((ps[1] .- ps[2]) .^ 2) != sum((ps[1] .- ps[3]) .^ 2) && return false
    return true
end
## @lc code=end
