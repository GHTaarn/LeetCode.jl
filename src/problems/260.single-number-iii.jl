# ---
# title: 260. Single Number III
# id: problem260
# author: Indigo
# date: 2021-06-05
# difficulty: Medium
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/single-number-iii/description/>
# hidden: true
# ---
# 
# Given an integer array `nums`, in which exactly two elements appear only once
# and all the other elements appear exactly twice. Find the two elements that
# appear only once. You can return the answer in **any order**.
# 
# **Follow up:  **Your algorithm should run in linear runtime complexity. Could
# you implement it using only constant space complexity?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,1,3,2,5]
#     Output: [3,5]
#     Explanation: [5, 3] is also a valid answer.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [-1,0]
#     Output: [-1,0]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [0,1]
#     Output: [1,0]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 30000`
#   *  Each integer in `nums` will appear twice, only two integers will appear once.
# 
# 
## @lc code=start
using LeetCode

function single_number_iii(nums::Vector{T}) where T <: Integer 
    res = reduce(⊻, nums; init = zero(T))
    div = one(T)
    while (div & res) == 0
        div <<= one(T)
    end
    a = b = 0
    for n in nums
        (div & n == 0) ? a ⊻= n : b ⊻= n 
    end
    return a, b
end
## @lc code=end
