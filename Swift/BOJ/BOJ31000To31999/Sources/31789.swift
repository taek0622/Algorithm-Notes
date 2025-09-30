//
//  31789.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 9/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31789
//  알고리즘 분류: 구현

import Shared

public struct BOJ31789: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 273B
        let N = Int(readLine()!)!
        let XS = readLine()!.split(separator: " ").map { Int($0)! }
        var result = "NO"

        for _ in 0..<N {
            let cp = readLine()!.split(separator: " ").map { Int($0)! }

            if XS[0] >= cp[0] && XS[1] < cp[1] {
                result = "YES"
            }
        }

        print(result)
    }
}
