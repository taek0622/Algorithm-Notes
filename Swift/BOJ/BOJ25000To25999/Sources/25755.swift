//
//  25755.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 11/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25755
//  알고리즘 분류: 구현

import Shared

public struct BOJ25755: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 653B
        let WN = readLine()!.split(separator: " ").map { String($0) }
        let N = Int(WN[1])!
        var array = Array(repeating: Array(repeating: "", count: N), count: N)

        for idx in 0..<N {
            var input = readLine()!.split(separator: " ").map { String($0) }

            for col in 0..<N {
                if input[col] == "2" { input[col] = "5" }
                else if input[col] == "5" { input[col] = "2" }
                else if input[col] != "1" && input[col] != "8" { input[col] = "?" }
            }

            if WN[0] == "L" || WN[0] == "R" {
                array[idx] = input.reversed()
            } else {
                array[N-idx-1] = input
            }
        }

        print(array.map { $0.joined(separator: " ") }.joined(separator: "\n"))
    }
}
