//
//  1551.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1551
//  알고리즘 분류: 수학, 구현, 문자열, 시뮬레이션, 파싱

class BOJ1551: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 307B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var A = readLine()!.split(separator: ",").map { Int($0)! }
        var B = [Int]()

        for _ in 0..<NK[1] {
            for idx in 0..<A.count - 1 {
                B.append(A[idx+1] - A[idx])
            }

            A = B
            B = []
        }

        print(A.map { String($0) }.joined(separator: ","))
    }
}
