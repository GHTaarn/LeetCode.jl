# ---
# title: 704. Binary Search
# id: problem704
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Binary Search
# link: <https://leetcode.com/problems/binary-search/description/>
# hidden: true
# ---
# 
# Given a **sorted** (in ascending order) integer array `nums` of `n` elements
# and a `target` value, write a function to search `target` in `nums`. If
# `target` exists, then return its index, otherwise return `-1`.
# 
#   
# **Example 1:**
# 
#     
#     
#     Input: nums = [-1,0,3,5,9,12], target = 9
#     Output: 4
#     Explanation: 9 exists in nums and its index is 4
#     
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [-1,0,3,5,9,12], target = 2
#     Output: -1
#     Explanation: 2 does not exist in nums so return -1
#     
# 
# 
# 
# **Note:**
# 
#   1. You may assume that all elements in `nums` are unique.
#   2. `n` will be in the range `[1, 10000]`.
#   3. The value of each element in `nums` will be in the range `[-9999, 9999]`.
# 
# 
## @lc code=start
using LeetCode

function search704(nums::Vector{Int}, target::Int)
    res = searchsortedfirst(nums, target)
    nums[res] == target ? res : 0
end
## @lc code=end
