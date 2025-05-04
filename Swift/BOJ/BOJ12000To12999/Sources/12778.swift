//
//  12778.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12778
//  알고리즘 분류: 구현

import Shared

public struct BOJ12778: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 335B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let MP = readLine()!.split(separator: " ")
            let problem = readLine()!.split(separator: " ")
            print(MP[1] == "C" ? problem.map { String(Character(String($0)).asciiValue! - 64) }.joined(separator: " ") : problem.map { String(UnicodeScalar(Int($0)! + 64)!) }.joined(separator: " "))
        }
    }
}
