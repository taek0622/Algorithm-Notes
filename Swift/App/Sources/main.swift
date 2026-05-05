//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/12/25.
//

// Swift Version Info
// 백준: Swift 5.5.2
// 프로그래머스: Swift 5.2.5
// Samsung SW Expert Academy: 미지원
// Codility: Swift 4
// CODEFORCES: 미지원
// LeetCode: Swift 5.5.2
// CodeUp: 미지원

import Foundation

import Programmers
import Shared

let main = PGM86053()
main.run()

class LinkedList {
    public init() {}

    public func run() {
        var list = LinkedList<Int>()
        print(list)
        list.push(1)
        list.push(2)
        print(list)
        list.insert(3, at: 0)
        print(list)
        list.insert(4, at: 1)
        list.insert(5, at: 1)
        print(list)
        print(list.remove(at: 2)!.value)
        print(list)
        print(list.pop()!.value)
        print(list)
    }

    class Node<T> {
        var value: T
        var next: Node?

        init(value: T, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }

    struct LinkedList<T>: CustomStringConvertible {
        var head: Node<T>?
        var tail: Node<T>?

        var isEmpty: Bool {
            head == nil
        }

        var count: Int {
            var (idx, current) = (0, head)

            while current != nil {
                current = current!.next
                idx += 1
            }

            return idx
        }

        var description: String {
            if isEmpty {
                return "Empty List"
            }

            var current = head
            var list = ""

            while current != nil {
                list += "\(current!.value) -> "
                current = current!.next
            }

            list.removeLast(4)

            return list
        }

        mutating func push(_ data: T) {
            if isEmpty {
                head = Node(value: data)
                tail = head
                return
            }

            tail!.next = Node(value: data)
            tail = tail!.next
        }

        mutating func insert(_ data: T, at idx: Int) {
            if isEmpty {
                push(data)
                return
            }

            if idx == 0 {
                let node = Node(value: data, next: head)
                head = node
                return
            }

            let prev = find(at: idx-1)
            prev!.next = Node(value: data, next: prev!.next)
        }

        mutating func find(at idx: Int) -> Node<T>? {
            var current = (idx: 0, node: head)

            while current.node != nil && current.idx < idx {
                current.node = current.node!.next
                current.idx += 1
            }

            return current.node
        }

        mutating func pop() -> Node<T>? {
            if count == 1 {
                let node = head
                head = nil

                return node
            }

            let node = find(at: count-1)
            let prev = find(at: count-2)
            tail = prev
            tail!.next = nil

            return node
        }

        mutating func remove(at idx: Int) -> Node<T>? {
            if idx == 0 {
                let node = find(at: 0)
                head = find(at: 1)
                return node
            }

            let node = find(at: idx)
            find(at: idx-1)!.next = node!.next

            return node
        }
    }
}

func getAddress(address o: UnsafeRawPointer) -> String {
    String(format: "%p", Int(bitPattern: o))
}

class Ex3_4 {
    public init() {}

    public func run() {
        let A = Polynomial(degree: 3, coef: [4, 3, 5, 0])
        let B = Polynomial(degree: 4, coef: [3, 1, 0, 2, 1])
        let C = addPoly(A, B)

        print("A(x) = \(printPoly(A))")
        print("B(x) = \(printPoly(B))")
        print("C(x) = \(printPoly(C))")
    }

    private func addPoly(_ A: Polynomial, _ B: Polynomial) -> Polynomial {
        var (A_index, B_index, C_index) = (0, 0, 0)
        var (A_degree, B_degree) = (A.degree, B.degree)
        var C = Polynomial(degree: max(A.degree, B.degree))

        while A_index <= A.degree && B_index <= B.degree {
            if A_degree > B_degree {
                C.coef[C_index] = A.coef[A_index]
                C_index += 1
                A_index += 1
                A_degree -= 1
            } else if A_degree == B_degree {
                C.coef[C_index] = A.coef[A_index] + B.coef[B_index]
                C_index += 1
                A_index += 1
                B_index += 1
                A_degree -= 1
                B_degree -= 1
            } else {
                C.coef[C_index] = B.coef[B_index]
                C_index += 1
                B_index += 1
                B_degree -= 1
            }
        }

        return C
    }

    private func printPoly(_ P: Polynomial) -> String {
        var expression = ""
        var degree = P.degree

        for i in 0...P.degree {
            expression += "\(P.coef[i])x^\(degree)\(i < P.degree ? " + " : "")"
            degree -= 1
        }

        return expression
    }

    struct Polynomial {
        var degree: Int
        var coef: [Int]

        init(degree: Int) {
            self.degree = degree
            self.coef = Array(repeating: 0, count: degree+1)
        }

        init(degree: Int, coef: [Int]) {
            self.degree = degree
            self.coef = coef
        }
    }
}

class SequenceList {
    public init() {}

    public func run() {
        var array = [[[1, 2, 3, 4], [5, 6, 7, 8]], [[9, 10, 11, 12], [13, 14, 15, 16]]]
        for i in array.indices {
            for j in array[i].indices {
                for k in array[i][j].indices {
                    withUnsafePointer(to: &array[i][j][k]) {
                        print("&array[\(i)][\(j)][\(k)]: \($0)")
                    }
                }
            }
        }
//        for row in array.indices {
//            for col in array[row].indices {
//                withUnsafePointer(to: &array[row][col]) {
//                    print("&array[\(row)][\(col)]: \($0)")
//                }
//            }
//        }
    }
}
