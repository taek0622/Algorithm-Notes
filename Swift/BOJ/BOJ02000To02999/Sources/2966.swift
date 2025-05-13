//
//  2966.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2966
//  알고리즘 분류: 구현

import Shared

public struct BOJ2966: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 682B
        let N = Int(readLine()!)!
        let sanguen = Array("ABC")
        let changyoung = Array("BABC")
        let hyunjin = Array("CCAABB")
        let answer = Array(readLine()!)
        var idx = 0
        var count = (adrian: 0, bruno: 0, goran: 0)

        while idx < N {
            if answer[idx] == sanguen[idx%3] {
                count.adrian += 1
            }

            if answer[idx] == changyoung[idx%4] {
                count.bruno += 1
            }

            if answer[idx] == hyunjin[idx%6] {
                count.goran += 1
            }

            idx += 1
        }

        let maxCount = max(count.adrian, count.bruno, count.goran)

        print(maxCount)

        if maxCount == count.adrian {
            print("Adrian")
        }

        if maxCount == count.bruno {
            print("Bruno")
        }

        if maxCount == count.goran {
            print("Goran")
        }
    }
}
