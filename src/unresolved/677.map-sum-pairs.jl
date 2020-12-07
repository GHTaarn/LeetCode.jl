# ---
# title: 677. Map Sum Pairs
# id: problem677
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Trie
# link: <https://leetcode.com/problems/map-sum-pairs/description/>
# hidden: true
# ---
# 
# Implement the `MapSum` class:
# 
#   * `MapSum()` Initializes the `MapSum` object.
#   * `void insert(String key, int val)` Inserts the `key-val` pair into the map. If the `key` already existed, the original `key-value` pair will be overridden to the new one.
#   * `int sum(string prefix)` Returns the sum of all the pairs' value whose `key` starts with the `prefix`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     **Input**
#     ["MapSum", "insert", "sum", "insert", "sum"]
#     [[], ["apple", 3], ["ap"], ["app", 2], ["ap"]]
#     **Output**
#     [null, null, 3, null, 5]
#     
#     **Explanation**
#     MapSum mapSum = new MapSum();
#     mapSum.insert("apple", 3);  
#     mapSum.sum("ap");           // return 3 ( _ap_ ple = 3)
#     mapSum.insert("app", 2);    
#     mapSum.sum("ap");           // return 5 ( _ap_ ple + _ap_ p = 3 + 2 = 5)
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= key.length, prefix.length <= 50`
#   * `key` and `prefix` consist of only lowercase English letters.
#   * `1 <= val <= 1000`
#   * At most `50` calls will be made to `insert` and `sum`.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
