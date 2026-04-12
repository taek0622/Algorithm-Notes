//
//  2011.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/12/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2011
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ2011: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 644B
        let crypt = readLine()!.map { Int(String($0))! }
        var prev = 0
        var curr = 0

        for idx in crypt.indices {
            var temp = 0

            defer {
                prev = curr
                curr = temp % 1000000
            }

            if idx == 0 {
                if 1...9 ~= crypt[idx] {
                    temp = 1
                    continue
                } else {
                    break
                }
            }

            if 1...9 ~= crypt[idx] {
                temp = curr
            } else if crypt[idx-1] != 1 && crypt[idx-1] != 2 {
                temp = 0
                break
            }

            if 10...26 ~= crypt[idx-1] * 10 + crypt[idx] {
                if idx == 1 {
                    temp += 1
                } else {
                    temp += prev
                }
            }
        }

        print(curr)
    }
}
