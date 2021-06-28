# ---
# title: 650. 2 Keys Keyboard
# id: problem650
# author: Indigo
# date: 2021-06-28
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/2-keys-keyboard/description/>
# hidden: true
# ---
# 
# Initially on a notepad only one character 'A' is present. You can perform two
# operations on this notepad for each step:
# 
#   1. `Copy All`: You can copy all the characters present on the notepad (partial copy is not allowed).
#   2. `Paste`: You can paste the characters which are copied **last time**.
# 
# 
# 
# Given a number `n`. You have to get **exactly** `n` 'A' on the notepad by
# performing the minimum number of steps permitted. Output the minimum number of
# steps to get `n` 'A'.
# 
# **Example 1:**
# 
#     
#     
#     Input: 3
#     Output: 3
#     Explanation:
#     Intitally, we have one character 'A'.
#     In step 1, we use **Copy All** operation.
#     In step 2, we use **Paste** operation to get 'AA'.
#     In step 3, we use **Paste** operation to get 'AAA'.
#     
# 
# 
# 
# **Note:**
# 
#   1. The `n` will be in the range [1, 1000].
# 
# 
# 
# 
## @lc code=start
using LeetCode

function min_steps650(n::Int)
    res, k = 0, 2
    while n != 1
        if n % k == 0
            res += k
            n ÷= k
        else
            k += 1
        end
    end
    return res
end
## @lc code=end
