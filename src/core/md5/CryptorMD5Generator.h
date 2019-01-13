//
// Created by Hai Nguyen Thanh on 2019-01-13.
//

#ifndef CRYPTOR_CRYPTORMD5GENERATOR_H
#define CRYPTOR_CRYPTORMD5GENERATOR_H

#include <iostream>

#ifdef __cplusplus

namespace cryptor {

    class CryptorMD5Generator {
    public:
        CryptorMD5Generator();

        virtual ~CryptorMD5Generator() = 0;

    public:
        virtual std::string * hash(std::string * string);
    };

}

#endif

#endif //CRYPTOR_CRYPTORMD5GENERATOR_H
