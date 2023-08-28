//
//  1246.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/28.
//

//  문제 링크: https://www.acmicpc.net/problem/1246
//  알고리즘 분류: 그리디 알고리즘, 정렬

class BOJ1246: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 343B
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var P = [Int]()
        var max = (0, 0)

        for _ in 0..<NM[1] {
            P.append(Int(readLine()!)!)
        }

        P.sort(by: >)

        for idx in P.indices {
            let price = min(NM[0], idx+1) * P[idx]

            if price > max.1 {
                max.0 = P[idx]
                max.1 = price
            }
        }

        print("\(max.0) \(max.1)")
    }
}
