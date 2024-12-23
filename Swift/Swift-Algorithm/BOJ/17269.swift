//
//  17269.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17269
//  알고리즘 분류: 수학, 구현, 사칙연산

class BOJ17269: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 723B
        let dict = [3, 2, 1, 2, 4, 3, 1, 3, 1, 1, 3, 1, 3, 2, 1, 2, 2, 2, 1, 2, 1, 1, 1, 2, 2, 1]
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let names = readLine()!.split(separator: " ").map { String($0) }
        let (name1, name2) = (names[0].map { dict[Int($0.asciiValue!) - 65] }, names[1].map { dict[Int($0.asciiValue!) - 65] })
        var rate = [Int]()

        for idx in 0..<NM.min()! {
            rate.append(name1[idx])
            rate.append(name2[idx])
        }

        rate.append(contentsOf: NM[0] < NM[1] ? name2[NM[0]...] : name1[NM[1]...])

        while rate.count > 2 {
            var temp = [Int]()

            for idx in 1..<rate.count {
                temp.append((rate[idx-1]+rate[idx]) % 10)
            }

            rate = temp
        }

        print("\(Int(rate.map { String($0) }.joined())!)%")
    }
}
