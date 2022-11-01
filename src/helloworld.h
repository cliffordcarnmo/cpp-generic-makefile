#pragma once

#include <iostream>
#include <string>

namespace CPPGenericMakefile{
	class HelloWorld{
		std::string message = "Hello, world!";

		public:
			void sayHello();
	};
}
