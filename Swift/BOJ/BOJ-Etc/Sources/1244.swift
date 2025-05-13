//
//  1244.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/27.
//

// 문제: https://www.acmicpc.net/problem/1244

import Shared

public struct BOJ1244: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 800B
        let N = Int(readLine()!)!
        var switchs = readLine()!.split(separator: " ").map { $0 == "1" }
        let sequence = Int(readLine()!)!

        for _ in 0..<sequence {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input[0] == 1 {
                for idx in switchs.indices where (idx + 1) % input[1] == 0 {
                    switchs[idx].toggle()
                }
            } else {
                var idx = 1
                switchs[input[1]-1].toggle()
                while input[1]-idx > 0 && input[1]+idx <= N && switchs[input[1]-1-idx] == switchs[input[1]-1+idx] {
                    switchs[input[1]-1-idx].toggle()
                    switchs[input[1]-1+idx].toggle()

                    idx += 1
                }
            }
        }

        for idx in switchs.indices {
            print(switchs[idx] ? 1 : 0, terminator: " ")

            if (idx+1) % 20 == 0 {
                print()
            }
        }
    }
}
