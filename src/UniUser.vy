# pragma version ^0.4.0

struct ExactInputSingleParams:
    tokenIn: address
    tokenOut: address
    fee: uint24
    recipient: address
    amountIn: uint256
    amountOutMinimum: uint256
    sqrtPriceLimitX96: uint160

# v3 router interface
interface SwapRouter:
    def exactInputSingle(params: ExactInputSingleParams) -> uint256: payable

@external
def doSwap(router: address, params: ExactInputSingleParams):
    extcall SwapRouter(router).exactInputSingle(params)
    return
