pragma solidity ^0.8.14;

contract Enum {
    enum Days {
        Sun,
        Mon,
        Tue,
        Web,
        Thu,
        Fri,
        Sat
    }

    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected
    }

    Days public day = Days.Mon;

    Status private status;

    function getStatus() public view returns(Status) {
        return status;
    }

    function ship() public {
        require(status == Status.Pending, "Status must be Pending before Shipped");
        status = Status.Shipped;
    }

    function accept() public {
        require(status == Status.Shipped, "Status must be Shipped before Accepted");
        status = Status.Accepted;
    }

    function reject() public {
        require(status == Status.Shipped, "Status must be Shipped before Rejected");
        status = Status.Rejected;
    }
}