# ---
# title: 1117. Building H2O
# id: problem1117
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: 
# link: <https://leetcode.com/problems/building-h2o/description/>
# hidden: true
# ---
# 
# There are two kinds of threads, `oxygen` and `hydrogen`. Your goal is to group
# these threads to form water molecules. There is a barrier where each thread
# has to wait until a complete molecule can be formed. Hydrogen and oxygen
# threads will be given `releaseHydrogen` and `releaseOxygen` methods
# respectively, which will allow them to pass the barrier. These threads should
# pass the barrier in groups of three, and they must be able to immediately bond
# with each other to form a water molecule. You must guarantee that all the
# threads from one molecule bond _before_ any other threads from the next
# molecule do.
# 
# In other words:
# 
#   * If an oxygen thread arrives at the barrier when no hydrogen threads are present, it has to wait for two hydrogen threads.
#   * If a hydrogen thread arrives at the barrier when no other threads are present, it has to wait for an oxygen thread and another hydrogen thread.
# 
# We don't have to worry about matching the threads up explicitly; that is, the
# threads do not necessarily know which other threads they are paired up with.
# The key is just that threads pass the barrier in complete sets; thus, if we
# examine the sequence of threads that bond and divide them into groups of
# three, each group should contain one oxygen and two hydrogen threads.
# 
# Write synchronization code for oxygen and hydrogen molecules that enforces
# these constraints.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: "HOH"
#     Output: "HHO"
#     Explanation: "HOH" and "OHH" are also valid answers.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "OOHHHH"
#     Output: "HHOHHO"
#     Explanation: "HOHHHO", "OHHHHO", "HHOHOH", "HOHHOH", "OHHHOH", "HHOOHH", "HOHOHH" and "OHHOHH" are also valid answers.
#     
# 
# 
# 
# **Constraints:**
# 
#   * Total length of input string will be 3 _n_ , where 1 ≤  _n_  ≤ 20.
#   * Total number of `H` will be 2 _n_  in the input string.
#   * Total number of `O` will be _n_  in the input string.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
