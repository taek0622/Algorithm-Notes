//
//  18311.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/18311
//  알고리즘 분류: 구현

class BOJ18311: Solvable {
    func run() {
        // 메모리: 76860KB, 시간: 44ms, 코드 길이: 402B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        let distance = readLine()!.split(separator: " ").map { Int($0)! }
        var course = [0]

        for idx in 0..<NK[0] {
            course.append(course[idx] + distance[idx])
        }

        var num = NK[1] % course.last!

        if NK[1] / course.last! != 0 {
            num = course.last! - num
        }

        for idx in 1...NK[0] where course[idx-1]..<course[idx] ~= num {
            print(idx)
            break
        }
    }
}
