//
//  1268.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1268
//  알고리즘 분류: 구현

class BOJ1268: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 85400KB, 시간: 220ms, 코드 길이: 708B
    private func solution1() {
        let N = Int(readLine()!)!
        var history = Array(repeating: Array(repeating: [Int](), count: 9), count: 5)
        var students = Array(repeating: Set<Int>(), count: N)

        for student in 1...N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for idx in 0..<5 {
                history[idx][input[idx] - 1].append(student)
            }
        }

        for grade in 0..<5 {
            for cl in 0..<9 {
                history[grade][cl].forEach { student in
                    history[grade][cl].forEach {
                        students[student - 1].insert($0)
                    }
                }
            }
        }

        var maxStudents = (0, 0)

        for idx in 0..<N where students[idx].count > maxStudents.1 {
            maxStudents = (idx, students[idx].count)
        }

        print(maxStudents.0 + 1)
    }

    // 메모리: 69108KB, 시간: 16ms, 코드 길이: 497B
    private func solution2() {
        let N = Int(readLine()!)!
        var students = [[Int]]()

        for _ in 0..<N {
            students.append(readLine()!.split(separator: " ").map { Int($0)! })
        }

        var maxStudent = (0, 0)

        for base in 0..<N {
            var count = 0

            for compare in 0..<N where base != compare {
                for grade in 0..<5 where students[base][grade] == students[compare][grade] {
                    count += 1
                    break
                }
            }

            if count > maxStudent.1 {
                maxStudent = (base, count)
            }
        }

        print(maxStudent.0 + 1)
    }
}
