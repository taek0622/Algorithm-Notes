//
//  1991.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/16/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1991
//  알고리즘 분류: 트리, 재귀

class BOJ1991: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69116KB, 시간: 8ms, 코드 길이: 1948B
    private func solution1() {
        let N = Int(readLine()!)!
        var tree = [String: [String]]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            tree[input[0], default: []].append(contentsOf: input[1...2])
        }

        print(preorder(tree))
        print(inorder(tree))
        print(postorder(tree))

        func preorder(_ tree: [String: [String]]) -> String {
            var tree = tree
            var result = "A"
            var stack = ["A"]

            while !stack.isEmpty {
                let current = stack.last!

                if tree[current] == [".", "."] {
                    _ = stack.popLast()
                } else if tree[current]![0] != "." {
                    stack.append(tree[current]![0])
                    result += tree[current]![0]
                    tree[current]![0] = "."
                } else {
                    stack.append(tree[current]![1])
                    result += tree[current]![1]
                    tree[current]![1] = "."
                }
            }

            return result
        }

        func inorder(_ tree: [String: [String]]) -> String {
            var tree = tree
            var result = ""
            var stack = ["A"]

            while !stack.isEmpty {
                let current = stack.last!

                if tree[current] == [".", "."] {
                    result += stack.popLast()!
                } else if tree[current]![0] == "." {
                    stack.append(tree[stack.popLast()!]![1])
                    tree[current]![1] = "."
                    result += current
                } else {
                    stack.append(tree[current]![0])
                    tree[current]![0] = "."
                }
            }

            return result
        }

        func postorder(_ tree: [String: [String]]) -> String {
            var tree = tree
            var result = ""
            var stack = ["A"]

            while !stack.isEmpty {
                let current = stack.last!

                if tree[current] == [".", "."] {
                    result += stack.popLast()!
                } else if tree[current]![0] == "." {
                    stack.append(tree[current]![1])
                    tree[current]![1] = "."
                } else {
                    stack.append(tree[current]![0])
                    tree[current]![0] = "."
                }
            }

            return result
        }
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 453B
    private func solution2() {
        let N = Int(readLine()!)!
        var tree = [String: [String]]()
        var result = ["", "", ""]

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            tree[input[0]] = [input[1], input[2]]
        }

        order("A")

        result.forEach {
            print($0)
        }

        func order(_ node: String) {
            if node == "." {
                return
            }

            result[0] += node
            order(tree[node]![0])
            result[1] += node
            order(tree[node]![1])
            result[2] += node
        }
    }
}
