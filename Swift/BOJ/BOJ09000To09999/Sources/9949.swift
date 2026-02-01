//
//  9949.swift
//  BOJ09000To09999
//
//  Created by 김민택 on 2/1/26.
//

//  문제 링크: https://www.acmicpc.net/problem/9949
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ9949: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 384B
        var caseNum = 1

        while let input = readLine(), input != "# #" {
            let replace = input.split(separator: " ").map { String($0) }
            let n = Int(readLine()!)!
            print("Case \(caseNum)")

            for _ in 0..<n {
                print(readLine()!.map { replace.contains(String($0)) || replace.contains(String($0).lowercased()) ? "_" : String($0) }.joined())
            }
            print()

            caseNum += 1
        }
    }
}
