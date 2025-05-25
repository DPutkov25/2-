class Nikola:
	__slots__ = ['name', 'age']
 
	def __init__(self, name, age):
    	if name == 'Николай':
            self.name = name
        else:
            self.name = f'Я не {name}, а Николай'
    	self.age = age