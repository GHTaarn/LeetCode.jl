# ---
# title: 336. Palindrome Pairs
# id: problem336
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Hash Table, String, Trie
# link: <https://leetcode.com/problems/palindrome-pairs/description/>
# hidden: true
# ---
# 
# Given a list of **unique** words, return all the pairs of the  ** _distinct_**
# indices `(i, j)` in the given list, so that the concatenation of the two words
# `words[i] + words[j]` is a palindrome.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: words = ["abcd","dcba","lls","s","sssll"]
#     Output: [[0,1],[1,0],[3,2],[2,4]]
#     Explanation: The palindromes are ["dcbaabcd","abcddcba","slls","llssssll"]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: words = ["bat","tab","cat"]
#     Output: [[0,1],[1,0]]
#     Explanation: The palindromes are ["battab","tabbat"]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: words = ["a",""]
#     Output: [[0,1],[1,0]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= words.length <= 5000`
#   * `0 <= words[i].length <= 300`
#   * `words[i]` consists of lower-case English letters.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
