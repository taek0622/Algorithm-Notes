//
//  PGM60061.swift
//  Programmers
//
//  Created by 김이안 on 5/12/26.
//

//  문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/60061
//  문제 분류: 2020 KAKAO BLIND RECRUITMENT

import Foundation

import Shared

public struct PGM60061: Solvable {
    public init() {}

    public func run() {
        print(solution(5, [[1,0,0,1],[1,1,1,1],[2,1,0,1],[2,2,1,1],[5,0,0,1],[5,1,0,1],[4,2,1,1],[3,2,1,1]]) == [[1,0,0],[1,1,1],[2,1,0],[2,2,1],[3,2,1],[4,2,1],[5,0,0],[5,1,0]])
        print(solution(5, [[0,0,0,1],[2,0,0,1],[4,0,0,1],[0,1,1,1],[1,1,1,1],[2,1,1,1],[3,1,1,1],[2,0,0,0],[1,1,1,0],[2,2,0,1]]) == [[0,0,0],[0,1,1],[1,1,1],[2,1,1],[3,1,1],[4,0,0]])
    }

    func solution(_ n: Int, _ build_frame: [[Int]]) -> [[Int]] {
        enum Build {
            case blank
            case column
            case beam
            case joint
        }

        func buildSomething(_ y: Int, _ x: Int, _ target: Build, _ status: inout [[Build]]) {
            if status[y][x] == target { return }
            if status[y][x] == .blank {
                status[y][x] = target
                return
            }

            status[y][x] = .joint
        }

        func hasColumn(_ y: Int, _ x: Int, _ status: [[Build]]) -> Bool {
            return status[y][x] == .column || status[y][x] == .joint
        }

        func hasBeam(_ y: Int, _ x: Int, _ status: [[Build]]) -> Bool {
            return status[y][x] == .beam || status[y][x] == .joint
        }

        func isColumnAvailable(_ y: Int, _ x: Int, _ status: [[Build]]) -> Bool {
            if y == 0 { return true }
            if (y > 0 && hasColumn(y-1, x, status)) || (x > 0 && hasBeam(y, x-1, status)) || hasBeam(y, x, status) { return true }
            return false
        }

        func isBeamAvailable(_ y: Int, _ x: Int, _ status: [[Build]]) -> Bool {
            if (y > 0 && (hasColumn(y-1, x, status) || hasColumn(y-1, x+1, status))) || (x > 0 && hasBeam(y, x-1, status) && hasBeam(y, x+1, status)) { return true }
            return false
        }

        var status = Array(repeating: Array(repeating: Build.blank, count: n+1), count: n+1)

        for build in build_frame {
            let x = build[0]
            let y = build[1]
            let a = build[2]
            let b = build[3]

            if b == 1 { // 설치
                if a == 0 && isColumnAvailable(y, x,status) { // 기둥 설치
                    buildSomething(y, x, .column, &status)
                } else if a == 1 && isBeamAvailable(y, x, status) { // 보 설치
                    buildSomething(y, x, .beam, &status)
                }
            } else { // 삭제
                var newStatus = status
                var isPossible = true

                if a == 0 { // 기둥 삭제
                    if status[y][x] == .joint { newStatus[y][x] = .beam }
                    else if status[y][x] == .column { newStatus[y][x] = .blank }
                    else { continue }

                    if hasColumn(y+1, x, newStatus) && !isColumnAvailable(y+1, x, newStatus) { isPossible = false }
                    if hasBeam(y+1, x, newStatus) && !isBeamAvailable(y+1, x, newStatus) { isPossible = false }
                    if x > 0 && hasBeam(y+1, x-1, newStatus) && !isBeamAvailable(y+1, x-1, newStatus) { isPossible = false }
                } else { // 보 삭제
                    if status[y][x] == .joint { newStatus[y][x] = .column }
                    else if status[y][x] == .beam { newStatus[y][x] = .blank }
                    else { continue }

                    if hasColumn(y, x, newStatus) && !isColumnAvailable(y, x, newStatus) { isPossible = false }
                    if hasColumn(y, x+1, newStatus) && !isColumnAvailable(y, x+1, newStatus) { isPossible = false }
                    if x > 0 && hasBeam(y, x-1, newStatus) && !isBeamAvailable(y, x-1, newStatus) { isPossible = false }
                    if hasBeam(y, x+1, newStatus) && !isBeamAvailable(y, x+1, newStatus) { isPossible = false }
                }

                if isPossible { status = newStatus }
            }
        }

        var res = [[Int]]()

        for col in 0...n {
            for row in 0...n {
                if status[row][col] == .column {
                    res.append([col, row, 0])
                } else if status[row][col] == .beam {
                    res.append([col, row, 1])
                } else if status[row][col] == .joint {
                    res.append([col, row, 0])
                    res.append([col, row, 1])
                }
            }
        }

        return res
    }
}
