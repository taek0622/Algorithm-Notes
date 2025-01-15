//
//  5046.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5046
//  알고리즘 분류: 구현

class BOJ5046: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 347B
        let NBHW = readLine()!.split(separator: " ").map { Int($0)! }
        var minPrice = 500001

        for _ in 0..<NBHW[2] {
            let p = Int(readLine()!)!
            let a = readLine()!.split(separator: " ").map { Int($0)! }

            for num in a where num >= NBHW[0] {
                minPrice = min(minPrice, NBHW[0] * p)
            }
        }

        print(minPrice > NBHW[1] ? "stay home" : minPrice)
    }
}
