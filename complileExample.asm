======= example.sol:C =======
EVM assembly:
... */ "example.sol":25:114  contract C {
  mstore(0x40, 0x80)
  callvalue
    /* "--CODEGEN--":8:17   */
  dup1
    /* "--CODEGEN--":5:7   */
  iszero
  tag_1
  jumpi
    /* "--CODEGEN--":30:31   */
  0x00
    /* "--CODEGEN--":27:28   */
  dup1
    /* "--CODEGEN--":20:32   */
  revert
    /* "--CODEGEN--":5:7   */
tag_1:
... */ "example.sol":25:114  contract C {
  pop
  dataSize(sub_0)
  dup1
  dataOffset(sub_0)
  0x00
  codecopy
  0x00
  return
stop

sub_0: assembly {
... */  /* "example.sol":25:114  contract C {
      mstore(0x40, 0x80)
      callvalue
        /* "--CODEGEN--":8:17   */
      dup1
        /* "--CODEGEN--":5:7   */
      iszero
      tag_1
      jumpi
        /* "--CODEGEN--":30:31   */
      0x00
        /* "--CODEGEN--":27:28   */
      dup1
        /* "--CODEGEN--":20:32   */
      revert
        /* "--CODEGEN--":5:7   */
    tag_1:
... */  /* "example.sol":25:114  contract C {
      pop
      jumpi(tag_2, lt(calldatasize, 0x04))
      shr(0xe0, calldataload(0x00))
      dup1
      0x1fc376f7
      eq
      tag_3
      jumpi
    tag_2:
      0x00
      dup1
      revert
... */  /* "example.sol":55:111  function setA() public returns (bool) {
    tag_3:
      tag_4
      tag_5
      jump      // in
    tag_4:
      mload(0x40)
      dup1
      dup3
      iszero
      iszero
      iszero
      iszero
      dup2
      mstore
      0x20
      add
      swap2
      pop
      pop
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
    tag_5:
        /* "example.sol":87:91  bool */
        /*6001600081905550 = 60 01 60 00 81 55 50 from the opcode, 1 byte at a time.
        60 - stands for: push. So 6001 means push (60) number 01 (01) into the stack
        81 - stands for dup1 or dupplicate the second item
        90 - stands for swap1 - swap the top 2 items
        55 stands for sstore - store the second top item at the position top of the stack
        50 stands for pop - empty the stack
        Also, if the number is bigger than 1 bytes (255), then 2 bytes, 3bytes, 4bytes, ..will be used.
        */
      0x00  /*meaning push 0x00 into the stack */
        /*at this stage, stack = [0x00]*/
        /* "example.sol":104:105  1 */
      0x01  /*meaning push 0x01 (1) into the stack*/
         /*at this stage, stack = [0x01, 0x00]*/
        /* "example.sol":100:101  a */
      0x00
        /*at this stage, stack = [0x00, 0x01, 0x00]*/
        /* "example.sol":100:105  a = 1 */
      dup2  /*81: menaing dupplicate item 2, in this case, it is 0x01*/
        /*at this stage, stack = [0x01, 0x00, 0x01, 0x00]*/
      swap1 /*90: meaning swap the top 2 items*/
        /*at this stage, stack = [0x00, 0x01, 0x01, 0x00], store ={}*/
      sstore    /*55: store 0x01 to position 0x00*/
      /*at this stage, stack = [0x00, 0x01, 0x01, 0x00], store={0x0 => 0x1}*/
      pop   /*50: empty the stack*/
        /*at this stage, stack = [], store={0x0 => 0x1}*/
... */  /* "example.sol":55:111  function setA() public returns (bool) {
      swap1
      jump      // out

    auxdata: 0xa165627a7a723058207042745e65057f598dda1cca99aa0692d3d9c76882d467e2a8db72c95585e1e60029
}

1. CONTRACT NAME + SOLIDITY VERSION + FUNCTION NAME: LAST 36 BYTES
2. FUNCTION NAME: 4 bytes, from bytes 64 to 67


Binary:
//FOR ONE BYTE INPUT, STORAGE 256 BITS
6080604052348015600f57600080fd5b5060   //may stand for "returns"
86   //stand for "bool"
8061001e
6000396000f3fe6080604052   //NOT STAND FOR PUBLIC
348015600f57600080fd5b506004361060285760003560e01c8063   //???
1fc376f7    FUNCTION NAME
14602d575b600080fd5b60  //COULD BE PUCLIB
3360  
4d
565b6040518082  //COULD STAND FOR RETURN
15151515
815260200191505060405180910390f35b
6000                //THE PUSH ADDING IF FUNCTION RETURNS SOMETHING
6001600081905550    //OPERATION OF THE FUNCTION
90
56fea165627a7a72305820    //MAY BE TYPE OF ARGUMENT

7042745e65057f598dda1cca99aa0692d3d9c76882d467e2a8db72c95585e1e60     //CONTRACT INFO
029

//PUCLIC WITHOUT RETURNS
6080604052348015600f57600080fd5b5060
6b
80601d
6000396000f3fe6080604052
348015600f57600080fd5b506004361060285760003560e01c8063
09abce66
14602d575b600080fd5b60
3360  //
35565b005b
6001600081905550    //OPERATION
56fea165627a7a72305820
8152c0740a6ba96b4530072a0aea7e725df4c9d0038c912cc7544d9ad4639b64
0029

//PUBLIC WITHOUT RETURNS, WITH 1 ARGUMENT
6080604052348015600f57600080fd5b5060
8e
8061001e
6000396000f3fe6080604052
348015600f57600080fd5b506004361060285760003560e01c8063
15862aec
14602d575b600080fd5b60
5660048036036020811015604157600080fd5b81019080803590602001909291905050506058565b005b80
60008190555050
56fea165627a7a72305820  
3f0440b4c9b98449b50ab5679e4130d65e2d15f0002a455cbea2f9483bece81f
0029


//CHANGE FUNCTION PUCLIC INTO Internal
6080604052348015600f57600080fd5b5060
35
80601d
6000396000f3fe6080604052
600080fdfea165627a7a72305820b6c86f8c15e4c6e8993ad9c121a76e5555eb7d2c389970fcca627a9b1ca989c5
0029

//changes returns = bool to return = uint256
6080604052348015600f57600080fd5b5060
8
2
8061001e
6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c8063
09abce66
14602d575b600080fd5b6033604
9
565b6040518082
815260200191505060405180910390f35b
60006001600081905550
9056fea165627a7a72305820
37d8ec782699c3c2bb83df7ab09961aa3ba6f777d17a24f36f431e7ce398a375
0029    //fix but not sure it stands for what

6080604052348015600f57600080fd5b5060868061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c8063
71ed8f88
14602d575b600080fd5b6033604d565b604051808215151515815260200191505060405180910390f35b
60006001600081905550
9056fea165627a7a    //TYPE OF IN
7230582013e2e13034da70c62bdac4dc8bfb3d2c9798ebb5f2a3b16247f2a34
9548a451e0029

6080604052348015600f57600080fd5b5060868061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c806309
abce6614602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b600060016000819055509056fea165627a7a
72305820a0ce9d171abaaa690bb38a335027d6e0476f4b017ada88902a9594c
8de40fc270029


6080604052348015600f57600080fd5b5060868061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b600060016000819055509056fea165627a7a
72305820aaf520604bad01b110bfa136cc9b323c08f4c965adb4e5fed91923e
ca227f8eb0029
6080604052348015600f57600080fd5b5060868061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b600060016000819055509056fea165627a7a
72305820e0d98c6d0589cfc660b6211bbd05136e3b8537a2ebb3caa1dea581b
1e41706e10029
6080604052348015600f57600080fd5b5060868061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b600060016000819055509056fea165627a7a
72305820b18af7fb095c636ffc2a8d875e7e1295bfcb207eaa28eec8b3846f5
2d4abedff0029

6080604052348015600f57600080fd5b5060868061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b600060016000819055509056fea165627a7a
72305820b18af7fb095c636ffc2a8d875e7e1295bfcb207eaa28eec8b3846f5
2d4abedff0029

6080604052348015600f57600080fd5b5060868061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b600060016000819055509056fea165627a7a
72305820d31e8d17df3c3fed95a4a0763fe342bda61b9e25570157c1954d1ee
547475ce70029





//FOR ONE BYTE INPUT, , STORAGE 128 BITS
6080604052348015600f57600080fd5b5060f18061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b600060016000806101000a8154816fffffff
ffffffffffffffffffffffffff02191690836ffffffffffffffffffffffffff
fffffff1602179055506002600060106101000a8154816fffffffffffffffff
ffffffffffffffff02191690836fffffffffffffffffffffffffffffffff160
2179055509056fea165627a7a72305820a1f360b44d397b21c2300f622f852f
e98ddaa997b02c832a44765c33545d38730029

//FOR TWO BYTES INPUT, STORAGE 256 BITS
6080604052348015600f57600080fd5b5060878061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b60006104006000819055509056fea165627a
7a7230582028c106730b19ef61ad71c565fbef731518151f947f430c422bbb5
6cfa7b17c5e0029
//FOR THREE BYTES INPUT, STORAGE 256 BITS
6080604052348015600f57600080fd5b5060878061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b60006108006000819055509056fea165627a
7a72305820eeb1865a6789ba8ced47a396a57c39dc28acd54fdbcd28435c1c7
18c9a6570980029
//FOR ONE BUT

60 01 60 00    81 90 55 50
61 04 00 60 00 81 90 55 50
61 08 00 60 00 81 90 55 50

6080604052348015600f57600080fd5b50608e8061001e6000396000f3fe608
0604052348015600f57600080fd5b506004361060285760003560e01c80631f
c376f714602d575b600080fd5b6033604d565b6040518082151515158152602
00191505060405180910390f35b600060016000819055506002600181905550
9056fea165627a7a723058207cabd8f5551586002cc11d5d533cca6a9f17ef9
4e8d84c9af8d09c8fa499a89f0029


======= example.sol:C =======
EVM assembly:
... */ "example.sol":25:140  contract C {
  mstore(0x40, 0x80)
  callvalue
    /* "--CODEGEN--":8:17   */
  dup1
    /* "--CODEGEN--":5:7   */
  iszero
  tag_1
  jumpi
    /* "--CODEGEN--":30:31   */
  0x00
    /* "--CODEGEN--":27:28   */
  dup1
    /* "--CODEGEN--":20:32   */
  revert
    /* "--CODEGEN--":5:7   */
tag_1:
... */ "example.sol":25:140  contract C {
  pop
  dataSize(sub_0)
  dup1
  dataOffset(sub_0)
  0x00
  codecopy
  0x00
  return
stop

sub_0: assembly {
... */  /* "example.sol":25:140  contract C {
      mstore(0x40, 0x80)
      callvalue
        /* "--CODEGEN--":8:17   */
      dup1
        /* "--CODEGEN--":5:7   */
      iszero
      tag_1
      jumpi
        /* "--CODEGEN--":30:31   */
      0x00
        /* "--CODEGEN--":27:28   */
      dup1
        /* "--CODEGEN--":20:32   */
      revert
        /* "--CODEGEN--":5:7   */
    tag_1:
... */  /* "example.sol":25:140  contract C {
      pop
      jumpi(tag_2, lt(calldatasize, 0x04))
      shr(0xe0, calldataload(0x00))
      dup1
      0x1fc376f7
      eq
      tag_3
      jumpi
    tag_2:
      0x00
      dup1
      revert
... */  /* "example.sol":69:137  function setA() public returns (bool) {
    tag_3:
      tag_4
      tag_5
      jump      // in
    tag_4:
      mload(0x40)
      dup1
      dup3
      iszero
      iszero
      iszero
      iszero
      dup2
      mstore
      0x20
      add
      swap2
      pop
      pop
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
    tag_5:
        /* "example.sol":101:105  bool */
      0x00
        /* "example.sol":118:119  1 */
        /* stack = [0x00] */
      0x01
         /* stack = [0x01, 0x00] */
        /* "example.sol":114:115  a */
      0x00
        /* stack = [0x00, 0x01, 0x00] */
      dup1
        /* stack = [0x01, 0x00, 0x01, 0x00] */
        /* "example.sol":114:119  a = 1 */
      0x0100
      /* stack = [0x0100, 0x01, 0x00, 0x01, 0x00] */
      exp
      /* stack = [0x0100, 0x00, 0x01, 0x00] */
      dup2
        /* stack = [0x00, 0x0100, 0x00, 0x01, 0x00] */
      sload
        /* stack = [sload, 0x00, 0x0100, 0x00, 0x01, 0x00] */
      dup2
        /* stack = [0x00, sload, 0x00, 0x0100, 0x00, 0x01, 0x00] */
      0xffffffffffffffffffffffffffffffff
      /* stack = [0xffffffffffffffffffffffffffffffff, 0x00, sload, 0x00, 0x0100, 0x00, 0x01, 0x00] */
      mul
      not   /*256 bit-wise not*/
      and   /*256 bit-wise and*/
      swap1
      dup4
      0xffffffffffffffffffffffffffffffff
      and
      mul
      or
      swap1
      sstore
      pop
        /* "example.sol":130:131  2 */
      0x02
        /* "example.sol":126:127  b */
      0x00
      0x10
        /* "example.sol":126:131  b = 2 */
      0x0100
      exp
      dup2
      sload
      dup2
      0xffffffffffffffffffffffffffffffff
      mul
      not
      and
      swap1
      dup4
      0xffffffffffffffffffffffffffffffff
      and
      mul
      or
      swap1
      sstore
      pop
... */  /* "example.sol":69:137  function setA() public returns (bool) {
      swap1
      jump      // out

    auxdata: 0xa165627a7a72305820a1f360b44d397b21c2300f622f852fe98ddaa997b02c832a44765c33545d38730029
}

Binary:
6080604052348015600f57600080fd5b5060f18061001e6000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c80631fc376f714602d575b600080fd5b6033604d565b604051808215151515815260200191505060405180910390f35b600060016000806101000a8154816fffffffffffffffffffffffffffffffff02191690836fffffffffffffffffffffffffffffffff1602179055506002600060106101000a8154816fffffffffffffffffffffffffffffffff02191690836fffffffffffffffffffffffffffffffff1602179055509056fea165627a7a72305820a1f360b44d397b21c2300f622f852fe98ddaa997b02c832a44765c33545d38730029
