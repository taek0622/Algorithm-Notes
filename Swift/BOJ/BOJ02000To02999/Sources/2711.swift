//
//  2711.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2711
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2711: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 193B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ")
            var words = Array(input[1])
            words.remove(at: Int(input[0])! - 1)
            print(String(words))
        }
    }
}
