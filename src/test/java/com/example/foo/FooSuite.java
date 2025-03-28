package com.example.foo;

import com.example.foo.client.FooTest;
import com.google.gwt.junit.tools.GWTTestSuite;
import junit.framework.Test;
import junit.framework.TestSuite;

public class FooSuite extends GWTTestSuite {
  public static Test suite() {
    TestSuite suite = new TestSuite("Tests for Foo");
    suite.addTestSuite(FooTest.class);
    return suite;
  }
}
