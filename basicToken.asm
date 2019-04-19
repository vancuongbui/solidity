
======= basicToken.sol:BasicToken =======
EVM assembly:
... */ "basicToken.sol":25:726  contract BasicToken {
  mstore(0x40, 0x80)    /*store value 0x80 = 128 into memory at 0x40 - byte 32th*/
... */ "basicToken.sol":116:249  constructor(uint256 _initialSupply) public {
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
... */ "basicToken.sol":116:249  constructor(uint256 _initialSupply) public {
  pop
  mload(0x40)   /*load value stored there before to stack, stack = [128]*/
  0x20  /*push 0x20 = 32 into stack: stack = [32,128]*/
  dup1  /*dup position 1 = 32,stack = [32,32,128]*/
  bytecodeSize  /*push bytecodeZie into stack,stack = [size,32,32,128]*/
  dup4  /*dub position 4 and put into stack,stack = [128,size,32,32,128]*/
  codecopy  /*code copy required: target position, instruction number to copy, and number of bytes */
            /* look at the stack before this step: stack = [128,size,32,32,128]*/
            /* memery position = 128, instruction = size, number of bytes = 32*/
  dup2  /*dub position 2 and put into stack,stack = [size, 128,size,32,32,128]*/
  add   /*add item 1 + 2,stack = [size + 128,size,32,32,128]*/
  dup1  /*dup item 1,stack = [size + 128,size + 128,size,32,32,128]*/
  0x40  /*push 0x40 = 64 into stack,stack = [64,size + 128,size + 128,size,32,32,128]*/
  mstore    /*store size + 128 to position 0x40 = 64,stack = [64,size + 128,size + 128,size,32,32,128]*/
    /* "--CODEGEN--":13:15   */
  0x20  /*push 0x20 = 32 into stack,stack = [32,64,size + 128,size + 128,size,32,32,128]*/
    /* "--CODEGEN--":8:11   */
  dup2  /*dub item 64 ,stack = [64,32,64,size + 128,size + 128,size,32,32,128]*/
    /* "--CODEGEN--":5:16   */
  lt
    /* "--CODEGEN--":2:4   */
  iszero
  tag_2
  jumpi
    /* "--CODEGEN--":29:30   */
  0x00
    /* "--CODEGEN--":26:27   */
  dup1
    /* "--CODEGEN--":19:31   */
  revert
    /* "--CODEGEN--":2:4   */
tag_2:
  pop
... */ "basicToken.sol":116:249  constructor(uint256 _initialSupply) public {
  mload      /*load initialSupply to stack, stack = [supply]*/
    /* "basicToken.sol":168:180  totalSupply_ */
  0x00      /*push 0x00 to stack, stack = [0x00,supply]*/
    /* "basicToken.sol":168:197  totalSupply_ = _initialSupply */
  dup2      /*dup supply, stack = [supply,0x00,supply]*/
  dup2       /*dup 0x00, stack = [0x00,supply,0x00,supply]*/
  sstore        /*store "supply" to storage at 0x00, stack = [0x00,supply], storage={0x00=>supply}*/
    /* "basicToken.sol":215:225  msg.sender */
  caller        /*push caller to stack, stack = [caller,0x00,supply], storage={0x00=>supply}*/
    /* "basicToken.sol":206:226  balances[msg.sender] */
  dup2      /*dub 0x00, stack = [0x00,caller,0x00,supply], storage={0x00=>supply}*/
  mstore        /*store caller to memory at 0x00, stack = [0x00,supply], storage={0x00=>supply}, memory[0x00=>caller,]*/
    /* "basicToken.sol":206:214  balances */
  0x01      /*push 0x01 to stack, stack = [0x01,0x00,supply], storage={0x00=>supply}, memory[0x00=>caller,]*/
... */ "basicToken.sol":116:249  constructor(uint256 _initialSupply) public {
  0x20      /*push 0x02 to stack, stack = [0x02,0x01,0x00,supply], storage={0x00=>supply}, memory[0x00=>caller,]*/
    /* "basicToken.sol":206:226  balances[msg.sender] */
  mstore    /*store 0x01 to memory 0x02, stack = [0x00,supply],storage={0x00=>supply}, memory[0x00=>caller,0x02=>0x01]*/
  0x40      /*push 0x40 to stack, stack = [0x40,0x00,supply],storage={0x00=>supply}, memory[0x00=>caller,0x02=>0x01]*/
  swap1     /*push 0x40 to stack, stack = [0x00,0x40,supply],storage={0x00=>supply}, memory[0x00=>caller,0x02=>0x01]*/
  keccak256     /*create hash, stack = [hash,supply],storage={0x00=>supply}, memory[0x00=>caller,0x02=>0x01]*/
                /*keccak256 = sha3, with offet = item position 1, length = item position 2*/
    /* "basicToken.sol":206:243  balances[msg.sender] = _initialSupply */
  sstore        /*store supply to storage at hash, stack = [],storage={0x00=>supply, hash=>supply}, memory[0x00=>caller,0x02=>0x01]*/
... */ "basicToken.sol":25:726  contract BasicToken {
  dataSize(sub_0)   /*push dataSize to stack, stack = [dataSize],storage={0x00=>supply, hash=>supply}, memory[0x00=>caller,0x02=>0x01]*/
  dup1      /*dup dataSize to stack, stack = [dataSize,dataSize],storage={0x00=>supply, hash=>supply}, memory[0x00=>caller,0x02=>0x01]*/
  dataOffset(sub_0) /*push dataOffset to stack, stack = [dataOffset,dataSize,dataSize],storage={0x00=>supply, hash=>supply}, memory[0x00=>caller,0x02=>0x01]*/
  0x00      /*push 0x00 to stack, stack = [0x00,dataOffset,dataSize,dataSize],storage={0x00=>supply, hash=>supply}, memory[0x00=>caller,0x02=>0x01]*/
  codecopy  /*memory[destOffset:destOffset+length] = address(this).code[offset:offset+length]*/
            /*stack = [dataSize],storage={0x00=>supply, hash=>supply}, memory[0x00=>caller,0x02=>0x01,destOffset:destOffset+dataSize=>address(this).code[offset:offset+length]]*/
  0x00      /*stack = [0x0,dataSize],storage={0x00=>supply, hash=>supply}, memory[0x00=>caller,0x02=>0x01,destOffset:destOffset+dataSize=>address(this).code[offset:offset+length]]*/
  return
stop

/*   END OF THE CREATION OF THE CONTRACT, INCLUDE THE CONTRACTOR   */

/*   THE FOLLOWING CODES ARE USED FOR DEPLOYED CONTRACT   */

sub_0: assembly {
... */  /* "basicToken.sol":25:726  contract BasicToken {
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
... */  /* "basicToken.sol":25:726  contract BasicToken {
      pop
      jumpi(tag_2, lt(calldatasize, 0x04))
      shr(0xe0, calldataload(0x00))
      dup1
      0x18160ddd
      eq
      tag_3
      jumpi
      dup1
      0x70a08231
      eq
      tag_4
      jumpi
      dup1
      0xa9059cbb
      eq
      tag_5
      jumpi
    tag_2:
      0x00
      dup1
      revert
        /* "basicToken.sol":253:338  function totalSupply() public view returns ... */56) {
    tag_3:
      tag_6
      tag_7
      jump      // in
    tag_6:
      0x40
      dup1
      mload
      swap2
      dup3
      mstore
      mload
      swap1
      dup2
      swap1
      sub
      0x20
      add
      swap1
      return
        /* "basicToken.sol":622:723  function balanceOf(address _owner) public v... */turns (uint256) {
    tag_4:
      tag_6
      0x04
      dup1
      calldatasize
      sub
        /* "--CODEGEN--":13:15   */
      0x20
        /* "--CODEGEN--":8:11   */
      dup2
        /* "--CODEGEN--":5:16   */
      lt
        /* "--CODEGEN--":2:4   */
      iszero
      tag_9
      jumpi
        /* "--CODEGEN--":29:30   */
      0x00
        /* "--CODEGEN--":26:27   */
      dup1
        /* "--CODEGEN--":19:31   */
      revert
        /* "--CODEGEN--":2:4   */
    tag_9:
      pop
        /* "basicToken.sol":622:723  function balanceOf(address _owner) public v... */turns (uint256) {
      calldataload
      sub(shl(0xa0, 0x01), 0x01)
      and
      tag_10
      jump      // in
        /* "basicToken.sol":342:618  function transfer(address _to, uint256 _val... */blic returns (bool) {
    tag_5:
      tag_11
      0x04
      dup1
      calldatasize
      sub
        /* "--CODEGEN--":13:15   */
      0x40
        /* "--CODEGEN--":8:11   */
      dup2
        /* "--CODEGEN--":5:16   */
      lt
        /* "--CODEGEN--":2:4   */
      iszero
      tag_12
      jumpi
        /* "--CODEGEN--":29:30   */
      0x00
        /* "--CODEGEN--":26:27   */
      dup1
        /* "--CODEGEN--":19:31   */
      revert
        /* "--CODEGEN--":2:4   */
    tag_12:
      pop
      sub(shl(0xa0, 0x01), 0x01)
        /* "basicToken.sol":342:618  function transfer(address _to, uint256 _val... */blic returns (bool) {
      dup2
      calldataload
      and
      swap1
      0x20
      add
      calldataload
      tag_13
      jump      // in
    tag_11:
      0x40
      dup1
      mload
      swap2
      iszero
      iszero
      dup3
      mstore
      mload
      swap1
      dup2
      swap1
      sub
      0x20
      add
      swap1
      return
        /* "basicToken.sol":253:338  function totalSupply() public view returns ... */56) {
    tag_7:
        /* "basicToken.sol":297:304  uint256 */
      0x00
        /* "basicToken.sol":320:332  totalSupply_ */
      sload
        /* "basicToken.sol":253:338  function totalSupply() public view returns ... */56) {
      swap1
      jump      // out
        /* "basicToken.sol":622:723  function balanceOf(address _owner) public v... */turns (uint256) {
    tag_10:
      sub(shl(0xa0, 0x01), 0x01)
        /* "basicToken.sol":701:717  balances[_owner] */
      and
        /* "basicToken.sol":678:685  uint256 */
      0x00
        /* "basicToken.sol":701:717  balances[_owner] */
      swap1
      dup2
      mstore
        /* "basicToken.sol":701:709  balances */
      0x01
        /* "basicToken.sol":701:717  balances[_owner] */
      0x20
      mstore
      0x40
      swap1
      keccak256
      sload
      swap1
        /* "basicToken.sol":622:723  function balanceOf(address _owner) public v... */turns (uint256) {
      jump      // out
        /* "basicToken.sol":342:618  function transfer(address _to, uint256 _val... */blic returns (bool) {
    tag_13:
        /* "basicToken.sol":405:409  bool */
      0x00
      sub(shl(0xa0, 0x01), 0x01)
        /* "basicToken.sol":426:443  _to != address(0) */
      dup4
      and
        /* "basicToken.sol":418:444  require(_to != address(0)) */
      tag_17
      jumpi
      0x00
      dup1
      revert
    tag_17:
        /* "basicToken.sol":478:488  msg.sender */
      caller
        /* "basicToken.sol":469:489  balances[msg.sender] */
      0x00
      swap1
      dup2
      mstore
        /* "basicToken.sol":469:477  balances */
      0x01
        /* "basicToken.sol":469:489  balances[msg.sender] */
      0x20
      mstore
      0x40
      swap1
      keccak256
      sload
        /* "basicToken.sol":459:489  _value <= balances[msg.sender] */
      dup3
      gt
      iszero
        /* "basicToken.sol":451:490  require(_value <= balances[msg.sender]) */
      tag_18
      jumpi
      0x00
      dup1
      revert
    tag_18:
      pop
        /* "basicToken.sol":529:539  msg.sender */
      caller
        /* "basicToken.sol":520:540  balances[msg.sender] */
      0x00
      swap1
      dup2
      mstore
        /* "basicToken.sol":520:528  balances */
      0x01
        /* "basicToken.sol":520:540  balances[msg.sender] */
      0x20
      dup2
      swap1
      mstore
      0x40
      dup1
      dup4
      keccak256
      dup1
      sload
        /* "basicToken.sol":520:549  balances[msg.sender] - _value */
      dup6
      swap1
      sub
        /* "basicToken.sol":497:549  balances[msg.sender] = balances[msg.sender] - _value */
      swap1
      sstore
      sub(shl(0xa0, 0x01), 0x01)
        /* "basicToken.sol":572:585  balances[_to] */
      dup6
      and
      dup4
      mstore
      swap1
      swap2
      keccak256
      dup1
      sload
        /* "basicToken.sol":572:594  balances[_to] + _value */
      dup4
      add
        /* "basicToken.sol":556:594  balances[_to] = balances[_to] + _value */
      swap1
      sstore
        /* "basicToken.sol":342:618  function transfer(address _to, uint256 _val... */blic returns (bool) {
      swap3
      swap2
      pop
      pop
      jump      // out

    auxdata: 0xa165627a7a7230582002404cab8a600253f477e451cdf6907c60e460f319fa47c235f470dc067ae9830029
}

Binary:
608060405234801561001057600080fd5b506040516020806101cc8339810180604052602081101561003057600080fd5b5051600081815533815260016020526040902055610179806100536000396000f3fe608060405234801561001057600080fd5b50600436106100415760003560e01c806318160ddd1461004657806370a0823114610060578063a9059cbb14610086575b600080fd5b61004e6100c6565b60408051918252519081900360200190f35b61004e6004803603602081101561007657600080fd5b50356001600160a01b03166100cc565b6100b26004803603604081101561009c57600080fd5b506001600160a01b0381351690602001356100e7565b604080519115158252519081900360200190f35b60005490565b6001600160a01b031660009081526001602052604090205490565b60006001600160a01b0383166100fc57600080fd5b3360009081526001602052604090205482111561011857600080fd5b50336000908152600160208190526040808320805485900390556001600160a01b03851683529091208054830190559291505056fea165627a7a7230582002404cab8a600253f477e451cdf6907c60e460f319fa47c235f470dc067ae9830029
