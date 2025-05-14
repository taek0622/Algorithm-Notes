//
//  4900.swift
//  BOJ04000To04999
//
//  Created by 김민택 on 5/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4900
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ4900: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 88ms, 코드 길이: 892B
        let segmentNumber = ["063": "0", "010": "1", "093": "2", "079": "3", "106": "4", "103": "5", "119": "6", "011": "7", "127": "8", "107": "9"]
        let numberSegment = ["0": "063", "1": "010", "2": "093", "3": "079", "4": "106", "5": "103", "6": "119", "7": "011", "8": "127", "9": "107"]

        while let input = readLine(), input != "BYE" {
            let number = input.split(separator: "+").map { String($0) }
            let (A, B) = (number[0].map { String($0) }, number[1].map { String($0) })
            var (a, b) = ("", "")

            for idx in stride(from: 0, to: A.count, by: 3) {
                a += segmentNumber[A[idx..<idx+3].joined()]!
            }

            for idx in stride(from: 0, to: B.count-1, by: 3) {
                b += segmentNumber[B[idx..<idx+3].joined()]!
            }

            let C = String(Int(a)! + Int(b)!).map { String($0) }
            var c = ""

            for idx in C.indices {
                c += numberSegment[C[idx]]!
            }

            print(input + c)
        }
    }
}
