//
//  17042.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 12/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17042
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ17042: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 297B
        var (owner, owners) = (readLine()!, Set<String>())
        owners.insert(owner)
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let Z = readLine()!.split(separator: " ").map { String($0) }

            if Z[1] == owner {
                owner = Z[0]
                owners.insert(Z[0])
            }
        }

        print("\(owner)\n\(owners.count)")
    }
}
