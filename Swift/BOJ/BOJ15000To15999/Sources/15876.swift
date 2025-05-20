//
//  15876.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 5/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15876
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ15876: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 414B
        let nk = readLine()!.split(separator: " ").map { Int($0)! }
        var bin = [Character]()
        var number = 0

        while bin.count < nk[0] * 5 {
            for char in String(number, radix: 2) {
                bin.append(char)
            }

            number += 1
        }

        var newBin = bin.enumerated().filter { $0.offset % nk[0] == (nk[1] - 1) }.map { String($0.element) }

        while newBin.count > 5 {
            newBin.removeLast()
        }

        print(newBin.joined(separator: " "))
    }
}
