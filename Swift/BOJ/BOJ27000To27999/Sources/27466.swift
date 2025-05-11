//
//  27466.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27466
//  알고리즘 분류: 구현, 그리디 알고리즘, 문자열

import Shared

public struct BOJ27466: Solvable {
    public init() {}

    public func run() {
        // 메모리: 86632KB, 시간: 48ms, 코드 길이: 449B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let S = readLine()!.map { String($0) }
        var result = [String]()

        for idx in stride(from: NM[0]-1, through: 0, by: -1) where (result.count == 0 && !["A", "E", "I", "O", "U"].contains(S[idx])) || ((result.count == 1 || result.count == 2) && S[idx] == "A") || (3..<NM[1] ~= result.count) {
            result.append(S[idx])
        }

        print(result.count == NM[1] ? "YES\n\(result.reversed().joined())" : "NO")
    }
}
