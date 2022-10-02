class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSymmetric(TreeNode? root) {
    return (helperSymm(root?.left, root?.right));
  }

  bool helperSymm(TreeNode? leftTree, TreeNode? rightTree) {
    if (leftTree == null || rightTree == null) {
      return leftTree == rightTree;
    }
    if (leftTree.val != rightTree.val) {
      return false;
    } else {
      return helperSymm(leftTree.right, rightTree.left) &&
          helperSymm(leftTree.left, rightTree.right);
    }
  }
}
//https://leetcode.com/problems/symmetric-tree/submissions/
