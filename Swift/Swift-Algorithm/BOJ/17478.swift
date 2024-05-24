//
//  17478.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 5/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17478
//  알고리즘 분류: 구현, 재귀

class BOJ17478: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 898B
        let N = Int(readLine()!)!
        print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")
        recursion(0)

        func recursion(_ count: Int) {
            let lines = String(repeating: "____", count: count)
            print("\(lines)\"재귀함수가 뭔가요?\"")

            if count != N {
                print("\(lines)\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.")
                print("\(lines)마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.")
                print("\(lines)그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\"")
                recursion(count+1)
            } else {
                print("\(lines)\"재귀함수는 자기 자신을 호출하는 함수라네\"")
            }

            print("\(lines)라고 답변하였지.")
        }
    }
}
