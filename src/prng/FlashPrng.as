package prng
{

	public class FlashPrng implements IPrng
	{
		public function next():Number {
			return Math.random();
		}
	}
}