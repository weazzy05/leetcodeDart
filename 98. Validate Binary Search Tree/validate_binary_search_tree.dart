class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isValidBST(TreeNode? root) {
    return validate(root, -2147483649, 2147483648);
  }

  bool validate(TreeNode? node, int minValue, int maxValue) {
    if (node == null) return true;
    if (node.val <= minValue || node.val >= maxValue) return false;

    return validate(node.left, minValue, node.val) &&
        validate(node.right, node.val, maxValue);
  }
}
