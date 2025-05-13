//
//  14670.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14670
//  알고리즘 분류: 구현, 자료 구조, 해시를 사용한 집합과 맵

import Shared

public struct BOJ14670: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: B
        let N = Int(readLine()!)!
        var disease = Array(repeating: -1, count: 101)

        for _ in 0..<N {
            let M = readLine()!.split(separator: " ").map { Int($0)! }
            disease[M[0]] = M[1]
        }

        let R = Int(readLine()!)!

        for _ in 0..<R {
            let L = readLine()!.split(separator: " ").map { Int($0)! }
            var result = ""

            for symptom in L[1...] {
                let medicine = disease[symptom]

                if medicine == -1 {
                    result = "YOU DIED"
                    break
                }

                result += "\(medicine) "
            }

            print(result)
        }
    }
}
