//
//  30458.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30458
//  알고리즘 분류: 구현, 문자열, 애드 혹

import Shared

public struct BOJ30458: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72436KB, 시간: 24ms, 코드 길이: 378B
        let N = Int(readLine()!)!
        let S = readLine()!.map { Character(String($0)) }
        var isPalindrome = true
        var count = Array(repeating: 0, count: 26)

        for idx in 0..<N/2 {
            count[Int(S[idx].asciiValue! - 97)] += 1
            count[Int(S[N - 1 - idx].asciiValue! - 97)] += 1
        }

        for char in count where char % 2 == 1 {
            isPalindrome = false
            break
        }

        print(isPalindrome ? "Yes" : "No")
    }
}
