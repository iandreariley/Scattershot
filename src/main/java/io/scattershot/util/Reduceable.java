package io.scattershot.util;

import java.util.concurrent.Callable;

public interface Reduceable<T, U> extends Callable<U> {

	public Reduceable<T, U> withArgument(T arg);
	public U call();

}
