#include <bits/stdc++.h> 
class FileSystemComponent { 
public: 
	virtual void display() const = 0; 
}; 
class File : public FileSystemComponent { 
public: 
	File(const std::string& name, int size) 
		: name(name) 
		, size(size) 
	{ 
	} 

	void display() const override 
	{ 
		std::cout << "File: " << name << " (" << size 
				<< " bytes)" << std::endl; 
	} 

private: 
	std::string name; 
	int size; 
}; 
class Directory : public FileSystemComponent { 
public: 
	Directory(const std::string& name) 
		: name(name) 
	{ 
	} 

	void display() const override 
	{ 
		std::cout << "Directory: " << name << std::endl; 
		for (const auto& component : components) { 
			component->display(); 
		} 
	} 

	void addComponent(FileSystemComponent* component) 
	{ 
		components.push_back(component); 
	} 

private: 
	std::string name; 
	std::vector<FileSystemComponent*> components; 
}; 
int main() 
{ 
	// Create leaf objects (files) 
	FileSystemComponent* file1 
		= new File("document.txt", 1024); 
	FileSystemComponent* file2 
		= new File("image.jpg", 2048); 

	// Create a composite object (directory) 
	Directory* directory = new Directory("My Documents"); 

	// Add leaf objects to the directory 
	directory->addComponent(file1); 
	directory->addComponent(file2); 

	// Display the directory (including its contents) 
	directory->display(); 

	return 0; 
}

