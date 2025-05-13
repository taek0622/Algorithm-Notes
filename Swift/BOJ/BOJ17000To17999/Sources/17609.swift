//
//  17609.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17609
//  알고리즘 분류: 문자열, 투 포인터

import Shared

public struct BOJ17609: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 74092KB, 시간: 300ms, 코드 길이: 919B
    private func solution1() {
        let T = Int(readLine()!)!
        var result = ""

        for _ in 0..<T {
            let string = Array(readLine()!)
            result += "\(checkPalindrome(string))\n"
        }

        print(result)

        func checkPalindrome(_ string: [Character]) -> Int {
            var (left, right) = (0, string.count - 1)
            var deleteCount = 0

            if string == string.reversed() {
                return 0
            }

            while left < right {
                if string[left] == string[right] {
                    left += 1
                    right -= 1
                    continue
                }

                if Array(string[left+1...right]) == Array(string[left+1...right]).reversed() {
                    deleteCount += 1
                    left += 2
                    right -= 1
                } else if Array(string[left...right-1]) == Array(string[left...right-1]).reversed() {
                    deleteCount += 1
                    left += 1
                    right -= 2
                } else {
                    return 2
                }
            }

            return deleteCount > 1 ? 2 : deleteCount
        }
    }

    // 메모리: 72320KB, 시간: 128ms, 코드 길이: 852B
    private func solution2() {
        let T = Int(readLine()!)!
        var result = ""

        for _ in 0..<T {
            let string = Array(readLine()!)
            result += "\(checkPalindrome(string, 0, string.count-1, true))\n"
        }

        print(result)

        func checkPalindrome(_ string: [Character], _ start: Int, _ end: Int, _ isDeleteAvailable: Bool) -> Int {
            var (left, right) = (start, end)
            var isDeleteAvailable = isDeleteAvailable

            while left < right {
                if string[left] == string[right] {
                    left += 1
                    right -= 1
                    continue
                }

                if isDeleteAvailable {
                    isDeleteAvailable = false

                    if checkPalindrome(string, left, right - 1, isDeleteAvailable) != 2 {
                        right -= 1
                    } else {
                        left += 1
                    }
                } else {
                    return 2
                }
            }

            return isDeleteAvailable ? 0 : 1
        }
    }
}
