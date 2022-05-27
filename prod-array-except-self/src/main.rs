struct Solution{}

impl Solution {
    pub fn product_except_self(nums: Vec<i32>) -> Vec<i32> {
        let mut prods_left: Vec<i32> = vec![1; nums.len()];
        let mut prods_right: Vec<i32> = vec![1; nums.len()];
        for i in 1..nums.len() {
            prods_left[i] = prods_left[i - 1] * nums[i - 1];
        }
        for i in (0..nums.len() - 1).rev() {
            prods_right[i] = prods_right[i + 1] * nums[i + 1];
        }
        prods_left.iter().enumerate().map(|(i, n)| n * prods_right[i]).collect()
    }
}

fn main() {
    println!("{:?}", Solution::product_except_self(vec![-1,1,0,-3,3]));
}
