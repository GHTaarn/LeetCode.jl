# ---
# title: 365. Water and Jug Problem
# id: problem365
# author: Indigo
# date: 2021-06-14
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/water-and-jug-problem/description/>
# hidden: true
# ---
# 
# You are given two jugs with capacities _x_ and _y_ litres. There is an
# infinite amount of water supply available. You need to determine whether it is
# possible to measure exactly _z_ litres using these two jugs.
# 
# If _z_ liters of water is measurable, you must have _z_ liters of water
# contained within **one or both buckets** by the end.
# 
# Operations allowed:
# 
#   * Fill any of the jugs completely with water.
#   * Empty any of the jugs.
#   * Pour water from one jug into another till the other jug is completely full or the first jug itself is empty.
# 
# **Example 1:** (From the famous [_" Die Hard"_
# example](https://www.youtube.com/watch?v=BVtQNK_ZUJg))
# 
#     
#     
#     Input: x = 3, y = 5, z = 4
#     Output: True
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: x = 2, y = 6, z = 5
#     Output: False
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= x <= 10^6`
#   * `0 <= y <= 10^6`
#   * `0 <= z <= 10^6`
# 
# 
## @lc code=start
using LeetCode

function can_measure_water(jug1_cap::Int, jug2_cap::Int, target::Int)
    target > jug1_cap + jug2_cap && return false
    return target % gcd(jug2_cap, jug1_cap) == 0 ? true : false
end
## @lc code=end
