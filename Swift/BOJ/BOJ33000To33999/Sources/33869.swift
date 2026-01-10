//
//  33869.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 1/10/26.
//

//  문제 링크: https://www.acmicpc.net/problem/33869
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ33869: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 622B
        let W = readLine()!.map { Int($0.asciiValue!) }
        var char = Set<Int>()
        var trans = Array(repeating: "", count: 26)
        var (transIdx, wIdx, seq) = (0, 0, 65)

        while transIdx < 26 {
            if wIdx < W.count {
                if char.insert(W[wIdx]).inserted {
                    trans[transIdx] = String(Character(UnicodeScalar(W[wIdx])!))
                    transIdx += 1
                }

                wIdx += 1
            } else {
                while !char.insert(seq).inserted {
                    seq += 1
                }

                trans[transIdx] = String(Character(UnicodeScalar(seq)!))
                transIdx += 1
            }
        }

        print(readLine()!.map { trans[Int($0.asciiValue!) - 65] }.joined())
    }
}
