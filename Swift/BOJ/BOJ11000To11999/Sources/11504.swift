//
//  11504.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11504
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 시뮬레이션

import Shared

public struct BOJ11504: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 485B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let NM = readLine()!.split(separator: " ").map { Int($0)! }
            let X = Int(readLine()!.split(separator: " ").joined())!
            let Y = Int(readLine()!.split(separator: " ").joined())!
            var wheel = readLine()!.split(separator: " ").map { Int($0)! }
            wheel = wheel + wheel
            var count = 0

            for idx in 0..<NM[0] where X...Y ~= Int(wheel[idx..<idx+NM[1]].map { String($0) }.joined())! {
                count += 1
            }

            print(count)
        }
    }
}
