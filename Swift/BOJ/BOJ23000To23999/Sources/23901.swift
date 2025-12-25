//
//  23901.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 12/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23901
//  알고리즘 분류: 구현

import Shared

public struct BOJ23901: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 294B
        let T = Int(readLine()!)!

        for caseIdx in 1...T {
            let N = Int(readLine()!)!
            let H = readLine()!.split(separator: " ").map { Int($0)! }
            var count = 0

            for ch in 1..<N-1 where H[ch] > H[ch-1] && H[ch] > H[ch+1] {
                count += 1
            }

            print("Case #\(caseIdx): \(count)")
        }
    }
}
