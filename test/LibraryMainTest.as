package
{
	import org.flexunit.asserts.assertTrue;

	public class LibraryMainTest
	{
		private var _instance:LibraryMain;

		[Before]
		public function init():void
		{
			_instance = new LibraryMain();
		}

		[Test]
		public function returnNumber():void
		{
			assertTrue( _instance.returnTrue() );
		}
	}
}
