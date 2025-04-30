//
//  4563.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4563
//  알고리즘 분류: 수학, 기하학, 정수론, 피타고라스 정리

class BOJ4563: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 120ms, 코드 길이: 451B
        while let input = readLine(), input != "0" {
            let A = Int(input)!
            var count = 0
            let AA = A * A

            for B in 1...A where AA % B == 0 {
                let bigMeasure = (Double(AA)/Double(B)+Double(B))/2
                let smallMeasure = (Double(AA)/Double(B)-Double(B))/2

                if bigMeasure == Double(Int(bigMeasure)) && smallMeasure == Double(Int(smallMeasure)) && smallMeasure > Double(A) {
                    count += 1
                }
            }

            print(count)
        }
    }
}
