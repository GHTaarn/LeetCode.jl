# ---
# title: 537. Complex Number Multiplication
# id: problem537
# author: Indigo
# date: 2021-06-23
# difficulty: Medium
# categories: Math, String
# link: <https://leetcode.com/problems/complex-number-multiplication/description/>
# hidden: true
# ---
# 
# Given two strings representing two [complex
# numbers](https://en.wikipedia.org/wiki/Complex_number).
# 
# You need to return a string representing their multiplication. Note i2 = -1
# according to the definition.
# 
# **Example 1:**  
# 
#     
#     
#     Input: "1+1i", "1+1i"
#     Output: "0+2i"
#     Explanation: (1 + i) * (1 + i) = 1 + i2 + 2 * i = 2i, and you need convert it to the form of 0+2i.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: "1+-1i", "1+-1i"
#     Output: "0+-2i"
#     Explanation: (1 - i) * (1 - i) = 1 + i2 - 2 * i = -2i, and you need convert it to the form of 0+-2i.
#     
# 
# **Note:**
# 
#   1. The input strings will not have extra blank.
#   2. The input strings will be given in the form of **a+bi** , where the integer **a** and **b** will both belong to the range of [-100, 100]. And **the output should be also in this form**.
# 
# 
## @lc code=start
using LeetCode

function complex_number_multiply(num1::String, num2::String)
    Ct = Complex{Int}
    mult = parse(Ct, num1) * parse(Ct, num2)
    return "$(mult.re)+$(mult.im)i"
end
## @lc code=end
