//
//  2391.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 2/13/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2391
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2391: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 60ms, 코드 길이: 447B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let pron = readLine()!.map { String($0) }
            let w = Int(readLine()!)!
            var mini = (Int.max, "")

            for _ in 0..<w {
                let cand = readLine()!.map { String($0) }
                var count = 0

                for idx in cand.indices where pron[idx] != cand[idx] {
                    count += 1
                }

                if mini.0 > count {
                    mini = (count, cand.joined())
                }
            }

            print(mini.1)
        }
    }
}
