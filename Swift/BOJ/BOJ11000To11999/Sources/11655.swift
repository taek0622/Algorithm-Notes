//
//  11655.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11655
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ11655: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 338B
        let S = readLine()!
        var result = ""

        for s in S {
            let scalar = s.asciiValue!

            if 65...90 ~= scalar {
                result += "\(UnicodeScalar((scalar - 65 + 13) % 26 + 65))"
            } else if 97...122 ~= scalar {
                result += "\(UnicodeScalar((scalar - 97 + 13) % 26 + 97))"
            } else {
                result += "\(s)"
            }
        }

        print(result)
    }
}
