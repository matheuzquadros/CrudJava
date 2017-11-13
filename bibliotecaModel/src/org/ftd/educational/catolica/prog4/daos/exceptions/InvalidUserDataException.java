package org.ftd.educational.catolica.prog4.daos.exceptions;

/**
 *
 * @author matheus.quadros
 */
public class InvalidUserDataException extends Exception{
    public InvalidUserDataException(String message, Throwable cause) {
        super(message, cause);
    }
    public InvalidUserDataException(String message) {
        super(message);
    }
}
