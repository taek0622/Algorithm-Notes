//
//  31925.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 5/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31925
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ31925: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69708KB, 시간: 32ms, 코드 길이: 472B
        let N = Int(readLine()!)!
        var shakes = [(String, Int)]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[1] == "hewhak" || input[2] == "winner" || 1...3 ~= Int(input[3])! {
                continue
            }

            shakes.append((input[0], Int(input[4])!))
        }

        shakes.sort { $0.1 < $1.1 }

        while shakes.count > 10 {
            shakes.removeLast()
        }

        print("\(shakes.count)\n\(shakes.map { $0.0 }.sorted { $0 < $1 }.joined(separator: "\n"))")
    }
}
