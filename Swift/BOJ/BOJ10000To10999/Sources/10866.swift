//
//  10866.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10866
//  알고리즘 분류: 구현, 자료 구조, 덱

import Shared

public struct BOJ10866: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 24ms, 코드 길이: 731B
        let N = Int(readLine()!)!
        var deque = [Int]()
        var result = ""

        for _ in 0..<N {
            let command = readLine()!.split(separator: " ")

            switch command[0] {
            case "push_front":
                deque.insert(Int(command[1])!, at: 0)
            case "push_back":
                deque.append(Int(command[1])!)
            case "pop_front":
                result += "\(deque.isEmpty ? -1 : deque.removeFirst())\n"
            case "pop_back":
                result += "\(deque.popLast() ?? -1)\n"
            case "size":
                result += "\(deque.count)\n"
            case "empty":
                result += "\(deque.isEmpty ? 1 : 0)\n"
            case "front":
                result += "\(deque.first ?? -1)\n"
            case "back":
                result += "\(deque.last ?? -1)\n"
            default:
                break
            }
        }

        print(result)
    }
}
