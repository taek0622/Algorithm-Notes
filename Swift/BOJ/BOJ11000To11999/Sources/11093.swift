//
//  11093.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 2/28/26.
//

//  문제 링크: https://www.acmicpc.net/problem/11093
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ11093: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69492KB, 시간: 56ms, 코드 길이: 700B
    private func solution1() {
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.map { String($0) }
            var divisor = 1

            while divisor * divisor < input.count {
                divisor += 1
            }

            var origin = Array(repeating: Array(repeating: "", count: divisor), count: divisor)
            var secret = origin

            for row in 0..<divisor {
                for col in 0..<divisor {
                    if row*divisor+col >= input.count {
                        break
                    }

                    origin[row][col] = input[row*divisor+col]
                }
            }

            for row in 0..<divisor {
                for col in 0..<divisor {
                    secret[row][col] = origin[divisor-col-1][row]
                }
            }

            print(secret.map { $0.joined() }.joined())
        }
    }

    // 메모리: 69396KB, 시간: 44ms, 코드 길이: 517B
    private func solution2() {
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.map { String($0) }
            var divisor = 1

            while divisor * divisor < input.count {
                divisor += 1
            }

            var message = Array(repeating: Array(repeating: "", count: divisor), count: divisor)

            for row in 0..<divisor {
                for col in 0..<divisor where (divisor-col-1)*divisor+row < input.count {
                    message[row][col] = input[(divisor-col-1)*divisor+row]
                }
            }

            print(message.map { $0.joined() }.joined())
        }
    }

    // 메모리: 69440KB, 시간: 44ms, 코드 길이: 480B
    private func solution3() {
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.map { String($0) }
            var divisor = 1

            while divisor * divisor < input.count {
                divisor += 1
            }

            var message = Array(repeating: "", count: divisor * divisor)

            for row in 0..<divisor {
                for col in 0..<divisor where (divisor-col-1)*divisor+row < input.count {
                    message[row*divisor+col] = input[(divisor-col-1)*divisor+row]
                }
            }

            print(message.joined())
        }
    }
}
