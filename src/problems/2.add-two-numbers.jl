# ---
# title: 2. Add Two Numbers
# id: problem2
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Linked List, Math
# link: <https://leetcode.com/problems/add-two-numbers/description/>
# hidden: true
# ---
# 
# You are given two **non-empty** linked lists representing two non-negative
# integers. The digits are stored in **reverse order** , and each of their nodes
# contains a single digit. Add the two numbers and return the sum as a linked
# list.
# 
# You may assume the two numbers do not contain any leading zero, except the
# number 0 itself.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/02/addtwonumber1.jpg)
# 
#     
#     
#     Input: l1 = [2,4,3], l2 = [5,6,4]
#     Output: [7,0,8]
#     Explanation: 342 + 465 = 807.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: l1 = [0], l2 = [0]
#     Output: [0]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
#     Output: [8,9,9,9,0,0,0,1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in each linked list is in the range `[1, 100]`.
#   * `0 <= Node.val <= 9`
#   * It is guaranteed that the list represents a number that does not have leading zeros.
# 
# 
## @lc code=start
using LeetCode

function add_two_numbers(l1::ListNode, l2::ListNode)::ListNode
    carry = 0
    fake_head = cur = ListNode()

    while !isnothing(l1) || !isnothing(l2) || !iszero(carry)
        v1, v2 = 0, 0

        if !isnothing(l1)
            v1 = val(l1)
            l1 = next(l1)
        end

        if !isnothing(l2)
            v2 = val(l2)
            l2 = next(l2)
        end

        carry, v = divrem(v1 + v2 + carry, 10)
        next!(cur, ListNode(v))
        cur = next(cur)
        val!(cur, v)
    end
    return next(fake_head)
end
## @lc code=end
