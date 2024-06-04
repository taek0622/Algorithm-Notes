//
//  4101.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4101
//  알고리즘 분류: 구현

class BOJ4101: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 152B
        while let input = readLine(), input != "0 0" {
            let nums = input.split(separator: " ").map { Int($0)! }
            print(nums[0] > nums[1] ? "Yes" : "No")
        }
    }
}
