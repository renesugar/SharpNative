﻿module System.Byte;
import System.Namespace;
import std.conv;

class Byte : Boxed!ubyte
{
		public static const ubyte MaxValue = ubyte.max;
		public static const ubyte MinValue = ubyte.min;

	/*this()
	{
		// Constructor code
	}*/

	this(ubyte value = 0)
    {
        this.__Value = value;
    }

	public override string toString() {
		return to!string(__Value);
	}

	public static String ToString(int value)
	{
		return new String(to!wstring(value));
	}

	public override String ToString()
	{
		return new String(to!wstring(this.toString));
	}

	public override Type GetType()
	{
		return __TypeOf!(typeof(this));
	}

}

