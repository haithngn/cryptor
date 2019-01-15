//
// Created by Hai Nguyen Thanh on 2019-01-13.
//

#ifndef CRYPTOR_MD5ENCRYPTOR_H
#define CRYPTOR_MD5ENCRYPTOR_H

#include <iostream>

#ifdef __cplusplus

namespace cryptor {

    class MD5Encryptor {
    public:
        MD5Encryptor();

        virtual ~MD5Encryptor() = 0;

    public:
        virtual std::string * hash(std::string * string) = 0;
    };

}

#endif

#endif //CRYPTOR_MD5ENCRYPTOR_H
