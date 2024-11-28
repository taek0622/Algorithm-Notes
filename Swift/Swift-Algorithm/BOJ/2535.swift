//
//  2535.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2535
//  알고리즘 분류: 구현, 정렬

class BOJ2535: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 472B
        let N = Int(readLine()!)!
        var students = [(Int, Int, Int)]()
        var medals = [(Int, Int)]()

        for _ in 0..<N {
            let student = readLine()!.split(separator: " ").map { Int($0)! }
            students.append((student[0], student[1], student[2]))
        }

        students.sort(by: { $0.2 > $1.2 })

        for student in students where medals.count < 3 {
            if medals.filter { $0.0 == student.0 }.count < 2 {
                medals.append((student.0, student.1))
            }
        }

        medals.forEach {
            print($0.0, $0.1)
        }
    }
}
