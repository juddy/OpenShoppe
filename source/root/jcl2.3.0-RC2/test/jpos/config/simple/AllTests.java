package jpos.config.simple;

///////////////////////////////////////////////////////////////////////////////
//
// This software is provided "AS IS".  The JavaPOS working group (including
// each of the Corporate members, contributors and individuals)  MAKES NO
// REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE SOFTWARE,
// EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED 
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
// NON-INFRINGEMENT. The JavaPOS working group shall not be liable for
// any damages suffered as a result of using, modifying or distributing this
// software or its derivatives. Permission to use, copy, modify, and distribute
// the software and its documentation for any purpose is hereby granted. 
//
///////////////////////////////////////////////////////////////////////////////

import junit.framework.*;

/**
 * A TestSuite that puts together all the test classes 
 * from the jpos.config.simple
 * @author E. Michael Maximilien (maxim@us.ibm.com)
 */
public class AllTests extends TestSuite
{
	//-------------------------------------------------------------------------
	// Public class methods
	//

	public static TestSuite suite()
	{
		TestSuite suite = new AllTests();

		suite.addTest( new TestSuite( SimpleEntryTestCase.class ) );
		suite.addTest( new TestSuite( SimpleEntryPropTestCase.class ) );
		suite.addTest( new TestSuite( SimpleEntryRegistryTestCase.class ) );
		suite.addTest( new TestSuite( SimpleRegPopulatorTestCase.class ) );

		return suite;
	}
}
