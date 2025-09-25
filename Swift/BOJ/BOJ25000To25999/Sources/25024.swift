//
//  25024.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 9/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25024
//  알고리즘 분류: 구현

import Shared

public struct BOJ25024: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 20ms, 코드 길이: 483B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let xy = readLine()!.split(separator: " ").map { Int($0)! }
            var result = "\(0..<24 ~= xy[0] && 0..<60 ~= xy[1] ? "Yes" : "No") "

            if (1...12 ~= xy[0] && 1...29 ~= xy[1]) || (1...12 ~= xy[0] && xy[0] != 2 && xy[1] == 30) || (xy[1] == 31 && (xy[0] == 1 || xy[0] == 3 || xy[0] == 5 || xy[0] == 7 || xy[0] == 8 || xy[0] == 10 || xy[0] == 12)) {
                result += "Yes"
            } else {
                result += "No"
            }

            print(result)
        }
    }
}
