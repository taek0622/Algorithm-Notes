//
//  16926.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 6/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16926
//  알고리즘 분류: 구현

import Shared

public struct BOJ16926: Solvable {
    public init() {}

    public func run() {
        // 메모리: 71976KB, 시간: 68ms, 코드 길이: 2652B
        let NMR = readLine()!.split(separator: " ").map { Int($0)! }
        var A = Array(repeating: Array(repeating: "", count: NMR[1]), count: NMR[0])
        var result = A

        for row in 0..<NMR[0] {
            A[row] = readLine()!.split(separator: " ").map { String($0) }
        }

        var base = 0
        let limit = min(NMR[0], NMR[1]) / 2

        while base < limit {
            let rotateStep = NMR[2] % ((NMR[0] - base * 2 - 1) * 2 + (NMR[1] - base * 2 - 1) * 2)

            for row in base..<NMR[0]-base {
                if row != base && row != NMR[0]-base-1 {
                    rotate(row, base, rotateStep, base)
                    rotate(row, NMR[1]-base-1, rotateStep, base)
                } else {
                    for col in base..<NMR[1]-base {
                        rotate(row, col, rotateStep, base)
                    }
                }
            }

            base += 1
        }

        result.forEach { print($0.joined(separator: " ")) }

        func rotate(_ cr: Int, _ cc: Int, _ step: Int, _ base: Int) {
            var (row, col) = (cr, cc)
            var step = step

            while step > 0 {
                if row == base {
                    if col == base {
                        if NMR[0]-base-1-row <= step {
                            step -= NMR[0]-base-1-row
                            row = NMR[0]-base-1
                        } else {
                            row += step
                            step = 0
                        }
                    } else {
                        if col-step >= base {
                            col -= step
                            step = 0
                        } else {
                            step -= col-base
                            col = base
                        }
                    }
                } else if row == NMR[0]-base-1 {
                    if col == NMR[1]-base-1 {
                        if NMR[0]-base-1-step >= base {
                            row = NMR[0]-base-1-step
                            step = 0
                        } else {
                            step -= NMR[0]-2*base-1
                            row = base
                        }
                    } else {
                        if col+step <= NMR[1]-base-1 {
                            col += step
                            step = 0
                        } else {
                            step -= NMR[1]-base-1-col
                            col = NMR[1]-base-1
                        }
                    }
                } else {
                    if col == base {
                        if row+step <= NMR[0]-base-1 {
                            row += step
                            step = 0
                        } else {
                            step -= NMR[0]-base-1-row
                            row = NMR[0]-base-1
                        }
                    } else {
                        if row-step >= base {
                            row -= step
                            step = 0
                        } else {
                            step -= row-base
                            row = base
                        }
                    }
                }
            }

            result[row][col] = A[cr][cc]
        }
    }
}
