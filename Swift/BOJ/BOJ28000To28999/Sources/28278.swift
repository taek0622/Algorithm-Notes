//
//  28278.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/08/22.
//

// 문제: https://www.acmicpc.net/problem/28278

import Shared

public struct BOJ28278: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 81596KB, 시간: 1444ms, 코드 길이: 477B
    private func solution1() {
        let N = Int(readLine()!)!
        var stack = [Int]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            switch input[0] {
                case 1:
                stack.append(input[1])
                case 2:
                print(stack.isEmpty ? -1 : stack.removeLast())
                case 3:
                print(stack.count)
                case 4:
                print(stack.isEmpty ? 1 : 0)
                case 5:
                print(stack.isEmpty ? -1 : stack.last!)
                default:
                break
            }
        }
    }

    // 메모리: 82232KB, 시간: 1184ms, 코드 길이: 548B
    private func solution2() {
        let N = Int(readLine()!)!
        var stack = [Int]()
        var result = ""

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            switch input[0] {
            case 1:
                stack.append(input[1])
            case 2:
                result += "\(stack.isEmpty ? -1 : stack.removeLast())\n"
            case 3:
                result += "\(stack.count)\n"
            case 4:
                result += "\(stack.isEmpty ? 1 : 0)\n"
            case 5:
                result += "\(stack.isEmpty ? -1 : stack.last!)\n"
            default:
                break
            }
        }

        print(result)
    }
}
