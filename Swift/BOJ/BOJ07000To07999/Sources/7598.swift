//
//  7598.swift
//  BOJ07000To07999
//
//  Created by 김민택 on 2/3/26.
//

//  문제 링크: https://www.acmicpc.net/problem/7598
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ7598: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 495B
        while let input = readLine(), input != "# 0" {
            let info = input.split(separator: " ").map { String($0) }
            var booking = Int(info[1])!

            while let proc = readLine(), proc != "X 0" {
                let process = proc.split(separator: " ").map { String($0) }
                let n = Int(process[1])!

                if process[0] == "B" && n + booking <= 68 {
                    booking += n
                } else if process[0] == "C" && n <= booking {
                    booking -= n
                }
            }

            print(info[0], booking)
        }
    }
}
