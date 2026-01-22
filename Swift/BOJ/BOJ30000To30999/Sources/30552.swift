//
//  30552.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 1/22/26.
//

//  문제 링크: https://www.acmicpc.net/problem/30552
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ30552: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 280B
        let N = Int(readLine()!)!
        var absence = [String]()

        for _ in 0..<N {
            let input = readLine()!

            if input == "Present!" {
                absence.removeLast()
            } else {
                absence.append(input)
            }
        }

        print(absence.isEmpty ? "No Absences" : absence.joined(separator: "\n"))
    }
}
