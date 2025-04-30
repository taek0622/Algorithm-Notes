//
//  2343.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2343
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

class BOJ2343: Solvable {
    func run() {
        // 메모리: 76292KB, 시간: 44ms, 코드 길이: 552B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let lectures = readLine()!.split(separator: " ").map { Int($0)! }

        var (left, right) = (lectures.max()!, lectures.reduce(0, +))

        while left < right {
            let mid = (left + right) / 2
            var count = 1
            var sum = 0

            for lecture in lectures {
                if sum + lecture > mid {
                    count += 1
                    sum = lecture
                } else {
                    sum += lecture
                }
            }

            if count <= NM[1] {
                right = mid
            } else {
                left = mid + 1
            }
        }

        print(right)
    }
}
