//
//  2704.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 11/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2704
//  알고리즘 분류: 구현

import Shared

public struct BOJ2704: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 373B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let time = readLine()!.split(separator: ":").map { String(Int($0)!, radix: 2) }.map { Array(repeating: "0", count: 6-$0.count) + Array($0) }
            var cols = ""

            for col in 0..<6 {
                for row in 0..<3 {
                    cols += "\(time[row][col])"
                }
            }

            print("\(cols) \(time.map { String($0) }.joined())")
        }
    }
}
