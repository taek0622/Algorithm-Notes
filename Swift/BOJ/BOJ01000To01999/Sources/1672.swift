//
//  1672.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1672
//  알고리즘 분류: 구현, 문자열, 시뮬레이션

import Shared

public struct BOJ1672: Solvable {
    public init() {}

    public func run() {
        // 메모리: 85716KB, 시간: 180ms, 코드 길이: 450B
        let table = ["A": ["A": "A", "G": "C", "C": "A", "T": "G"],
                     "G": ["A": "C", "G": "G", "C": "T", "T": "A"],
                     "C": ["A": "A", "G": "T", "C": "C", "T": "G"],
                     "T": ["A": "G", "G": "A", "C": "G", "T": "T"]]
        _ = readLine()
        var dna = readLine()!.map { String($0) }

        while dna.count > 1 {
            let lastDNA = dna.removeLast()
            let frontDNA = dna.removeLast()

            dna.append(table[frontDNA]![lastDNA]!)
        }

        print(dna[0])
    }
}
