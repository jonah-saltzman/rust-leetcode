struct Solution {}

use std::collections::HashMap;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut seen: HashMap<i32, i32> = HashMap::new();
        for (i, n) in nums.iter().enumerate() {
            if let Some(x) = seen.get(&(target - n)) {
                return vec![i as i32, *x]
            } else {
                seen.insert(*n, i as i32);
            }
        }
        Vec::new()
    }
}

fn main() {
    let r = Solution::two_sum(vec![3,2,4], 6);
    println!("{:?}", r);
}
