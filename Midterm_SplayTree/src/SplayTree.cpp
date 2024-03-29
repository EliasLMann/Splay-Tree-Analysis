// Author: Elias Mann
// Code Modified from: https://github.com/Bibeknam/algorithmtutorprograms/blob/master/data-structures/splay-trees/SplayTree.cpp

#include "SplayTree.h"

SplayTree::SplayTree() {
    mRoot = nullptr;
}

// Pre-Order traversal
// Node->Left Subtree->Right Subtree
void SplayTree::preorder() {
    preOrderHelper(this->mRoot);
}

// In-Order traversal
// Left Subtree -> Node -> Right Subtree
void SplayTree::inorder() {
    inOrderHelper(this->mRoot);
}

// Post-Order traversal
// Left Subtree -> Right Subtree -> Node
void SplayTree::postorder() {
    postOrderHelper(this->mRoot);
}

// search the tree for the key k
// and return the corresponding node
NodePtr SplayTree::searchTree(int k) {
    NodePtr x = searchTreeHelper(this->mRoot, k);
    if (x) {
        splay(x);
    }
    return x;
}

// find the node with the minimum key
NodePtr SplayTree::minimum(NodePtr node) {
    while (node->left != nullptr) {
        node = node->left;
    }
    return node;
}

// find the node with the maximum key
NodePtr SplayTree::maximum(NodePtr node) {
    while (node->right != nullptr) {
        node = node->right;
    }
    return node;
}

// find the successor of a given node
NodePtr SplayTree::successor(NodePtr x) {
    // if the right subtree is not null,
    // the successor is the leftmost node in the
    // right subtree
    if (x->right != nullptr) {
        return minimum(x->right);
    }

    // else it is the lowest ancestor of x whose
    // left child is also an ancestor of x.
    NodePtr y = x->parent;
    while (y != nullptr && x == y->right) {
        x = y;
        y = y->parent;
    }
    return y;
}

// find the predecessor of a given node
NodePtr SplayTree::predecessor(NodePtr x) {
    // if the left subtree is not null,
    // the predecessor is the rightmost node in the
    // left subtree
    if (x->left != nullptr) {
        return maximum(x->left);
    }

    NodePtr y = x->parent;
    while (y != nullptr && x == y->left) {
        x = y;
        y = y->parent;
    }

    return y;
}

// insert the key to the tree in its appropriate position
void SplayTree::insert(int key) {
    // normal BST insert
    NodePtr node = new Node;
    node->parent = nullptr;
    node->left = nullptr;
    node->right = nullptr;
    node->data = key;
    NodePtr y = nullptr;
    NodePtr x = this->mRoot;

    while (x != nullptr) {
        y = x;
        if (node->data < x->data) {
            x = x->left;
        } else {
            x = x->right;
        }
    }

    // y is parent of x
    node->parent = y;
    if (y == nullptr) {
        mRoot = node;
    } else if (node->data < y->data) {
        y->left = node;
    } else {
        y->right = node;
    }

    // splay the node
    splay(node);
}

NodePtr SplayTree::getRoot(){
    return this->mRoot;
}

// delete the node from the tree
void SplayTree::deleteNode(int data) {
    deleteNodeHelper(this->mRoot, data);
}

// print the tree structure on the screen
void SplayTree::prettyPrint() {
    printHelper(this->mRoot, "", true);
}


//called by pre order function, prints contents of nodes with pre order traversal
void SplayTree::preOrderHelper(NodePtr node) {
    if (node != nullptr) {
        cout<<node->data<<" ";
        preOrderHelper(node->left);
        preOrderHelper(node->right);
    }
}

//called by in order function, prints contents of nodes with in order traversal
void SplayTree::inOrderHelper(NodePtr node) {
    if (node != nullptr) {
        inOrderHelper(node->left);
        cout<<node->data<<" ";
        inOrderHelper(node->right);
    }
}

//called by post order function, prints contents of nodes with post order traversal
void SplayTree::postOrderHelper(NodePtr node) {
    if (node != nullptr) {
        postOrderHelper(node->left);
        postOrderHelper(node->right);
        cout<<node->data<<" ";
    }
}

//traverses binary search tree until finds the location of the key
NodePtr SplayTree::searchTreeHelper(NodePtr node, int key) {
    if (node == nullptr || key == node->data) {
        return node;
    }

    if (key < node->data) {
        return searchTreeHelper(node->left, key);
    }
    return searchTreeHelper(node->right, key);
}

//deletes node and rebalances tree
void SplayTree::deleteNodeHelper(NodePtr node, int key) {
    NodePtr x = nullptr;
    NodePtr t, s;
    while (node != nullptr){
        if (node->data == key) {
            x = node;
        }

        if (node->data <= key) {
            node = node->right;
        } else {
            node = node->left;
        }
    }

    if (x == nullptr) {
        cout<<"Couldn't find key in the tree"<<endl;
        return;
    }
    splay(x);
    split(x, s, t); // split the tree
    if (s->left){ // remove x
        s->left->parent = nullptr;
    }
    //s->left is left subtree, t is right subtree
    mRoot = join(s->left, t);
    delete(s);
    s = nullptr;
}

//prints a diagram of the splay tree
void SplayTree::printHelper(NodePtr root, string indent, bool last) {
    // print the tree structure on the screen
    if (root != nullptr) {
        cout<<indent;
        if (last) {
            cout<<"└────";
            indent += "     ";
        } else {
            cout<<"├────";
            indent += "|    ";
        }

        cout<<root->data<<endl;

        printHelper(root->left, indent, false);
        printHelper(root->right, indent, true);
    }
}

// rotate left at node x
void SplayTree::leftRotate(NodePtr x) {
    NodePtr y = x->right;
    x->right = y->left;
    if (y->left != nullptr) {
        y->left->parent = x;
    }
    y->parent = x->parent;
    if (x->parent == nullptr) {
        this->mRoot = y;
    } else if (x == x->parent->left) {
        x->parent->left = y;
    } else {
        x->parent->right = y;
    }
    y->left = x;
    x->parent = y;
}

// rotate right at node x
void SplayTree::rightRotate(NodePtr x) {
    NodePtr y = x->left;
    x->left = y->right;
    if (y->right != nullptr) {
        y->right->parent = x;
    }
    y->parent = x->parent;
    if (x->parent == nullptr) {
        this->mRoot = y;
    } else if (x == x->parent->right) {
        x->parent->right = y;
    } else {
        x->parent->left = y;
    }
    y->right = x;
    x->parent = y;
}

// splaying
void SplayTree::splay(NodePtr x) {
    while (x->parent) {
        if (!x->parent->parent) {
            if (x == x->parent->left) {
                // zig rotation
                rightRotate(x->parent);
            } else {
                // zag rotation
                leftRotate(x->parent);
            }
        } else if (x == x->parent->left && x->parent == x->parent->parent->left) {
            // zig-zig rotation
            rightRotate(x->parent->parent);
            rightRotate(x->parent);
        } else if (x == x->parent->right && x->parent == x->parent->parent->right) {
            // zag-zag rotation
            leftRotate(x->parent->parent);
            leftRotate(x->parent);
        } else if (x == x->parent->right && x->parent == x->parent->parent->left) {
            // zig-zag rotation
            leftRotate(x->parent);
            rightRotate(x->parent);
        } else {
            // zag-zig rotation
            rightRotate(x->parent);
            leftRotate(x->parent);
        }
    }
}

// joins two trees s and t
NodePtr SplayTree::join(NodePtr s, NodePtr t){
    if (!s) {
        return t;
    }

    if (!t) {
        return s;
    }
    //x point to the greatest node in s
    NodePtr x = maximum(s);
    splay(x);
    x->right = t;
    t->parent = x;
    return x;
}

// splits the tree into s (root with left subtree) and t (right subtree)
void SplayTree::split(NodePtr &x, NodePtr &s, NodePtr &t) {
    if (x->right) {
        t = x->right;
        t->parent = nullptr;
    } else {
        t = nullptr;
    }
    s = x;
    s->right = nullptr;
    x = nullptr;
}
