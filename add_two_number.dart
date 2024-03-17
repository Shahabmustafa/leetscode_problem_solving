class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

ListNode addTwoNumbers(ListNode? l1, ListNode? l2) {
  ListNode dummy = ListNode(0);
  ListNode? p = l1;
  ListNode? q = l2;
  ListNode curr = dummy;
  int carry = 0;

  while (p != null || q != null) {
    int x = (p != null) ? p.val : 0;
    int y = (q != null) ? q.val : 0;
    int sum = carry + x + y;
    carry = sum ~/ 10;
    curr.next = ListNode(sum % 10);
    curr = curr.next!;
    p = p?.next;
    q = q?.next;
  }

  if (carry > 0) {
    curr.next = ListNode(carry);
  }

  // Ensure that the next pointer of the last node is set to null
  if (curr.next != null) {
    curr.next!.next = null;
  }

  return dummy.next!;
}

void main() {
  // Create ListNode objects representing the numbers 20 and 30
  ListNode num1 = ListNode(0);
  num1.next = ListNode(2); // Represents the number 20
  ListNode num2 = ListNode(0);
  num2.next = ListNode(3); // Represents the number 30

  ListNode result = addTwoNumbers(num1.next, num2.next);

  while (result != null) {
    print(result.val);
    result = result.next!;
  }
}
