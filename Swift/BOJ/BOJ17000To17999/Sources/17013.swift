//
//  17013.swift
//  BOJ17000To17999
//
//  Created by 김민택 on 2/8/26.
//

//  문제 링크: https://www.acmicpc.net/problem/17013
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ17013: Solvable {
    public init() {}

    public func run() {
        // 메모리: 71108KB, 시간: 64ms, 코드 길이: 339B
        let flip = readLine()!.map { $0 == "H" }
        var result = [["1", "2"], ["3", "4"]]
        let horiCount = flip.filter { $0 }.count

        if horiCount % 2 == 1 {
            result.swapAt(0, 1)
        }

        if (flip.count - horiCount) % 2 == 1 {
            result[0].swapAt(0, 1)
            result[1].swapAt(0, 1)
        }

        print(result.map { $0.joined(separator: " ") }.joined(separator: "\n"))
    }
}
