extern crate rand;
use rand::{seq::SliceRandom, thread_rng};

fn is_sorted(arr: &[i32]) -> bool {
    for i in 1..arr.len() {
        if arr[i-1] >= arr[i] {
            return false;
        }
    }
    true
}

fn main() {
    let mut arr: [i32; 8] = [10, 2, 7, 4, 6, 1, 9, 0];
    while !is_sorted(&arr) {
        arr.shuffle(&mut thread_rng());
    }
    println!("{:?}", arr);
}
