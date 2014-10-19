package
{
	import awesome.ExampleConcrete;
	
	import org.flemit.tags.DoABCTag;
	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertTrue;
	import org.mockito.integrations.given;
	import org.mockito.integrations.verify;
	import org.mockito.integrations.flexunit4.MockitoRule;
	
	import prng.IPrng;
	
	public class LibraryMainTest
	{
		[Rule]
		public var mockRule:MockitoRule = new MockitoRule();
		
		[Mock]
		public var mockPrng:IPrng;
		
		[Mock]
		public var mockExampleConcrete:ExampleConcrete;
		
		private var _instance:LibraryMain;
		
		[Before]
		public function setup():void
		{
			_instance = new LibraryMain();
			_instance.setPrng(mockPrng);
		}
		
		[After]
		public function teardown():void
		{
			mockPrng = null;
			_instance = null;
		}

		[Test]
		public function returnTrueShouldReturnTrue():void
		{
			assertTrue( _instance.returnTrue() );
		}
		
		/**
		 * One of the big heads up for Mockito-Flex is that it may
		 * fail if you have an interface in the Default package.
		 */
		[Test]
		public function testableReturnNumberShould1000TimesNextRandomValue():void
		{
			given(mockPrng.next()).willReturn(5);
			
			assertEquals(1000 * 5, _instance.testableReturnNumber());
		}
		
		/**
		 * One of the big heads up for Mockito-Flex is that it may
		 * fail if you have an interface in the Default package.
		 */
		[Test]
		public function testcallDoSomethingShouldExecuteDoSomethingOnArgument():void
		{
			_instance.callDoSomething(mockExampleConcrete);
			
			verify().that(mockExampleConcrete.doSomething());
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
