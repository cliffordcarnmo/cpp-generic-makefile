#include <memory>

#include "helloworld.h"

int main(void){
	std::unique_ptr<CPPGenericMakefile::HelloWorld> helloWorld = std::make_unique<CPPGenericMakefile::HelloWorld>();
	helloWorld->sayHello();

	return 0;
}
