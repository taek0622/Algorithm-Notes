//
//  18870.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/05.
//

// 문제: https://www.acmicpc.net/problem/18870

class BOJ18870: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 144924KB, 시간: 1092ms, 코드 길이: 309B
    private func solution1() {
        let N = Int(readLine()!)!
        let points = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = [Int: Int]()
        var count = 0

        for point in points.sorted() where numbers[point] == nil {
            numbers[point] = count
            count += 1
        }

        print(points.map { String(numbers[$0]!) }.joined(separator: " "))
    }

    // 메모리: 144924KB, 시간: 1032ms, 코드 길이: 531B
    private func solution2() {
        let N = Int(readLine()!)!
        let points = readLine()!.split(separator: " ").map { Int(String($0))! }.enumerated().sorted { $0.element < $1.element }
        var counter = Array(repeating: 0, count: N)
        var count = 0
        var prevNum = points.first?.element

        counter[points.first!.offset] = count

        for (offset, element) in points[1...] {
            if prevNum == element {
                counter[offset] = count
            } else {
                count += 1
                counter[offset] = count
            }
            prevNum = element
        }

        print(counter.map { String($0) }.joined(separator: " "))
    }
}
