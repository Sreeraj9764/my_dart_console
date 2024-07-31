import 'dart:ffi';

void main(List<String> arguments) {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    String num1 = "";
    String num2 = "";
    do {
      num1 += "${l1!.val}";
      l1 = l1.next;
    } while (l1?.val != null);
    do {
      num2 += "${l2!.val}";
      l2 = l2.next;
    } while (l2?.val != null);
    BigInt target = BigInt.parse(num1.split('').reversed.join()) +
        BigInt.parse(num2.split('').reversed.join());
    ListNode? targetNode;
    ListNode? currentNode;
    for (String num in target.toString().split("").reversed) {
      final newNode = ListNode(int.parse(num));
      if (targetNode == null) {
        targetNode = newNode;
      } else {
        currentNode?.next = newNode;
      }
      currentNode = newNode;
    }
    print(targetNode);
    return targetNode;
  }

  addTwoNumbers(ListNode(2, ListNode(4, ListNode(9))),
      ListNode(5, ListNode(6, ListNode(4, ListNode(9)))));
}

class ListNode {
  ListNode([this.val = 0, this.next]);
  int val;
  ListNode? next;

  @override
  String toString() {
    return next == null ? "$val" : "$val --> ${next.toString()}";
  }
}
