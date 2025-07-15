// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface ICofre {
    function depositar() external payable;
    function consultarSaldo(address usuario) external view returns (uint256);
    function sacar(uint256 valor) external;
    function sacarPara(address destinatario, uint256 valor) external;
}
