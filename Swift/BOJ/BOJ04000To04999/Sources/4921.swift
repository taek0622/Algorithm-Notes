//
//  4921.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 5/2/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4921
//  알고리즘 분류: 구현, 자료 구조

import Shared

public struct BOJ4921: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 60ms, 코드 길이: 1161B
        var idx = 1

        while let input = readLine(), input != "0" {
            let piece = input.map { Int(String($0))! }
            var isValid = true

            if piece.first! != 1 || piece.last! != 2 {
                isValid = false
            }

            if piece.filter { $0 == 1 }.count != piece.filter { $0 == 2 }.count || piece.filter { $0 == 5 }.count != piece.filter { $0 == 6 }.count {
                isValid = false
            }

            for idx in 1..<piece.count where isValid {
                if (piece[idx-1] == 1 || piece[idx-1] == 3) && piece[idx] != 4 && piece[idx] != 5 {
                    isValid = false
                } else if (piece[idx-1] == 4 || piece[idx-1] == 6) && piece[idx] != 2 && piece[idx] != 3 {
                    isValid = false
                } else if (piece[idx-1] == 5 || piece[idx-1] == 7) && piece[idx] != 8 {
                    isValid = false
                } else if piece[idx-1] == 6 && piece[idx] != 2 && piece[idx] != 3 {
                    isValid = false
                } else if piece[idx-1] == 8 && piece[idx] != 6 && piece[idx] != 7 {
                    isValid = false
                } else if idx != piece.count - 1 && piece[idx] == 2 {
                    isValid = false
                }
            }

            print("\(idx). \(isValid ? "VALID" : "NOT")")
            idx += 1
        }
    }
}
