# ---
# title: 377. Combination Sum IV
# id: problem377
# author: Indigo
# date: 2021-06-14
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/combination-sum-iv/description/>
# hidden: true
# ---
# 
# Given an integer array with all positive numbers and no duplicates, find the
# number of possible combinations that add up to a positive integer target.
# 
# **Example:**
# 
#     
#     
#     _**nums**_ = [1, 2, 3]
#     _**target**_ = 4
#     
#     The possible combination ways are:
#     (1, 1, 1, 1)
#     (1, 1, 2)
#     (1, 2, 1)
#     (1, 3)
#     (2, 1, 1)
#     (2, 2)
#     (3, 1)
#     
#     Note that different sequences are counted as different combinations.
#     
#     Therefore the output is _**7**_.
#     
# 
# 
# 
# **Follow up:**  
# What if negative numbers are allowed in the given array?  
# How does it change the problem?  
# What limitation we need to add to the question to allow negative numbers?
# 
# **Credits:**  
# Special thanks to [@pbrother](https://leetcode.com/pbrother/) for adding this
# problem and creating all test cases.
# 
# 
## @lc code=start
using LeetCode

function combination_sum4(nums::Vector{Int}, target::Int)
    dp = OffsetArray(fill(0, target + 1), -1)
    dp[0] = 1
    for i in 1:target, num in nums
        (num <= i) && (dp[i] += dp[i - num])
    end
    return dp[end]
end
## @lc code=end
