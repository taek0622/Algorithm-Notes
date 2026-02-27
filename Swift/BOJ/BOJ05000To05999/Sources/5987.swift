//
//  5987.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 2/27/26.
//

//  문제 링크: https://www.acmicpc.net/problem/5987
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ5987: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72296KB, 시간: 36ms, 코드 길이: 271B
        let Z = Int(readLine()!)!

        for _ in 0..<Z {
            let NCs = readLine()!.split(separator: " ").map { String($0) }
            let (N, C) = (Int(NCs[0])!, Int(NCs[1])!)
            var s = NCs[2].map { String($0) }

            for _ in 0..<C {
                s = s[N...] + s
            }

            print(s.joined())
        }
    }
}
