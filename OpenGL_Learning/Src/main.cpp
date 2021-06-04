#include <iostream>
#include "GLFW/glfw3.h"


int main()
{
	glfwInit();

	glfwWindowHint(GLFW_CLIENT_API, GLFW_OPENGL_API);
	glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);


	GLFWwindow* window = glfwCreateWindow(800, 600, "Test window", nullptr, nullptr);
	glfwShowWindow(window);
	
	while (!glfwWindowShouldClose(window))
	{

		glfwSwapBuffers(window);
		glfwPollEvents();
	}


	glfwDestroyWindow(window);
	return 0;
}