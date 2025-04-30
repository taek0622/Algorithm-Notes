//
//  13717.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/13717
//  알고리즘 분류: 구현

class BOJ13717: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 508B
        let N = Int(readLine()!)!
        var (totalCandy, maxName, maxCandy) = (0, "", 0)

        for _ in 0..<N {
            let name = readLine()!
            var candies = readLine()!.split(separator: " ").map { Int($0)! }
            var candy = 0

            while candies[1] >= candies[0] {
                let evo = candies[1] / candies[0]
                candy += evo
                candies[1] = candies[1] % candies[0] + 2 * evo
            }

            totalCandy += candy

            if candy > maxCandy {
                (maxName, maxCandy) = (name, candy)
            }
        }

        print("\(totalCandy)\n\(maxName)")
    }
}
