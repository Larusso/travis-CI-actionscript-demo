package
{
	import awesome.ExampleConcrete;
	
	import prng.IPrng;

	public class LibraryMain
	{
		private var _prng:IPrng;
		
		public function LibraryMain()
		{
		}
		
		public function setPrng(prng:IPrng):void {
			_prng = prng;
		}

		public function returnTrue():Boolean
		{
			return true;
		}

		public function returnNumber():Number
		{
			return Math.random() * 1000;
		}
		
		public function testableReturnNumber():Number
		{
			return _prng.next() * 1000;
		}

		public function returnString():String
		{
			return "hello stranger!";
		}
		
		public function callDoSomething(target:ExampleConcrete):void
		{
			target.doSomething();
		}
	}
}
