# ---
# title: 1071. Greatest Common Divisor of Strings
# id: problem1071
# author: Indigo
# date: 2022-09-29
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/greatest-common-divisor-of-strings/description/>
# hidden: true
# ---
# 
# For two strings `s` and `t`, we say "`t` divides `s`" if and only if `s = t +
# ... + t`  (`t` concatenated with itself 1 or more times)
# 
# Given two strings str1 and str2, return the largest string `x` such that `x`
# divides both `str1` and `str2`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: str1 = "ABCABC", str2 = "ABC"
#     Output: "ABC"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: str1 = "ABABAB", str2 = "ABAB"
#     Output: "AB"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: str1 = "LEET", str2 = "CODE"
#     Output: ""
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: str1 = "ABCDEF", str2 = "ABC"
#     Output: ""
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= str1.length <= 1000`
#   * `1 <= str2.length <= 1000`
#   * `str1` and `str2` consist of English uppercase letters.
# 
# 
## @lc code=start
using LeetCode

function gcd_of_strings(str1::String, str2::String)
    return str1 * str2 == str2 * str1 ? str1[1:gcd(length(str1), length(str2))] : ""
end
## @lc code=end
