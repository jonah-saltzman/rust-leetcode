struct Solution {
    memo: Memo,
    profits: Vec<usize>,
    weights: Vec<usize>,
    cap: usize,
    profit_len: usize
}

struct Memo {
    vec: Vec<Vec<Option<usize>>>,
}

impl Memo {
    fn new(profit_len: usize, cap: usize) -> Self {
        let vec: Vec<Vec<Option<usize>>> = vec![vec![None; cap + 1]; profit_len];
        Self { vec }
    }

    fn set(&mut self, i: usize, cap: usize, val: usize) {
        self.vec[i][cap] = Some(val);
        ()
    }

    fn get(&self, i: usize, cap: usize) -> Option<usize> {
        self.vec[i][cap]
    }
}

impl Solution {

    fn new(cap: usize, profits: Vec<usize>, weights: Vec<usize>) -> Self {
        let memo = Memo::new(profits.len(), cap + 1);
        let profit_len = profits.len();
        Self { memo, profits, weights, cap, profit_len }
    }

    fn solve_knapsack(&mut self) -> usize {
        self.recurse(self.cap, 0)
    }

    fn recurse(&mut self, capacity: usize, i: usize) -> usize {
        if capacity <= 0 || i >= self.profit_len { return 0 }
        if let Some(n) = self.memo.get(i, capacity) { return n }
        let mut drip = 0;
        if self.weights[i] <= capacity { 
            drip = drip.max(self.profits[i] + self.recurse(capacity - self.weights[i], i + 1));
        }
        let drop = self.recurse(capacity, i + 1);
        self.memo.set(i, capacity, drop.max(drip));
        self.memo.get(i, capacity).unwrap()
    }
}

fn main() {
    let mut s = Solution::new(7, vec![1, 6, 10, 16], vec![1, 2, 3, 5]);
    let r = s.solve_knapsack();
    println!("{}", r);
}
