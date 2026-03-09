//
//  33967.swift
//  BOJ33000To33999
//
//  Created by 김이안 on 3/9/26.
//

//  문제 링크: https://www.acmicpc.net/problem/33967
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ33967: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72432KB, 시간: 20ms, 코드 길이: 363B
        let N = Int(readLine()!)!
        let blueprint = readLine()!.map { String($0) }
        var count = 0

        for idx in 1..<N {
            if blueprint[idx-1] == "5" || blueprint[idx-1] == "2" {
                count += blueprint[idx] == blueprint[idx-1] ? 2 : 1
            } else if (blueprint[idx-1] == "[") || (blueprint[idx-1] == "]" && blueprint[idx] != "[") {
                count += 1
            }
        }

        print(count)
    }
}
