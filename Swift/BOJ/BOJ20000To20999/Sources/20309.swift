//
//  20309.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/18.
//

// 문제: https://www.acmicpc.net/problem/20309

import Shared

public struct BOJ20309: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 97728KB, 시간: 124ms, 코드 길이: 305B
    private func solution1() {
        let _ = Int(readLine()!)!
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        var result = true

        for idx in numbers.indices {
            if (idx % 2 == 0 && numbers[idx] % 2 != 1) || (idx % 2 == 1 && numbers[idx] % 2 != 0) {
                result = false
                break
            }
        }

        print(result ? "YES" : "NO")
    }

    // 메모리: 97228KB, 시간: 128ms, 코드 길이: 163B
    private func solution2() {
        let _ = Int(readLine()!)!
        let result = readLine()!.split(separator: " ").map { Int($0)! }.enumerated().allSatisfy { $0 % 2 != $1 % 2 }
        print(result ? "YES" : "NO")

        // enumerated() 메서드는 (n, x)로 이루어진 쌍 리턴
        // n은 0부터 x까지의 연속적 숫자(인덱스)
        // x는 해당 순서의 실제 요소

        // allSatisfy()는 콜렉션의 모든 원소가 특정 조건을 만족하는지 확인
    }
}
