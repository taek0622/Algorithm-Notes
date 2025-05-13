//
//  2149.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2149
//  알고리즘 분류: 구현, 문자열, 정렬

import Shared

public struct BOJ2149: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 624B
        let key = readLine()!.map { String($0) }.enumerated().sorted { $0.element < $1.element }.map { $0.offset }
        let crypt = readLine()!.map { String($0) }
        var newCrypt = Array(repeating: "", count: crypt.count)
        var plain = ""

        for col in key.indices {
            for row in 0..<crypt.count/key.count {
                newCrypt[row*key.count+col] = crypt[col*(crypt.count/key.count)+row]
            }
        }

        for idx in 0..<crypt.count/key.count {
            var newText = Array(repeating: "", count: key.count)

            for keyIdx in key.indices {
                newText[key[keyIdx]] = newCrypt[idx*key.count+keyIdx]
            }

            plain += "\(newText.joined())"
        }

        print(plain)
    }
}
