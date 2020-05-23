create database insurance;

use insurance;

create table `admin`(
  `adminid` varchar(255) NOT NULL,
  `adminpwd` varchar(255) NOT NULL,
   PRIMARY KEY (adminid, adminpwd)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` VALUES ('admin', 'admin');

CREATE TABLE `agent` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) NOT NULL,
  `acard` varchar(255) NOT NULL,
  `abank` varchar(255) NOT NULL,
  `abirth` DATE NOT NULL,
  `asex` ENUM('male', 'female') NOT NULL,
  `aoccu` varchar(255) NOT NULL,
  `aincome` varchar(255) NOT NULL,
  `aadd` varchar(255) NOT NULL,
  `amob` varchar(255) NOT NULL,
  `aemail` varchar(255) NOT NULL,
  `aamout` varchar(255) NOT NULL,
  `apwd` varchar(255) NOT NULL,
    PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `holder` (
  `hid` int NOT NULL AUTO_INCREMENT,
  `hname` varchar(255) NOT NULL,
  `hpwd` varchar(255) NOT NULL,
  `hcard` varchar(255) NOT NULL,
  `hbank` varchar(255) NOT NULL,
  `hbirth` DATE NOT NULL,
  `hsex` ENUM('male', 'female') NOT NULL,
  `hoccu` varchar(255) NOT NULL,
  `hincome` varchar(255) NOT NULL,
  `hadd` varchar(255) NOT NULL,
  `hemail` varchar(255) NOT NULL,
  `hpolicy` varchar(255) NOT NULL,
  `hpremium` varchar(255) NOT NULL,
  `hagent` varchar(255) NOT NULL,
  `hstart` DATE NOT NULL,
  `hdue` DATE NOT NULL,
  `hauth` ENUM('yes', 'no') NOT NULL,
      PRIMARY KEY  (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `holder` VALUES ('testid', 'testname','testpwd','testcard');

create table `policy` (
`pname` varchar(225) NOT NULL,
`pid` int NOT NULL AUTO_INCREMENT,
`pweek` varchar(225) NOT NULL,
`pmonth` varchar(225) NOT NULL,
`pqua` varchar(225) NOT NULL,
`phalf` varchar(225) NOT NULL,
`pyear` varchar(225) NOT NULL,
    PRIMARY KEY  (`pid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
