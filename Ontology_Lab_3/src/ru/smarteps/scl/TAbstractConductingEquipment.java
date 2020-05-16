//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2018.05.15 at 12:03:20 PM MSK 
//


package ru.smarteps.scl;

import javax.xml.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;


/**
 * <p>Java class for tAbstractConductingEquipment complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="tAbstractConductingEquipment">
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.iec.ch/61850/2006/SCL}tEquipment">
 *       &lt;sequence>
 *         &lt;element name="Terminal" type="{http://www.iec.ch/61850/2006/SCL}tTerminal" maxOccurs="2" minOccurs="0"/>
 *         &lt;element name="SubEquipment" type="{http://www.iec.ch/61850/2006/SCL}tSubEquipment" maxOccurs="unbounded" minOccurs="0"/>
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
@XmlType(name = "tAbstractConductingEquipment", propOrder = {
    "terminal",
    "subEquipment"
})
@XmlSeeAlso({
    TConductingEquipment.class,
    TTransformerWinding.class
})
public abstract class TAbstractConductingEquipment
    extends TEquipment
{

    @XmlElement(name = "Terminal")
    protected List<TTerminal> terminal;
    @XmlElement(name = "SubEquipment")
    protected List<TSubEquipment> subEquipment;

    /**
     * Gets the value of the terminal property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the terminal property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getTerminal().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link TTerminal }
     * 
     * 
     */
    public List<TTerminal> getTerminal() {
        if (terminal == null) {
            terminal = new ArrayList<TTerminal>();
        }
        return this.terminal;
    }

    /**
     * Gets the value of the subEquipment property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the subEquipment property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getSubEquipment().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link TSubEquipment }
     * 
     * 
     */
    public List<TSubEquipment> getSubEquipment() {
        if (subEquipment == null) {
            subEquipment = new ArrayList<TSubEquipment>();
        }
        return this.subEquipment;
    }

}
