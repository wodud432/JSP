
		Member = function(id, name, age) //Member Ŭ���� ����
		{
			this.id = id;
			this.name = name;
			this.age = age;
		}
		
		
		Member.prototype = 
		{
				setValue : function(id, name, age)
				{
					this.id = id;
					this.name = name;
					this.age = age;
				},
				getAge : function()
				{
					return this.age;
				},
				toString : function()
				{
					return this.id + "(" + this.name + ") �� ���̴� " + this.age;
				}
		}