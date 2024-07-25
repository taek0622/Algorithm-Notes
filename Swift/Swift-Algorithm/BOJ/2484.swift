//
//  2484.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2484
//  알고리즘 분류: 수학, 구현, 많은 조건 분기

class BOJ2484: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1810B
        let N = Int(readLine()!)!
        var maxPrice = 0

        for _ in 0..<N {
            let dice = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
            var price = 0

            if dice[0] == dice[1] && dice[1] == dice[2] && dice[2] == dice[3] {
                price = 50000 + dice[0] * 5000
            } else if (dice[1] == dice[2] && dice[1] == dice[3]) {
                price = 10000 + dice[1] * 1000
            } else if (dice[0] == dice[2] && dice[0] == dice[3]) || (dice[0] == dice[1] && dice[0] == dice[3]) || (dice[0] == dice[1] && dice[0] == dice[2]) {
                price = 10000 + dice[0] * 1000
            } else if dice[0] == dice[1] {
                if dice[2] == dice[3] {
                    price = 2000 + dice[0] * 500 + dice[2] * 500
                } else {
                    price = 1000 + dice[0] * 100
                }
            } else if dice[0] == dice[2] {
                if dice[1] == dice[3] {
                    price = 2000 + dice[0] * 500 + dice[1] * 500
                } else {
                    price = 1000 + dice[0] * 100
                }
            } else if dice[0] == dice[3] {
                if dice[1] == dice[2] {
                    price = 2000 + dice[0] * 500 + dice[1] * 500
                } else {
                    price = 1000 + dice[0] * 100
                }
            } else if dice[1] == dice[2] {
                if dice[0] == dice[3] {
                    price = 2000 + dice[1] * 500 + dice[0] * 500
                } else {
                    price = 1000 + dice[1] * 100
                }
            } else if dice[1] == dice[3] {
                if dice[0] == dice[2] {
                    price = 2000 + dice[1] * 500 + dice[0] * 500
                } else {
                    price = 1000 + dice[1] * 100
                }
            } else if dice[2] == dice[3] {
                if dice[0] == dice[1] {
                    price = 2000 + dice[2] * 500 + dice[0] * 500
                } else {
                    price = 1000 + dice[2] * 100
                }
            } else {
                price = dice[3] * 100
            }

            maxPrice = max(price, maxPrice)
        }

        print(maxPrice)
    }
}
