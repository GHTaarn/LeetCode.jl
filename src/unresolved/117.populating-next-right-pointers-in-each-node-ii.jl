# ---
# title: 117. Populating Next Right Pointers in Each Node II
# id: problem117
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/description/>
# hidden: true
# ---
# 
# Given a binary tree
# 
#     
#     
#     struct Node {
#       int val;
#       Node *left;
#       Node *right;
#       Node *next;
#     }
#     
# 
# Populate each next pointer to point to its next right node. If there is no
# next right node, the next pointer should be set to `NULL`.
# 
# Initially, all next pointers are set to `NULL`.
# 
# 
# 
# **Follow up:**
# 
#   * You may only use constant extra space.
#   * Recursive approach is fine, you may assume implicit stack space does not count as extra space for this problem.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/02/15/117_sample.png)
# 
#     
#     
#     Input: root = [1,2,3,4,5,null,7]
#     Output: [1,#,2,3,#,4,5,7,#]
#     Explanation: Given the above binary tree (Figure A), your function should populate each next pointer to point to its next right node, just like in Figure B. The serialized output is in level order as connected by the next pointers, with '#' signifying the end of each level.
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the given tree is less than `6000`.
#   * `-100 <= node.val <= 100`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
