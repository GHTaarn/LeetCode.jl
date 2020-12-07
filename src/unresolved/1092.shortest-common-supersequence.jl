# ---
# title: 1092. Shortest Common Supersequence 
# id: problem1092
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/shortest-common-supersequence/description/>
# hidden: true
# ---
# 
# Given two strings `str1` and `str2`, return the shortest string that has both
# `str1` and `str2` as subsequences.  If multiple answers exist, you may return
# any of them.
# 
# _(A string S is a subsequence of string T if deleting some number of
# characters from T (possibly 0, and the characters are chosen _anywhere_ from
# T) results in the string S.)_
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: str1 = "abac", str2 = "cab"
#     Output: "cabac"
#     Explanation:
#     str1 = "abac" is a subsequence of "cabac" because we can delete the first "c".
#     str2 = "cab" is a subsequence of "cabac" because we can delete the last "ac".
#     The answer provided is the shortest such string that satisfies these properties.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= str1.length, str2.length <= 1000`
#   2. `str1` and `str2` consist of lowercase English letters.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
