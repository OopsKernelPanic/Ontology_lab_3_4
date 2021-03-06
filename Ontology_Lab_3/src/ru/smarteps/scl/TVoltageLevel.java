//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2018.05.15 at 12:03:20 PM MSK 
//


package ru.smarteps.scl;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import java.util.ArrayList;
import java.util.List;


/**
 * <p>Java class for tVoltageLevel complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="tVoltageLevel">
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.iec.ch/61850/2006/SCL}tEquipmentContainer">
 *       &lt;sequence>
 *         &lt;element name="Voltage" type="{http://www.iec.ch/61850/2006/SCL}tVoltage" minOccurs="0"/>
 *         &lt;element name="Bay" type="{http://www.iec.ch/61850/2006/SCL}tBay" maxOccurs="unbounded"/>
 *       &lt;/sequence>
 *       &lt;anyAttribute processContents='lax' namespace='##other'/>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "tVoltageLevel", propOrder = {
    "voltage",
    "bay"
})
public class TVoltageLevel
    extends TEquipmentContainer
{

    @XmlElement(name = "Voltage")
    protected TVoltage voltage;
    @XmlElement(name = "Bay", required = true)
    protected List<TBay> bay;

    /**
     * Gets the value of the voltage property.
     * 
     * @return
     *     possible object is
     *     {@link TVoltage }
     *     
     */
    public TVoltage getVoltage() {
        return voltage;
    }

    /**
     * Sets the value of the voltage property.
     * 
     * @param value
     *     allowed object is
     *     {@link TVoltage }
     *     
     */
    public void setVoltage(TVoltage value) {
        this.voltage = value;
    }

    /**
     * Gets the value of the bay property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the bay property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getBay().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link TBay }
     * 
     * 
     */
    public List<TBay> getBay() {
        if (bay == null) {
            bay = new ArrayList<TBay>();
        }
        return this.bay;
    }

}
