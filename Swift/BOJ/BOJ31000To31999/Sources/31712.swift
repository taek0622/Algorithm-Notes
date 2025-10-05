//
//  31712.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 10/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31712
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 시뮬레이션

import Shared

public struct BOJ31712: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 449B
        let U = readLine()!.split(separator: " ").map { Int($0)! }
        let D = readLine()!.split(separator: " ").map { Int($0)! }
        let P = readLine()!.split(separator: " ").map { Int($0)! }
        var H = Int(readLine()!)!
        var sec = 0

        while true {
            if sec % U[0] == 0 {
                H -= U[1]
            }

            if sec % D[0] == 0 {
                H -= D[1]
            }

            if sec % P[0] == 0 {
                H -= P[1]
            }

            if H <= 0 {
                print(sec)
                break
            }

            sec += 1
        }
    }
}
