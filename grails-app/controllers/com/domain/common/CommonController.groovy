package com.domain.common

abstract class CommonController {


}

class EnumData {
    String id
    String name
}

class SelectData {
    Long id
    String name
}

interface AddressConstants {
    Long CHINA = 1L
    Long SHANG_HAI = 310000L
    Long ZHE_JIANG = 330000L
    Long JIANG_SU = 320000
    List<Long> USER_AREA = [SHANG_HAI, ZHE_JIANG, JIANG_SU]
}

class JobSearchData {
    String jobName
    String location
}

class BaseInfo {
    String img
}