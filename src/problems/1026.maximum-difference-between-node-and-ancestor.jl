# ---
# title: 1026. Maximum Difference Between Node and Ancestor
# id: problem1026
# author: Indigo
# date: 2022-04-14
# difficulty: Medium
# categories: Tree, Depth-first Search
# link: <https://leetcode.com/problems/maximum-difference-between-node-and-ancestor/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, find the maximum value `V` for which there
# exist **different** nodes `A` and `B` where `V = |A.val - B.val|` and `A` is
# an ancestor of `B`.
# 
# A node `A` is an ancestor of `B` if either: any child of `A` is equal to `B`,
# or any child of `A` is an ancestor of `B`.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/09/tmp-tree.jpg)
# 
#     
#     
#     Input: root = [8,3,10,1,6,null,14,null,null,4,7,13]
#     Output: 7
#     Explanation: We have various ancestor-node differences, some of which are given below :
#     |8 - 3| = 5
#     |3 - 7| = 4
#     |8 - 1| = 7
#     |10 - 13| = 3
#     Among all possible differences, the maximum value of 7 is obtained by |8 - 1| = 7.
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/09/tmp-tree-1.jpg)
# 
#     
#     
#     Input: root = [1,null,2,null,0,3]
#     Output: 3
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[2, 5000]`.
#   * `0 <= Node.val <= 105`
# 
# 
## @lc code=start
using LeetCode

function max_ancestor_diff(root::TreeNode{Int})
    res = 0
    function min_max_descendant(root::TreeNode{Int})
        minres, maxres = root.val, root.val
        for child in (:left, :right)
            cd_node = getproperty(root, child)
            !isnothing(cd_node) && continue
            minl, maxl = min_max_descendant(cd_node)
            res = max(res, abs(root.val - minl), abs(root.val - maxl))
            minres = min(minres, minl)
            maxres = max(maxres, maxl)
        end
        return minres, maxres
    end
    min_max_descendant(root)
    return res
end
## @lc code=end
