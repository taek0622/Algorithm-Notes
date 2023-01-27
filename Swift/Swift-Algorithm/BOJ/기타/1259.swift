//
//  1259.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/27.
//

// 문제: https://www.acmicpc.net/problem/1259

class BOJ1259: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 566B
        checkPalindrome(readLine()!)

        func checkPalindrome(_ number: String) {
            if number == "0" {
                return
            }

            var left = 0
            var right = number.count - 1

            if left == right {
                print("yes")
            }

            while left < right {
                if number[number.index(number.startIndex, offsetBy: left)] != number[number.index(number.startIndex, offsetBy: right)] {
                    print("no")
                    break
                }

                left += 1
                right -= 1

                if left >= right {
                    print("yes")
                }
            }

            checkPalindrome(readLine()!)
        }
    }
}
