//
//  6976.swift
//  BOJ06000To06999
//
//  Created by 김민택 on 2/2/26.
//

//  문제 링크: https://www.acmicpc.net/problem/6976
//  알고리즘 분류: 수학, 구현, 사칙연산, 임의 정밀도 / 큰 수 연산

import Shared

public struct BOJ6976: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 656B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let origin = readLine()!
            var num = origin.map { Int(String($0))! }
            print(origin)

            while num.count > 2 {
                let last = num.removeLast()
                num[num.count - 1] -= last

                var minusIdx = num.count - 1

                while num[minusIdx] < 0 {
                    num[minusIdx] += 10
                    minusIdx -= 1
                    num[minusIdx] -= 1
                }

                while num.first! == 0 {
                    num.removeFirst()
                }

                print(num.map { String($0) }.joined())
            }

            print("The number \(origin) is\(Int(num.map { String($0) }.joined())! % 11 == 0 ? "" : " not") divisible by 11.\n")
        }
    }
}
