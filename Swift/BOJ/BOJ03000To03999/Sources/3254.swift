//
//  3254.swift
//  BOJ03000To03999
//
//  Created by 김이안 on 3/7/26.
//

//  문제 링크: https://www.acmicpc.net/problem/3230
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ3254: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 2126B
        enum Caster {
            case none
            case sangkeun
            case jungin

            func print(_ idx: Int) -> String {
                switch self {
                    case .none: return "ss"
                    case .sangkeun: return "sk \(idx)"
                    case .jungin: return "ji \(idx)"
                }
            }
        }

        var board = Array(repeating: Array(repeating: Caster.none, count: 7), count: 6)
        var winner = Caster.none
        var winIdx = 0

        for idx in 1...21 {
            let SJ = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            castKimbap(SJ[0], .sangkeun)
            let firstFound = findFourCount()

            if firstFound != .none {
                winner = .sangkeun
                winIdx = idx
                break
            }

            castKimbap(SJ[1], .jungin)
            let secondFound = findFourCount()

            if secondFound != .none {
                winner = .jungin
                winIdx = idx
                break
            }
        }

        print(winner.print(winIdx))

        func castKimbap(_ col: Int, _ caster: Caster) {
            for row in 0..<6 where board[row][col] == .none {
                board[row][col] = caster
                break
            }
        }

        func findFourCount() -> Caster {
            for row in 0..<6 {
                for col in 0..<7 {
                    if 0..<3 ~= row {
                        if 0..<4 ~= col && board[row][col] != .none && board[row][col] == board[row+1][col+1] && board[row][col] == board[row+2][col+2] && board[row][col] == board[row+3][col+3] {
                            return board[row][col]
                        }

                        if 3..<7 ~= col && board[row][col] != .none && board[row][col] == board[row+1][col-1] && board[row][col] == board[row+2][col-2] && board[row][col] == board[row+3][col-3] {
                            return board[row][col]
                        }

                        if board[row][col] != .none && board[row][col] == board[row+1][col] && board[row][col] == board[row+2][col] && board[row][col] == board[row+3][col] {
                            return board[row][col]
                        }
                    }

                    if 0..<4 ~= col && board[row][col] != .none && board[row][col] == board[row][col+1] && board[row][col] == board[row][col+2] && board[row][col] == board[row][col+3] {
                        return board[row][col]
                    }
                }
            }

            return .none
        }
    }
}
