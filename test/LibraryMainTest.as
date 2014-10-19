package
{
	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertTrue;
	
	public class LibraryMainTest
	{
		private var _instance:LibraryMain;
		
		[Before]
		public function setup():void
		{
			_instance = new LibraryMain();
		}
		
		[After]
		public function teardown():void
		{
			_instance = null;
		}

		[Test]
		public function returnTrueShouldReturnTrue():void
		{
			assertTrue( _instance.returnTrue() );
		}
		
		[Test]
		public function returnStringShouldReturnString():void
		{
			assertTrue( _instance.returnString() is String );
		}
		
		[Test]
		public function returnStringShouldReturnExpectedValue():void
		{
			assertEquals("hello stranger!", _instance.returnString() );
		}
	}
}
