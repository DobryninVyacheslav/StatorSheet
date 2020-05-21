package ru.exceptions;

@SuppressWarnings("serial")
public class InputCheckException extends RuntimeException {
	public InputCheckException(String errorMessage) {
		super(errorMessage);
	}
}
