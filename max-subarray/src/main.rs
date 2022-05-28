struct Solution{}

impl Solution {
    pub fn max_sub_array(mut nums: Vec<i32>) -> i32 {
        let mut max = nums[0];
        for i in 1..nums.len() {
            nums[i] = (nums[i - 1] + nums[i]).max(nums[i]);
            max = max.max(nums[i]);
        }
        max
    }
}

fn main() {
    println!("{}", Solution::max_sub_array(vec![-2,1,-3,4,-1,2,1,-5,4]));
}
