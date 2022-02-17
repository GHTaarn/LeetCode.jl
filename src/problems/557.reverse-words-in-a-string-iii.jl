# ---
# title: 557. Reverse Words in a String III
# id: problem557
# author: zhwang
# date: 2022-02-15
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/reverse-words-in-a-string-iii/description/>
# hidden: true
# ---
# 
# Given a string, you need to reverse the order of characters in each word
# within a sentence while still preserving whitespace and initial word order.
# 
# **Example 1:**  
# 
#     
#     
#     Input: "Let's take LeetCode contest"
#     Output: "s'teL ekat edoCteeL tsetnoc"
#     
# 
# **Note:** In the string, each word is separated by single space and there will
# not be any extra space in the string.
# 
# 
## @lc code=start
using LeetCode
reverse_words_557(s::String) = join([reverse(i) for i in split(s)], " ")

## @lc code=end
