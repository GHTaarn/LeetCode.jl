# ---
# title: 1027. Longest Arithmetic Subsequence
# id: problem1027
# author: Indigo
# date: 2022-04-14
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/longest-arithmetic-subsequence/description/>
# hidden: true
# ---
# 
# Given an array `A` of integers, return the **length** of the longest
# arithmetic subsequence in `A`.
# 
# Recall that a _subsequence_ of `A` is a list `A[i_1], A[i_2], ..., A[i_k]`
# with `0 <= i_1 < i_2 < ... < i_k <= A.length - 1`, and that a sequence `B` is
# _arithmetic_ if `B[i+1] - B[i]` are all the same value (for `0 <= i < B.length
# - 1`).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [3,6,9,12]
#     Output: 4
#     Explanation:
#     The whole array is an arithmetic sequence with steps of length = 3.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [9,4,7,2,10]
#     Output: 3
#     Explanation:
#     The longest arithmetic subsequence is [4,7,10].
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [20,1,15,3,10,5,8]
#     Output: 4
#     Explanation:
#     The longest arithmetic subsequence is [20,15,10,5].
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= A.length <= 1000`
#   * `0 <= A[i] <= 500`
# 
# 
## @lc code=start
using LeetCode

function longest_arith_seq_length(nums::Vector{Int})
    len = length(nums)
    len == 1 && return 0
    dp = fill(0, len, 1001)
    res = 0
    for i in 1:len, j in 1:(i - 1)
        d = nums[i] - nums[j] + 501
        dp[i, d] = max(dp[i, d], dp[j, d] + 1)
        res = max(res, dp[i, d])
    end
    return res + 1
end
## @lc code=end
