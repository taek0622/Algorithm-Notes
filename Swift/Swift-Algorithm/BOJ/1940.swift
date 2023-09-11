//
//  1940.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/11.
//

//  문제 링크: https://www.acmicpc.net/problem/1940
//  알고리즘 분류: 정렬, 두 포인터

class BOJ1940: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 70104KB, 시간: 44ms, 코드 길이: 482B
    private func solution1() {
        let _ = Int(readLine()!)!
        let M = Int(readLine()!)!
        var materials = readLine()!.split(separator: " ").map { Int(String($0))! }.filter { $0 < M }.sorted()
        var count = 0

        while materials.first != materials.last {
            let sum = materials.first! + materials.last!

            if sum == M {
                materials.removeFirst()
                materials.removeLast()
                count += 1
            } else if sum > M {
                materials.removeLast()
            } else {
                materials.removeFirst()
            }
        }

        print(count)
    }

    // 메모리: 70104KB, 시간: 16ms, 코드 길이: 444B
    private func solution2() {
        let _ = Int(readLine()!)!
        let M = Int(readLine()!)!
        let materials = readLine()!.split(separator: " ").map { Int(String($0))! }.filter { $0 < M }.sorted()
        var (idx, last) = (0, materials.count - 1)
        var count = 0

        while idx < last {
            let sum = materials[idx] + materials[last]

            if sum == M {
                idx += 1
                last -= 1
                count += 1
            } else if sum > M {
                last -= 1
            } else {
                idx += 1
            }
        }

        print(count)
    }
}
