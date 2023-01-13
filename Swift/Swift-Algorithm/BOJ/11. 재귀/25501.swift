//
//  25501.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/05.
//

// 문제: https://www.acmicpc.net/problem/25501

import Foundation

class BOJ25501: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 56ms, 코드 길이: 482B
    private func solution1() {
        var count = 0

        func recursion(_ s: [Character], _ l: Int, _ r: Int) -> (Int, Int) {
            count += 1

            if l >= r { return (1, count) }
            else if s[l] != s[r] { return (0, count) }
            else { return recursion(s, l+1, r-1) }
        }

        func isPalindrome(_ s: [Character]) -> (Int, Int) {
            return recursion(s, 0, s.count - 1)
        }

        let T = Int(readLine()!)!

        for _ in 0..<T {
            count = 0
            let palindrome = isPalindrome(Array(readLine()!))
            print("\(palindrome.0) \(palindrome.1)")
        }
    }

    // 메모리: 69100KB, 시간: 56ms, 코드 길이: 410B
    private func solution2() {
        var count = 0

        func recursion(_ s: [Character], _ l: Int, _ r: Int) -> Int {
            count += 1

            if l >= r { return 1 }
            else if s[l] != s[r] { return 0 }
            else { return recursion(s, l+1, r-1) }
        }

        func isPalindrome(_ s: [Character]) -> Int {
            return recursion(s, 0, s.count - 1)
        }

        let T = Int(readLine()!)!

        for _ in 0..<T {
            count = 0

            print("\(isPalindrome(Array(readLine()!))) \(count)")
        }
    }
}
