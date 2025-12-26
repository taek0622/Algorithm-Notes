//
//  13456.swift
//  BOJ13000To13999
//
//  Created by 김민택 on 12/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/13456
//  알고리즘 분류: 구현

import Shared

public struct BOJ13456: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 309B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let n = Int(readLine()!)!
            let v = readLine()!.split(separator: " ").map { Int($0)! }
            let u = readLine()!.split(separator: " ").map { Int($0)! }
            var count = 0

            for idx in 0..<n where v[idx] != u[idx] {
                count += 1
            }

            print(count)
        }
    }
}
