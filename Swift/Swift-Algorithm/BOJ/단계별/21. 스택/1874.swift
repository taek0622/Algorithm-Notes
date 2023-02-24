//
//  1874.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/24.
//

// 문제: https://www.acmicpc.net/problem/1874

class BOJ1874: Solvable {
    func run() {
        // 메모리: 70348KB, 시간: 332ms, 코드 길이: 500B
        let n = Int(readLine()!)!
        var stack = [Int]()
        var result = ""
        var count = 1

        for _ in 0..<n {
            let number = Int(readLine()!)!

            if stack.last == number {
                stack.removeLast()
                result += "-\n"
            } else if stack.contains(number) {
                result = "NO"
                break
            } else {
                for num in count...number {
                    stack.append(num)
                    result += "+\n"
                    count += 1
                }

                stack.removeLast()
                result += "-\n"
            }
        }

        print(result)
    }
}
