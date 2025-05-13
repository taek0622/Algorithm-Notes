//
//  1706.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1706
//  알고리즘 분류: 구현, 문자열, 정렬, 파싱

import Shared

public struct BOJ1706: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 578B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var puzzle = Array(repeating: Array(repeating: "", count: RC[1]), count: RC[0])
        var words = Set<String>()

        for row in 0..<RC[0] {
            puzzle[row] = readLine()!.map { String($0) }
            puzzle[row].joined().split(separator: "#").forEach {
                words.insert(String($0))
            }
        }

        for col in 0..<RC[1] {
            var word = ""

            for row in 0..<RC[0] {
                word += puzzle[row][col]
            }

            word.split(separator: "#").forEach {
                words.insert(String($0))
            }
        }

        print(words.filter { $0.count > 1 }.sorted()[0])
    }
}
