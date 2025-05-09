//
//  5430.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/3/23.
//

//  문제 링크: https://www.acmicpc.net/problem/5430
//  알고리즘 분류: 구현, 자료 구조, 문자열, 파싱, 덱

import Foundation

import Shared

public struct BOJ5430: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 89904KB, 시간: 268ms, 코드 길이: 909B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let queue = readLine()!.map { String($0) }
            var idx = 0
            let n = Int(readLine()!)!
            var x = readLine()!.trimmingCharacters(in: ["[", "]"]).split(separator: ",").map { String($0) }
            var isReverse = false
            var isError = false
            var (start, end) = (0, n-1)

            for p in queue {
                if p == "R" {
                    isReverse.toggle()
                } else if start > end {
                    isError = true
                    break
                } else if isReverse {
                    end -= 1
                } else {
                    start += 1
                }
            }

            if isError {
                print("error")
            } else {
                var result = ""

                if start <= end {
                    x = Array(x[start...end])

                    if isReverse {
                        x.reverse()
                    }

                    result = x.joined(separator: ",")
                }

                print("[" + result + "]")
            }
        }
    }

    // 메모리: 89868KB, 시간: 196ms, 코드 길이: 888B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let queue = readLine()!.map { $0 }
            var idx = 0
            let n = Int(readLine()!)!
            var x = readLine()!.split(whereSeparator: { $0 == "[" || $0 == "]" || $0 == "," })
            var isReverse = false
            var isError = false
            var (start, end) = (0, n-1)

            for p in queue {
                if p == "R" {
                    isReverse.toggle()
                } else if start > end {
                    isError = true
                    break
                } else if isReverse {
                    end -= 1
                } else {
                    start += 1
                }
            }

            if isError {
                print("error")
            } else {
                var result = ""

                if start <= end {
                    x = Array(x[start...end])

                    if isReverse {
                        x.reverse()
                    }

                    result = x.joined(separator: ",")
                }

                print("[" + result + "]")
            }
        }
    }
}
