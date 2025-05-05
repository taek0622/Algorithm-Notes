//
//  25955.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 5/5/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25955
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ25955: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 684B
        let N = Int(readLine()!)!
        let problems = readLine()!.split(separator: " ").map { String($0) }
        var original = problems
        let prefix: [Character] = ["B", "S", "G", "P", "D"]
        var change = [String]()

        original.sort {
            if prefix.firstIndex(of: $0.first!)! == prefix.firstIndex(of: $1.first!)! {
                var front = $0
                var back = $1
                front.removeFirst()
                back.removeFirst()

                return Int(front)! > Int(back)!
            }

            return prefix.firstIndex(of: $0.first!)! < prefix.firstIndex(of: $1.first!)!
        }

        for idx in 0..<N where problems[idx] != original[idx] {
            change.append(original[idx])
        }

        print(change.isEmpty ? "OK" : "KO\n\(change.joined(separator: " "))")
    }
}
