//
//  6679.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/26/24.
//

//  문제 링크: https://www.acmicpc.net/problem/6679
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘, 사칙연산

class BOJ6679: Solvable {
    func run() {
        // 메모리: 69092KB, 시간: 8ms, 코드 길이: 394B
        for number in 1000...9999 {
            var num = number
            var sum = (0, 0, 0)

            while num > 0 {
                sum.0 += num % 10
                num /= 10
            }

            num = number

            while num > 0 {
                sum.1 += num % 12
                num /= 12
            }

            num = number

            while num > 0 {
                sum.2 += num % 16
                num /= 16
            }

            if sum.0 == sum.1 && sum.1 == sum.2 {
                print(number)
            }
        }
    }
}
