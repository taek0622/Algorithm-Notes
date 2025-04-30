//
//  2605.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2605
//  알고리즘 분류: 구현, 자료 구조

class BOJ2605: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 244B
        let N = Int(readLine()!)!
        let nums = readLine()!.split(separator: " ").map { Int($0)! }
        var students = [Int]()

        for idx in nums.indices {
            students.insert(idx+1, at: idx-nums[idx])
        }

        print(students.map { String($0) }.joined(separator: " "))
    }
}
