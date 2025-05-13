//
//  11478.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/10.
//

// 문제: https://www.acmicpc.net/problem/11478

import Shared

public struct BOJ11478: Solvable {
    public init() {}

    public func run() {
        let S = String(readLine()!)
        var partOfS = Set<String.SubSequence>()
        var count = 0

//        for startNum in 0..<S.count {
//            for endNum in startNum..<S.count {
//                if partOfS.insert(String(S[startNum...endNum])).inserted {
//                    count += 1
//                }
//            }
//        }
//
//        print(count)

        for startNum in 0..<S.count {
            for endNum in startNum..<S.count {
                let startIndex = S.index(S.startIndex, offsetBy: startNum)
                let endIndex = S.index(S.startIndex, offsetBy: endNum)

                if partOfS.insert(S[startIndex...endIndex]).inserted {
                    count += 1
                }
            }
        }

        print(count)
    }
}
