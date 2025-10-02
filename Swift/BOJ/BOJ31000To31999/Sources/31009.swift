//
//  31009.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 10/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31009
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ31009: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 300B
        let N = Int(readLine()!)!
        var jinju = 0
        var prices = [Int]()

        for _ in 0..<N {
            let DC = readLine()!.split(separator: " ").map { String($0) }
            let C = Int(DC[1])!
            prices.append(C)

            if DC[0] == "jinju" {
                jinju = C
            }
        }

        print("\(jinju)\n\(prices.filter { $0 > jinju }.count)")
    }
}
