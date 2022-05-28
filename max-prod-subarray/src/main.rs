struct Solution{}

impl Solution {
    pub fn max_product(nums: Vec<i32>) -> i32 {
        let mut max = nums[0];
        let mut prefix_max: Vec<i32> = Vec::with_capacity(nums.len());
        let mut prefix_min: Vec<i32> = Vec::with_capacity(nums.len());
        prefix_max.push(nums[0]);
        prefix_min.push(nums[0]);
        for i in 1..nums.len() {
            prefix_max.push(())
        }
        max
    }
}

fn main() {
    println!("{}", Solution::max_product(vec![2,3,-2,4]));
}
