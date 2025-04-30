//
//  14563.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14563
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 정수론

class BOJ14563: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 561B
        let T = Int(readLine()!)!
        let N = readLine()!.split(separator: " ").map { Int($0)! }

        for number in N {
            var divisor = 1
            var sum = 0

            while divisor * divisor <= number {
                if number % divisor == 0 {
                    sum += (divisor + number / divisor)

                    if divisor == 1 {
                        sum -= number / divisor
                    }

                    if divisor == number / divisor {
                        sum -= divisor
                    }
                }

                divisor += 1
            }

            print(number == sum ? "Perfect" : (number > sum ? "Deficient" : "Abundant"))
        }
    }
}
