DROP DATABASE IF EXISTS HE_THONG_GIAP_PHIM ;
CREATE DATABASE HE_THONG_GIAP_PHIM;
USE HE_THONG_GIAP_PHIM;

-- TABLE 1 VE


CREATE TABLE VE (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    `CODE` CHAR(10),
    `TIME` DATETIME DEFAULT NOW(),
    MOVIEid INT ,
    LOCATION1 ENUM ('HA_NOI','HCM'),
    LOCATION2 ENUM ('VINCOM1','VINCOM2','VINCOM3','VINCOM4'),
    AGE INT CHECK(   AGE>=18),
	PRICE ENUM('90.000','180,000'),
    SO_GHE INT,
    HANG CHAR(10),
    THUE ENUM ('5%','10%') DEFAULT('5%')
   
   
    
    
    
    
);
