//
//  2309.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 1/31/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2309
//  알고리즘 분류: 브루트포스 알고리즘, 정렬

import Shared

public struct BOJ2309: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 394B
        var dwarf = Array(repeating: 0, count: 9)

        for idx in 0..<9 {
            dwarf[idx] = Int(readLine()!)!
        }

        let target = dwarf.reduce(0, +) - 100

        outer: for idx1 in 0..<8 {
            for idx2 in (idx1+1)..<9 where dwarf[idx1] + dwarf[idx2] == target {
                dwarf.remove(at: idx2)
                dwarf.remove(at: idx1)
                break outer
            }
        }

        print(dwarf.sorted().map { String($0) }.joined(separator: "\n"))
    }
}
