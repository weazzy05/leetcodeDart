class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> preorderTraversal(TreeNode? root) {
    if (root == null) return [];
    var nodeStack = [];
    nodeStack.add(root);
    List<int> res = [];

    while (nodeStack.length > 0) {
      // Pop the top item from stack and print it
      var mynode = nodeStack[nodeStack.length - 1];
      res.add(mynode.val);
      nodeStack.removeLast();

      // Push right and left children of
      // the popped node to stack
      if (mynode.right != null) {
        nodeStack.add(mynode.right);
      }
      if (mynode.left != null) {
        nodeStack.add(mynode.left);
      }
    }
    return res;
  }
}
