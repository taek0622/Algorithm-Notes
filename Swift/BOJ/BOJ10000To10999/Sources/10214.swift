//
//  10214.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10214
//  알고리즘 분류: 구현

import Shared

public struct BOJ10214: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 339B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var (yonsei, korea) = (0, 0)
            
            for _ in 0..<9 {
                let YK = readLine()!.split(separator: " ").map { Int($0)! }
                yonsei += YK[0]
                korea += YK[1]
            }
            
            if yonsei == korea {
                print("Draw")
            } else {
                print(yonsei > korea ? "Yonsei" : "Korea")
            }
        }
    }
}
