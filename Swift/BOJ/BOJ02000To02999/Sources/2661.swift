//
//  2661.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2661
//  알고리즘 분류: 백트래킹

import Shared

public struct BOJ2661: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 591B
        let N = Int(readLine()!)!
        var result = [Character]()
        var isGood = false

        checkSequence([])

        print(result.map { String($0) }.joined())

        func checkSequence(_ sequence: [Character]) {
            if isGood {
                return
            }

            let count = sequence.count

            if count > 1 {
                for idx in 1...count/2 where sequence[(count-idx)...] == sequence[count-2*idx..<count-idx] {
                    return
                }
            }

            if count == N {
                result = sequence
                isGood = true
            }

            checkSequence(sequence + ["1"])
            checkSequence(sequence + ["2"])
            checkSequence(sequence + ["3"])
        }
    }
}
