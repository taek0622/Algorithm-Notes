//
//  10828.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/18.
//

// 문제: https://www.acmicpc.net/problem/10828

class BOJ10828: Solvable {
    func run() {
        // 메모리: 69240KB, 시간: 28ms, 코드 길이: 468B
        let N = Int(readLine()!)!
        var stack = [Int]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }

            switch input[0] {
            case "push":
                stack.append(Int(input[1])!)
            case "pop":
                print(stack.popLast() ?? -1)
            case "size":
                print(stack.count)
            case "empty":
                print(stack.isEmpty ? 1 : 0)
            case "top":
                print(stack.last ?? -1)
            default:
                break
            }
        }
    }
}
