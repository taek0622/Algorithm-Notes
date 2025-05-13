//
//  23056.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23056
//  알고리즘 분류: 구현, 정렬

import Shared

public struct BOJ23056: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 822B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var classes = Array(repeating: [String](), count: NM[0])

        while let input = readLine(), input != "0 0" {
            let student = input.split(separator: " ").map { String($0) }
            let cl = Int(student[0])! - 1

            if classes[cl].count < NM[1] {
                classes[cl].append(student[1])
            }
        }

        for idx in classes.indices where idx % 2 == 0 {
            classes[idx].sorted {
                if $0.count == $1.count {
                    return $0 < $1
                }

                return $0.count < $1.count
            }.forEach {
                print("\(idx+1) \($0)")
            }
        }

        for idx in classes.indices where idx % 2 == 1 {
            classes[idx].sorted {
                if $0.count == $1.count {
                    return $0 < $1
                }

                return $0.count < $1.count
            }.forEach {
                print("\(idx+1) \($0)")
            }
        }
    }
}
