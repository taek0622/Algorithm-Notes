//
//  1043.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1043
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 분리 집합

class BOJ1043: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 1171B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var people = Array(0...NM[0])
        var party = [[Int]]()
        var count = 0

        let truth = readLine()!.split(separator: " ").map { Int($0)! }

        if truth[0] != 0 {
            for trueMan in truth[1...] {
                people[trueMan] = 0
            }
        }

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            let members = input[1...].sorted()
            party.append(members)

            for idx in members.indices where idx > 0 {
                union(members[idx-1], members[idx])
            }
        }

        for currentParty in party {
            var isLying = true

            for person in currentParty where find(people[person]) == 0 {
                isLying = false
            }

            if isLying {
                count += 1
            }
        }

        print(count)

        func find(_ number: Int) -> Int {
            if people[number] != number {
                people[number] = find(people[number])
            }

            return people[number]
        }

        func union(_ number1: Int, _ number2: Int) {
            let parent = find(number1)
            let child = find(number2)

            if parent == 0 || child == 0 {
                people[parent] = 0
                people[child] = 0
                return
            }

            if parent != child {
                people[child] = parent
            }
        }
    }
}
