# ---
# title: 1115. Print FooBar Alternately
# id: problem1115
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: 
# link: <https://leetcode.com/problems/print-foobar-alternately/description/>
# hidden: true
# ---
# 
# Suppose you are given the following code:
# 
#     
#     
#     class FooBar {
#       public void foo() {
#         for (int i = 0; i < n; i++) {
#           print("foo");
#         }
#       }
#     
#       public void bar() {
#         for (int i = 0; i < n; i++) {
#           print("bar");
#         }
#       }
#     }
#     
# 
# The same instance of `FooBar` will be passed to two different threads. Thread
# A will call `foo()` while thread B will call `bar()`. Modify the given program
# to output "foobar" _n_ times.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 1
#     Output: "foobar"
#     Explanation: There are two threads being fired asynchronously. One of them calls foo(), while the other calls bar(). "foobar" is being output 1 time.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 2
#     Output: "foobarfoobar"
#     Explanation: "foobar" is being output 2 times.
#     
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
