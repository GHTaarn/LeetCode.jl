# ---
# title: 372. Super Pow
# id: problem372
# author: Indigo
# date: 2021-06-14
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/super-pow/description/>
# hidden: true
# ---
# 
# Your task is to calculate `ab` mod `1337` where `a` is a positive integer and
# `b` is an extremely large positive integer given in the form of an array.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: a = 2, b = [3]
#     Output: 8
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: a = 2, b = [1,0]
#     Output: 1024
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: a = 1, b = [4,3,3,8,5,2]
#     Output: 1
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: a = 2147483647, b = [2,0,0]
#     Output: 1198
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= a <= 231 - 1`
#   * `1 <= b.length <= 2000`
#   * `0 <= b[i] <= 9`
#   * `b` doesn't contain leading zeros.
# 
# 
## @lc code=start
using LeetCode

function super_pow(a::Int, b::Vector{Int})
    md, ϕ = 1337, 1140
    n = length(b)
    n == 0 && return 1
    e = 0
    a %= md
    for digit in b
        e = (10 * e + digit) % ϕ 
    end
    powermod(a, e, md)
end
## @lc code=end
