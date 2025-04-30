//
//  3190.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/6/23.
//

//  문제 링크: https://www.acmicpc.net/problem/3190
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 덱, 큐

class BOJ3190: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 12ms, 코드 길이: 2261B
        let N = Int(readLine()!)!
        let K = Int(readLine()!)!
        var apple = [(Int, Int)]()
        var path = [Int: String]()

        for _ in 0..<K {
            let xy = readLine()!.split(separator: " ").map { Int(String($0))! }
            apple.append((xy[0], xy[1]))
        }

        let L = Int(readLine()!)!

        for _ in 0..<L {
            let XC = readLine()!.split(separator: " ").map { String($0) }
            path[Int(XC[0])!] = XC[1]
        }

        var snake = [(1, 1)]
        var count = 0
        var dir = 0

        while true {
            let head = snake[0]

            if !(1...N ~= head.0 && 1...N ~= head.1) {
                break
            }

            switch dir {
            case 0:
                if path[count] != nil {
                    if path[count] == "L" {
                        snake.insert((head.0-1, head.1), at: 0)
                        dir = 3
                    } else {
                        snake.insert((head.0+1, head.1), at: 0)
                        dir = 2
                    }
                } else {
                    snake.insert((head.0, head.1+1), at: 0)
                }
            case 1:
                if path[count] != nil {
                    if path[count] == "L" {
                        snake.insert((head.0+1, head.1), at: 0)
                        dir = 2
                    } else {
                        snake.insert((head.0-1, head.1), at: 0)
                        dir = 3
                    }
                } else {
                    snake.insert((head.0, head.1-1), at: 0)
                }
            case 2:
                if path[count] != nil {
                    if path[count] == "L" {
                        snake.insert((head.0, head.1+1), at: 0)
                        dir = 0
                    } else {
                        snake.insert((head.0, head.1-1), at: 0)
                        dir = 1
                    }
                } else {
                    snake.insert((head.0+1, head.1), at: 0)
                }
            default:
                if path[count] != nil {
                    if path[count] == "L" {
                        snake.insert((head.0, head.1-1), at: 0)
                        dir = 1
                    } else {
                        snake.insert((head.0, head.1+1), at: 0)
                        dir = 0
                    }
                } else {
                    snake.insert((head.0-1, head.1), at: 0)
                }
            }

            count += 1

            if (snake.count - 1) != (snake.filter { $0 != snake[0] }.count) {
                break
            }

            if !apple.contains(where: { $0 == snake[0] }) {
                _ = snake.removeLast()
            } else {
                apple.removeAll(where: { $0 == snake[0] })
            }
        }

        print(count)
    }
}
