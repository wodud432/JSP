
		Member = function(id, name, age) //Member 클래스 생성
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
					return this.id + "(" + this.name + ") 의 나이는 " + this.age;
				}
		}