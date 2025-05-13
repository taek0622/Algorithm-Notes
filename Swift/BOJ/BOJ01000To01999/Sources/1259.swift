//
//  1259.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/27.
//

//  문제 링크: https://www.acmicpc.net/problem/1259
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ1259: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 566B
    private func solution1() {
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

    // 메모리: 69096KB, 시간: 8ms, 코드 길이: 106B
    private func solution2() {
        while let input = readLine(), input != "0" {
            print(input == String(input.reversed()) ? "yes" : "no")
        }
    }
}
