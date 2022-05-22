struct Solution{}

impl Solution {
    pub fn max_profit(prices: Vec<i32>) -> i32 {
        let mut min_left: Option<i32> = None;
        let mut max_profit: i32 = 0;
        for price in prices {
            if let Some(min) = min_left {
                let diff = price - min;
                max_profit = max_profit.max(diff);
                min_left = min_left.min(Some(price));
            } else {
                min_left = Some(price);
            }
        }
        max_profit
    }
}

fn main() {
    let r = Solution::max_profit(vec![7,6,4,3,1]);
    println!("{:?}", r);
}
