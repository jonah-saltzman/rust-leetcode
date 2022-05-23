use std::collections::HashSet;

struct Solution {}

impl Solution {
    pub fn contains_duplicate(nums: Vec<i32>) -> bool {
        let mut set = HashSet::<i32>::with_capacity(nums.len());
        !nums.into_iter().all(|n| set.insert(n))
    }
}

fn main() {
    println!("{}", Solution::contains_duplicate(vec![1,1,1,3,3,4,3,2,4,2]));
}
