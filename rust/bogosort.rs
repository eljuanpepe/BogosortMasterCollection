extern crate rand;
use rand::{thread_rng, Rng};

fn shuffle(arr: &mut [i32]) {
    let mut rng = thread_rng();
    for i in 0..arr.len() {
        let j = rng.gen_range(0..arr.len());
        (arr[i], arr[j]) = (arr[j], arr[i]);
    }
}

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
        shuffle(&mut arr);
    }
    println!("{:?}", arr);
}
