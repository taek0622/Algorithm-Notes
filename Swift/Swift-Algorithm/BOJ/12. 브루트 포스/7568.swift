//
//  7568.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/07.
//

// 문제: https://www.acmicpc.net/problem/7568

class BOJ7568: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 650B
        let N = Int(readLine()!)!
        var students = [(Int, Int, Int)]()
        var result = ""

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            students.append((input[0], input[1], 1))
        }

        for iteration in students.indices {
            for idx in iteration+1..<students.count {
                if students[iteration].0 > students[idx].0 && students[iteration].1 > students[idx].1 {
                    students[idx].2 += 1
                } else if students[iteration].0 < students[idx].0 && students[iteration].1 < students[idx].1 {
                    students[iteration].2 += 1
                }
            }
        }

        students.forEach {
            result += "\($0.2) "
        }

        print(result)
    }
}
