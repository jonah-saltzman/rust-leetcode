use core::fmt;

struct Deque {
    queue: Vec<i32>,
    front: usize,
    rear: usize,
    cap: usize,
    len: usize,
}

impl Deque {
    fn new(cap: usize) -> Self {
        Self { queue: vec![0; cap], front: 0, rear: 0, cap, len: 0 }
    }

    fn is_empty(&self) -> bool {
        self.len == 0
    }

    fn push_rear(&mut self, val: i32) -> Result<(), &'static str> {
        if self.is_empty() {
            self.queue[0] = val;
            self.front = 0;
            self.rear = 0;
            self.len += 1;
            return Ok(())
        }
        if self.len >= self.cap { return Err("Full") }
        if self.rear == self.cap - 1 { self.rear = 0; } else { self.rear += 1; }
        self.queue[self.rear] = val;
        self.len += 1;
        Ok(())
    }

    fn get_rear(&self) -> Option<i32> {
        if self.is_empty() { None }
        else { Some(self.queue[self.rear]) }
    }

    fn pop_rear(&mut self) -> Option<i32> {
        if let Some(v) = self.get_rear() {
            if self.len == 1 {
                self.front = 0;
                self.rear = 0;
            } else {
                if self.rear == 0 {
                    self.rear = self.cap - 1;
                } else {
                    self.rear -= 1;
                }
            }
            self.len -= 1;
            return Some(v)
        }
        None
    }

}

impl fmt::Display for Deque {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let mut r = fmt::Result::Err(fmt::Error);
        if self.len == 0 {
            return f.write_str("Empty")
        }
        for i in 0..self.len {
            if self.front + i < self.cap {
                r = f.write_fmt(format_args!("{} ", self.queue[self.front + i]));
            } else {
                r = f.write_fmt(format_args!("{} ", self.queue[(self.front + i) - self.cap]))
            }
        }
        r
    }
}

fn main() -> Result<(), &'static str> {
    let mut my_queue = Deque::new(10);
    println!("{}", my_queue);
    my_queue.push_rear(1)?;
    println!("{}", my_queue);
    my_queue.push_rear(2)?;
    println!("{}", my_queue);
    println!("popped {:?}", my_queue.pop_rear());
    println!("{}", my_queue);
    Ok(())
}
