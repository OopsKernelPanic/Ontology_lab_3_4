//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2018.05.15 at 12:03:20 PM MSK 
//


package ru.smarteps.scl;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for tPredefinedAttributeNameEnum.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="tPredefinedAttributeNameEnum">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}Name">
 *     &lt;enumeration value="T"/>
 *     &lt;enumeration value="Test"/>
 *     &lt;enumeration value="Check"/>
 *     &lt;enumeration value="SIUnit"/>
 *     &lt;enumeration value="Oper"/>
 *     &lt;enumeration value="SBO"/>
 *     &lt;enumeration value="SBOw"/>
 *     &lt;enumeration value="Cancel"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "tPredefinedAttributeNameEnum")
@XmlEnum
public enum TPredefinedAttributeNameEnum {

    T("T"),
    @XmlEnumValue("Test")
    TEST("Test"),
    @XmlEnumValue("Check")
    CHECK("Check"),
    @XmlEnumValue("SIUnit")
    SI_UNIT("SIUnit"),
    @XmlEnumValue("Oper")
    OPER("Oper"),
    SBO("SBO"),
    @XmlEnumValue("SBOw")
    SB_OW("SBOw"),
    @XmlEnumValue("Cancel")
    CANCEL("Cancel");
    private final String value;

    TPredefinedAttributeNameEnum(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static TPredefinedAttributeNameEnum fromValue(String v) {
        for (TPredefinedAttributeNameEnum c: TPredefinedAttributeNameEnum.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
