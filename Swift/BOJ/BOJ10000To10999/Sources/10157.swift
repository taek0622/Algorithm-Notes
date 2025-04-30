//
//  10157.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10157
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ10157: Solvable {
    func run() {
        // 메모리: 70036KB, 시간: 28ms, 코드 길이: 1311B
        enum Direction {
            case up, right, down, left
        }

        let CR = readLine()!.split(separator: " ").map { Int($0)! }
        var K = Int(readLine()!)!
        var seat = Array(repeating: Array(repeating: true, count: CR[0]), count: CR[1])
        var (row, col, dir) = (0, 0, Direction.up)

        if K > CR.reduce(1, *) {
            print(0)
        } else {
            seat[row][col] = false
            K -= 1

            while K > 0 {
                move(dir)
                K -= 1
            }

            print(col + 1, row + 1)
        }

        func move(_ direction: Direction) {
            switch direction {
                case .up: moveUp()
                case .right: moveRight()
                case .down: moveDown()
                case .left: moveLeft()
            }
        }

        func moveUp() {
            if row + 1 < CR[1] && seat[row+1][col] {
                seat[row+1][col] = false
                row += 1
            } else {
                dir = .right
                moveRight()
            }
        }

        func moveRight() {
            if col + 1 < CR[0] && seat[row][col+1] {
                seat[row][col+1] = false
                col += 1
            } else {
                dir = .down
                moveDown()
            }
        }

        func moveDown() {
            if row - 1 >= 0 && seat[row-1][col] {
                seat[row-1][col] = false
                row -= 1
            } else {
                dir = .left
                moveLeft()
            }
        }

        func moveLeft() {
            if col - 1 >= 0 && seat[row][col-1] {
                seat[row][col-1] = false
                col -= 1
            } else {
                dir = .up
                moveUp()
            }
        }
    }
}
