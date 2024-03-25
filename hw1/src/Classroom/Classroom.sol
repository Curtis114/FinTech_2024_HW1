// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    uint256 private firstRegistrationCode = 1234;
    uint256 private subsequentRegistrationCode = 123;
    bool private hasRegisteredOnce = false;

    function register() external returns (uint256) {
        if (hasRegisteredOnce) {
            return subsequentRegistrationCode;
        } else {
            hasRegisteredOnce = true;
            return firstRegistrationCode;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    uint256 private firstRegistrationCode = 1234;
    uint256 private subsequentRegistrationCode = 123;
    bool private hasRegisteredOnce = false;

    function register() external returns (uint256) {
        if (hasRegisteredOnce) {
            return subsequentRegistrationCode;
        } else {
            hasRegisteredOnce = true;
            return firstRegistrationCode;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    uint256 private registrationCode = 1000;

    function register() external view returns (uint256) {
        return registrationCode;
    }
}
