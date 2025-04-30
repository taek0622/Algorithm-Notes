//
//  10845.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/10845
//  알고리즘 분류: 자료 구조, 큐

class BOJ10845: Solvable {
    func run() {
        // 메모리: 69244KB, 시간: 24ms, 코드 길이: 502B
        let N = Int(readLine()!)!
        var queue = [Int]()

        for _ in 0..<N {
            let command = readLine()!.split(separator: " ")

            switch command[0] {
            case "push":
                queue.append(Int(command[1])!)
            case "pop":
                print(queue.isEmpty ? -1 : queue.removeFirst())
            case "size":
                print(queue.count)
            case "empty":
                print(queue.isEmpty ? 1 : 0)
            case "front":
                print(queue.first ?? -1)
            case "back":
                print(queue.last ?? -1)
            default:
                break
            }
        }
    }
}
