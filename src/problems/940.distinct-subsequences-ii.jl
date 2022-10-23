# ---
# title: 940. Distinct Subsequences II
# id: problem940
# author: Indigo
# date: 2022-10-14
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/distinct-subsequences-ii/description/>
# hidden: true
# ---
# 
# Given a string `S`, count the number of distinct, non-empty subsequences of
# `S` .
# 
# Since the result may be large, **return the answer modulo`10^9 + 7`**.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: "abc"
#     Output: 7
#     **Explanation** : The 7 distinct subsequences are "a", "b", "c", "ab", "ac", "bc", and "abc".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "aba"
#     Output: 6
#     **Explanation** : The 6 distinct subsequences are "a", "b", "ab", "ba", "aa" and "aba".
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: "aaa"
#     Output: 3
#     **Explanation** : The 3 distinct subsequences are "a", "aa" and "aaa".
#     
# 
# 
# 
# 
# 
# **Note:**
# 
#   1. `S` contains only lowercase letters.
#   2. `1 <= S.length <= 2000`
# 
# 
# 
# 
# 
# 
## @lc code=start
using LeetCode

function distinct_subseq2(s::String)
    arr = zeros(Int, 26)
    for c in codeunits(s)
        arr[c - UInt8('a' - 1)] = (sum(arr) + 1) % 1_000_000_007
    end
    return sum(arr) % 1_000_000_007
end
## @lc code=end
