//
//  10205.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 8/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10205
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ10205: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 259B
        let K = Int(readLine()!)!

        for x in 1...K {
            var h = Int(readLine()!)!
            let data = readLine()!

            for char in data {
                if char == "b" {
                    h -= 1
                } else {
                    h += 1
                }
            }

            print("Data Set \(x):\n\(h)\n")
        }
    }
}
