#include <iostream>
#include <string>

#include "helloworld.h"

namespace CPPGenericMakefile{
	void HelloWorld::sayHello(){
		std::cout << this->message << std::endl;
	}
}
