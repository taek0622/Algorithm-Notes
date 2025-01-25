//
//  18221.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/18221
//  알고리즘 분류: 구현, 기하학

class BOJ18221: Solvable {
    func run() {
        // 메모리: 81596KB, 시간: 156ms, 코드 길이: 888B
        let N = Int(readLine()!)!
        var professor = (0, 0)
        var seonggyu = (0, 0)
        var students = [(0, 0)]

        for row in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for col in 0..<N {
                if input[col] == 1 {
                    students.append((row, col))
                } else if input[col] == 2 {
                    seonggyu = (row, col)
                } else if input[col] == 5 {
                    professor = (row, col)
                }
            }
        }

        let rowStart = min(professor.0, seonggyu.0)
        let rowEnd = max(professor.0, seonggyu.0)
        let colStart = min(professor.1, seonggyu.1)
        let colEnd = max(professor.1, seonggyu.1)
        let rowDiff = rowEnd - rowStart
        let colDiff = colEnd - colStart
        var count = 0

        if rowDiff * rowDiff + colDiff * colDiff >= 25 {
            for student in students where rowStart...rowEnd ~= student.0 && colStart...colEnd ~= student.1 {
                count += 1
            }
        }

        print(count < 3 ? 0 : 1)
    }
}
