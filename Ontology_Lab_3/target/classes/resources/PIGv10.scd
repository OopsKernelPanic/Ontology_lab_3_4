<?xml version="1.0" encoding="UTF-8"?>
<SCL xmlns:sxy="http://www.iec.ch/61850/2006/SCLcoordinates" xmlns="http://www.iec.ch/61850/2006/SCL">
	<Private type="Siemens-SclLib-V5-Version">V03.10.02.000</Private>
	<Private type="Siemens-SclLib-V5-EditTime">05.05.2019 14:23:08</Private>
	<Private type="Siemens-Configurator-Version">V5.80 HF1</Private>
	<Header id="PSI" version="3" revision="5" toolID="IEC 61850 System Configurator, Version: V5.80 HF1" nameStructure="IEDName">
		<Text>PIG</Text>
		<History>
			<Hitem version="1" revision="1" when="18.04.2019 20:42:58" who="SCL Manager" what="Modifications" why="Improvements" />
			<Hitem version="2" revision="2" when="18.04.2019 20:53:58" who="SCL Manager" what="Modifications" why="Improvements" />
			<Hitem version="3" revision="3" when="18.04.2019 20:59:44" who="SCL Manager" what="Modifications" why="Improvements" />
			<Hitem version="3" revision="4" when="Thursday, April 18, 2019 9:01:57 PM" who="Licenced User: NRU MPEI IDianaM Machine: MICROSOFTI User: diana" what="Automatic archive done at : C:\Users\diana\Desktop\PIG\Archive\_20190418_210157.sz" why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
			<Hitem version="3" revision="5" when="Thursday, April 18, 2019 9:01:57 PM" who="Licenced User: NRU MPEI IDianaM Machine: MICROSOFTI User: diana" what="Station is upgraded from SCL Manager to V5.80 HF1." why="IEC 61850 System Configurator Automatic Startup: Insert Comment" />
		</History>
	</Header>
	<Substation name="PIGGI" sxy:x="0" sxy:y="0">
		<PowerTransformer name="T1" type="PTR" sxy:x="1" sxy:y="13">
			<Text>AutoTransformers</Text>
			<TransformerWinding name="transfmrWndg1" type="PTW">
				<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_1/connvtyNode7" substationName="PIGGI" voltageLevelName="10" bayName="t1k_1" cNodeName="connvtyNode7" />
			</TransformerWinding>
			<TransformerWinding name="transfmrWndg2" type="PTW">
				<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode6" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode6" />
			</TransformerWinding>
			<TransformerWinding name="transfmrWndg3" type="PTW">
				<Terminal name="terminal1" connectivityNode="PIGGI/500/t1c/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode2" />
			</TransformerWinding>
		</PowerTransformer>
	
		<PowerTransformer name="T2" type="PTR" sxy:x="25" sxy:y="10" sxy:dir="horizontal">
			<Text>AutoTransformers</Text>
			<TransformerWinding name="transfmrWndg1" type="PTW">
				<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_2/connvtyNode7" substationName="PIGGI" voltageLevelName="10" bayName="t1k_2" cNodeName="connvtyNode7" />
			</TransformerWinding>
			<TransformerWinding name="transfmrWndg2" type="PTW">
				<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode6" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode6" />
			</TransformerWinding>
			<TransformerWinding name="transfmrWndg3" type="PTW">
				<Terminal name="terminal1" connectivityNode="PIGGI/500/t2c/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode2" />
			</TransformerWinding>
		</PowerTransformer>
	
		<VoltageLevel name="500" sxy:x="6" sxy:y="0">
			<Voltage unit="V" multiplier="k">500</Voltage>
			<Bay name="K1C" sxy:x="2" sxy:y="5">
			<Text>Bus</Text>
				<ConductingEquipment name="QSG1_K1C" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C/K1C" substationName="PIGGI" voltageLevelName="500" bayName="K1C" cNodeName="K1C" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_K1C" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C/K1C" substationName="PIGGI" voltageLevelName="500" bayName="K1C" cNodeName="K1C" />
				</ConductingEquipment>
				<ConnectivityNode name="K1C" pathName="PIGGI/500/K1C/K1C" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>
			<Bay name="K1C_TV1" sxy:x="2" sxy:y="5">
				<ConductingEquipment name="QS_TV1K1C" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C/K1C" substationName="PIGGI" voltageLevelName="500" bayName="K1C" cNodeName="K1C" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1C_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1C_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG_TV1K1C" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1C_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TV1_K1C" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1C_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/K1C_TV1/connvtyNode1" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>
			<Bay name="K1C_TV2" sxy:x="2" sxy:y="5">
				<ConductingEquipment name="QS_TV2K1C" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C/K1C" substationName="PIGGI" voltageLevelName="500" bayName="K1C" cNodeName="K1C" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1C_TV2/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1C_TV2" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG_TV2K1C" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C_TV2/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1C_TV2" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TV2_K1C" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C_TV2/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1C_TV2" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/K1C_TV2/connvtyNode1" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>
			<Bay name="K2C" sxy:x="2" sxy:y="7">
			<Text>Bus</Text>
				<ConductingEquipment name="QSG2_K2C" type="DIS" sxy:x="10" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K2C/K2C" substationName="PIGGI" voltageLevelName="500" bayName="K2C" cNodeName="K2C" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_K2C" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K2C/K2C" substationName="PIGGI" voltageLevelName="500" bayName="K2C" cNodeName="K2C" />
				</ConductingEquipment>
				<ConnectivityNode name="K2C" pathName="PIGGI/500/K2C/K2C" sxy:x="1" sxy:y="0" sxy:dir="horizontal" />
			</Bay>	
			<Bay name="K2C_TV1" sxy:x="2" sxy:y="5">
				<ConductingEquipment name="QS_TV1K2C" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K2C/K2C" substationName="PIGGI" voltageLevelName="500" bayName="K2C" cNodeName="K2C" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K2C_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K2C_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG_TV1K2C" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K2C_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K2C_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TV1_K2C" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K2C_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K2C_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/K2C_TV1/connvtyNode1" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>
			<Bay name="K2C_TV2" sxy:x="2" sxy:y="5">
				<ConductingEquipment name="QS_TV2K2C" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K2C/K2C" substationName="PIGGI" voltageLevelName="500" bayName="K2C" cNodeName="K2C" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K2C_TV2/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K2C_TV2" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG_TV2K2C" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K2C_TV2/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K2C_TV2" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TV2_K2C" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K2C_TV2/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K2C_TV2" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/K2C_TV2/connvtyNode1" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>
			<Bay name="K1_11" sxy:x="2" sxy:y="3">
			
				<ConductingEquipment name="QS1_1_K11" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C/K1C" substationName="PIGGI" voltageLevelName="500" bayName="K1C" cNodeName="K1C" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_11/connvtyNode7" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode7" />
				</ConductingEquipment>	
				
				<ConductingEquipment name="QSG1_1_K11" type="DIS" sxy:x="1" sxy:y="2" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_11/connvtyNode7" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode7" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA1_1_K11" type="CTR" sxy:x="2" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_11/connvtyNode7" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode7" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_11/connvtyNode3" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				
				<ConductingEquipment name="Q1_K11" type="CBR" sxy:x="2" sxy:y="1" sxy:dir="horizontal">
					<Text>selectionalizingBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_11/connvtyNode3" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_11/connvtyNode4" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA1_2_K11" type="CTR" sxy:x="3" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_11/connvtyNode4" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_11/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode1" />
				</ConductingEquipment>	
				
				<ConductingEquipment name="QSG1_2_K11" type="DIS" sxy:x="3" sxy:y="2" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_11/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode1" />
				</ConductingEquipment>				
				
				<ConductingEquipment name="QS1_2_K11" type="DIS" sxy:x="2" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_11/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1_11" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/w1c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w1c" cNodeName="connvtyNode9" />
				</ConductingEquipment>

				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/500/K1_11/connvtyNode3" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/500/K1_11/connvtyNode4" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode7" pathName="PIGGI/500/K1_11/connvtyNode7" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/K1_11/connvtyNode1" sxy:x="2" sxy:y="1" />
				
			</Bay>			
			<Bay name="K1_12" sxy:x="2" sxy:y="3">
				
				<ConductingEquipment name="QS2_1_K11" type="DIS" sxy:x="4" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w1c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w1c" cNodeName="connvtyNode9" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_12/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QSG2_1_K11" type="DIS" sxy:x="4" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_12/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA2_1_K11" type="CTR" sxy:x="5" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_12/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_12/connvtyNode5" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode5" />
				</ConductingEquipment>				

				<ConductingEquipment name="Q2_K11" type="CBR" sxy:x="5" sxy:y="1">
					<Text>selectionalizingBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_12/connvtyNode5" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_12/connvtyNode6" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode6" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA2_2_K11" type="CTR" sxy:x="6" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_12/connvtyNode6" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode6" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_12/connvtyNode8" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode8" />
				</ConductingEquipment>	
				
				<ConductingEquipment name="QSG2_2_K11" type="DIS" sxy:x="5" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_12/connvtyNode8" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode8" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QS2_2_K11" type="DIS" sxy:x="6" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_12/connvtyNode8" substationName="PIGGI" voltageLevelName="500" bayName="K1_12" cNodeName="connvtyNode8" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/t1c/connvtyNode14" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode14" />
				</ConductingEquipment>
				
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/500/K1_12/connvtyNode2" sxy:x="4" sxy:y="1" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/500/K1_12/connvtyNode5" sxy:x="5" sxy:y="1" />
				<ConnectivityNode name="connvtyNode6" pathName="PIGGI/500/K1_12/connvtyNode6" sxy:x="5" sxy:y="1" />
				<ConnectivityNode name="connvtyNode8" pathName="PIGGI/500/K1_12/connvtyNode8" sxy:x="6" sxy:y="1" />
			</Bay>			
			<Bay name="K1_13" sxy:x="2" sxy:y="3">				
				<ConductingEquipment name="QS3_1_K11" type="DIS" sxy:x="7" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t1c/connvtyNode14" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode14" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_13/connvtyNode10" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode10" />
				</ConductingEquipment>	
				
				<ConductingEquipment name="QSG3_1_K11" type="DIS" sxy:x="7" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_13/connvtyNode10" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode10" />
				</ConductingEquipment>				
				
				<ConductingEquipment name="TA3_1_K11" type="CTR" sxy:x="8" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_13/connvtyNode10" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode10" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_13/connvtyNode11" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode11" />
				</ConductingEquipment>
				
				<ConductingEquipment name="Q3_K11" type="CBR" sxy:x="8" sxy:y="1">
					<Text>selectionalizingBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_13/connvtyNode11" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode11" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_13/connvtyNode12" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode12" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA3_2_K11" type="CTR" sxy:x="9" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_13/connvtyNode12" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode12" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_13/connvtyNode13" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode13" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QSG3_2_K11" type="DIS" sxy:x="9" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_13/connvtyNode13" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode13" />
				</ConductingEquipment>

				<ConductingEquipment name="QS3_2_K11" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_13/connvtyNode13" substationName="PIGGI" voltageLevelName="500" bayName="K1_13" cNodeName="connvtyNode13" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K2C/K2C" substationName="PIGGI" voltageLevelName="500" bayName="K2C" cNodeName="K2C" />
				</ConductingEquipment>

				<ConnectivityNode name="connvtyNode10" pathName="PIGGI/500/K1_13/connvtyNode10" sxy:x="8" sxy:y="1" />
				<ConnectivityNode name="connvtyNode11" pathName="PIGGI/500/K1_13/connvtyNode11" sxy:x="8" sxy:y="1" />
				<ConnectivityNode name="connvtyNode12" pathName="PIGGI/500/K1_13/connvtyNode12" sxy:x="9" sxy:y="1" />
				<ConnectivityNode name="connvtyNode13" pathName="PIGGI/500/K1_13/connvtyNode13" sxy:x="10" sxy:y="1" />
			</Bay>			
			<Bay name="K1_21" sxy:x="2" sxy:y="8">
				<ConductingEquipment name="QS1_1_K12" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1C/K1C" substationName="PIGGI" voltageLevelName="500" bayName="K2C" cNodeName="K2C" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_21/connvtyNode7" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode7" />
				</ConductingEquipment>			
			
				<ConductingEquipment name="QSG1_1_K12" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_21/connvtyNode7" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode7" />
				</ConductingEquipment>

				<ConductingEquipment name="TA1_1_K12" type="CTR" sxy:x="1" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_21/connvtyNode7" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode7" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_21/connvtyNode3" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				
				<ConductingEquipment name="Q1_K12" type="CBR" sxy:x="2" sxy:y="0">
					<Text>selectionalizingBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_21/connvtyNode3" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_21/connvtyNode4" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA1_2_K12" type="CTR" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_21/connvtyNode4" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_21/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QSG1_2_K12" type="DIS" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_21/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode1" />
				</ConductingEquipment>	
				
				<ConductingEquipment name="QS1_2_K12" type="DIS" sxy:x="3" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_21/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="K1_21" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/w3c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w3c" cNodeName="connvtyNode9" />
				</ConductingEquipment>

				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/500/K1_21/connvtyNode3" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/500/K1_21/connvtyNode4" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode7" pathName="PIGGI/500/K1_21/connvtyNode7" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/K1_21/connvtyNode1" sxy:x="2" sxy:y="1" />				
			</Bay>			
			<Bay name="K1_22" sxy:x="2" sxy:y="8">
				<ConductingEquipment name="QS2_1_K12" type="DIS" sxy:x="3" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w3c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w3c" cNodeName="connvtyNode9" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_22/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode2" />
				</ConductingEquipment>
								
				<ConductingEquipment name="QSG2_1_K12" type="DIS" sxy:x="4" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_22/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA2_1_K12" type="CTR" sxy:x="4" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_22/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_22/connvtyNode5" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				
				<ConductingEquipment name="Q2_K12" type="CBR" sxy:x="5" sxy:y="0">
					<Text>selectionalizingBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_22/connvtyNode5" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_22/connvtyNode6" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode6" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA2_2_K12" type="CTR" sxy:x="5" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_22/connvtyNode6" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode6" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_22/connvtyNode8" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode8" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QSG2_2_K12" type="DIS" sxy:x="5" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_22/connvtyNode8" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode8" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QS2_2_K12" type="DIS" sxy:x="6" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_22/connvtyNode8" substationName="PIGGI" voltageLevelName="500" bayName="K1_22" cNodeName="connvtyNode8" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/t2c/connvtyNode14" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode14" />
				</ConductingEquipment>

				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/500/K1_22/connvtyNode2" sxy:x="4" sxy:y="1" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/500/K1_22/connvtyNode5" sxy:x="4" sxy:y="1" />
				<ConnectivityNode name="connvtyNode6" pathName="PIGGI/500/K1_22/connvtyNode6" sxy:x="5" sxy:y="1" />
				<ConnectivityNode name="connvtyNode8" pathName="PIGGI/500/K1_22/connvtyNode8" sxy:x="5" sxy:y="1" />

			</Bay>			
			<Bay name="K1_23" sxy:x="2" sxy:y="8">
				<ConductingEquipment name="QS3_1_K12" type="DIS" sxy:x="6" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t2c/connvtyNode14" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode14" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_23/connvtyNode10" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode10" />
				</ConductingEquipment>	
				
                <ConductingEquipment name="QSG3_1_K12" type="DIS" sxy:x="7" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_23/connvtyNode10" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode10" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA3_1_K12" type="CTR" sxy:x="7" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_23/connvtyNode10" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode10" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_23/connvtyNode11" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode11" />
				</ConductingEquipment>
				
				<ConductingEquipment name="Q3_K12" type="CBR" sxy:x="8" sxy:y="1">
					<Text>selectionalizingBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_23/connvtyNode11" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode11" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_23/connvtyNode12" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode12" />
				</ConductingEquipment>				
				
				<ConductingEquipment name="TA3_2_K12" type="CTR" sxy:x="8" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_23/connvtyNode12" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode12" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K1_23/connvtyNode13" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode13" />
				</ConductingEquipment>

				<ConductingEquipment name="QSG3_2_K12" type="DIS" sxy:x="9" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_23/connvtyNode13" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode13" />
				</ConductingEquipment>

				<ConductingEquipment name="QS3_2_K12" type="DIS" sxy:x="9" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/K1_23/connvtyNode13" substationName="PIGGI" voltageLevelName="500" bayName="K1_23" cNodeName="connvtyNode13" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/K2C/K2C" substationName="PIGGI" voltageLevelName="500" bayName="K1C" cNodeName="K1C" />
				</ConductingEquipment>

				<ConnectivityNode name="connvtyNode10" pathName="PIGGI/500/K1_23/connvtyNode10" sxy:x="7" sxy:y="1" />
				<ConnectivityNode name="connvtyNode11" pathName="PIGGI/500/K1_23/connvtyNode11" sxy:x="7" sxy:y="1" />
				<ConnectivityNode name="connvtyNode12" pathName="PIGGI/500/K1_23/connvtyNode12" sxy:x="8" sxy:y="1" />
				<ConnectivityNode name="connvtyNode13" pathName="PIGGI/500/K1_23/connvtyNode13" sxy:x="9" sxy:y="1" />

			</Bay>
			<Bay name="w1c" sxy:x="5" sxy:y="1">		
				<ConductingEquipment name="TA1_W1" type="CTR" sxy:x="1" sxy:y="1" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w1c/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="w1c" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/w1c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w1c" cNodeName="connvtyNode9" />
				</ConductingEquipment>
				<ConductingEquipment name="TV_W1" type="VTR" sxy:x="0" sxy:y="2" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w1c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w1c" cNodeName="connvtyNode9" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_W1" type="DIS" sxy:x="2" sxy:y="2" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w1c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w1c" cNodeName="connvtyNode9" />
				</ConductingEquipment>
				<ConductingEquipment name="QS_W1" type="DIS" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w1c_1/connvtyNode3" substationName="PIGGI" voltageLevelName="500" bayName="w1c_1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/w1c/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="w1c" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode9" pathName="PIGGI/500/w1c/connvtyNode9" sxy:x="1" sxy:y="0" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/500/w1c/connvtyNode2" sxy:x="1" sxy:y="1" />				
			</Bay>			
			<Bay name="w1c_1" sxy:x="5" sxy:y="1">				
				<ConductingEquipment name="QSG2_W1" type="DIS" sxy:x="0" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w1c_1/connvtyNode3" substationName="PIGGI" voltageLevelName="500" bayName="w1c_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="W1C" type="IFL" sxy:x="1" sxy:y="1" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w1c_1/connvtyNode3" substationName="PIGGI" voltageLevelName="500" bayName="w1c_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/500/w1c_1/connvtyNode3" sxy:x="1" sxy:y="0" />
			</Bay>
			<Bay name="t1c" sxy:x="7" sxy:y="0">		
				<ConductingEquipment name="QSG1_1_T1" type="DIS" sxy:x="2" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t1c/connvtyNode14" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode14" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_T1" type="DIS" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t1c/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/t1c/connvtyNode14" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode14" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_2_T1" type="DIS" sxy:x="2" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t1c/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TA1_T1" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t1c/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/t1c/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="t1c" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode14" pathName="PIGGI/500/t1c/connvtyNode14" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/t1c/connvtyNode1" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/500/t1c/connvtyNode2" sxy:x="1" sxy:y="0" />	
			</Bay>			
			<Bay name="w3c" sxy:x="4" sxy:y="10">
				<ConductingEquipment name="QSG1_W3" type="DIS" sxy:x="2" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w3c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w3c" cNodeName="connvtyNode9" />
				</ConductingEquipment>
				<ConductingEquipment name="TV_W3" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w3c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w3c" cNodeName="connvtyNode9" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_W3" type="CTR" sxy:x="1" sxy:y="1" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w3c/connvtyNode9" substationName="PIGGI" voltageLevelName="500" bayName="w3c" cNodeName="connvtyNode9" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/w3c/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="w3c" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QS_W3" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w3c/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="w3c" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/w3c_1/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="w3c_1" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode9" pathName="PIGGI/500/w3c/connvtyNode9" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/w3c/connvtyNode1" sxy:x="1" sxy:y="1" />
			</Bay>		
			<Bay name="w3c_1" sxy:x="4" sxy:y="10">
				<ConductingEquipment name="QSG2_W3" type="DIS" sxy:x="0" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w3c_1/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="w3c_1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="W3C" type="IFL" sxy:x="1" sxy:y="2" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/w3c_1/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="w3c_1" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/500/w3c_1/connvtyNode2" sxy:x="1" sxy:y="2" />
			</Bay>
			<Bay name="t2c" sxy:x="7" sxy:y="10">			
					<ConductingEquipment name="QSG1_1_T2" type="DIS" sxy:x="2" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t2c/connvtyNode14" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode14" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_T2" type="DIS" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t2c/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/t2c/connvtyNode14" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode14" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_2_T2" type="DIS" sxy:x="2" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t2c/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TA1_T2" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/500/t2c/connvtyNode1" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/500/t2c/connvtyNode2" substationName="PIGGI" voltageLevelName="500" bayName="t2c" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode14" pathName="PIGGI/500/t2c/connvtyNode14" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/500/t2c/connvtyNode1" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/500/t2c/connvtyNode2" sxy:x="1" sxy:y="0" />	
			</Bay>
		</VoltageLevel>
		<VoltageLevel name="220" sxy:x="0" sxy:y="15">
			<Voltage unit="V" multiplier="k">220</Voltage>
			<Bay name="K1G" desc="" sxy:x="0" sxy:y="5">
				<Text>Bus</Text>
				<ConductingEquipment name="QSG1_K1G" type="DIS" sxy:x="3" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K1G/K1G" substationName="PIGGI" voltageLevelName="220" bayName="K1G" cNodeName="K1G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_K1G" type="DIS" sxy:x="12" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K1G/K1G" substationName="PIGGI" voltageLevelName="220" bayName="K1G" cNodeName="K1G" />
				</ConductingEquipment>
				<ConnectivityNode name="K1G" pathName="PIGGI/220/K1G/K1G" sxy:x="1" sxy:y="0" sxy:dir="horizontal" />
			</Bay>
			<Bay name="K1G_TV1" sxy:x="2" sxy:y="5">
				<ConductingEquipment name="QS_TV1K1G" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K1G/K1G" substationName="PIGGI" voltageLevelName="220" bayName="K1G" cNodeName="K1G" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K1G_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="K1G_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG_TV1K1G" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K1G_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="K1G_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TV1_K1G" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K1G_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="K1G_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/K1G_TV1/connvtyNode1" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>			
			<Bay name="w1g" sxy:x="3" sxy:y="0">
				<ConductingEquipment name="TA1_W1G" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w1g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W1G" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w1g_1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w1g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_W1G" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="Q1_W1G" type="CBR" sxy:x="1" sxy:y="2" sxy:dir="vertical">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w1g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="TA2_W1G" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w1g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_W1G" type="DIS" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K1G/K1G" substationName="PIGGI" voltageLevelName="220" bayName="K1G" cNodeName="K1G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG3_W1G" type="DIS" sxy:x="0" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w1g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/w1g/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/w1g/connvtyNode1" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/w1g/connvtyNode4" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/w1g/connvtyNode5" sxy:x="1" sxy:y="3" />
			</Bay>			
			<Bay name="w1g_1" sxy:x="3" sxy:y="0">
				<ConductingEquipment name="W1G" type="IFL" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w1g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_W1G" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w1g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w1g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/220/w1g_1/connvtyNode3" sxy:x="1" sxy:y="1" />
			</Bay>
			<Bay name="w2g" sxy:x="6" sxy:y="0">
				<ConductingEquipment name="TA1_W2G" type="CTR" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w2g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W2G" type="DIS" sxy:x="1" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w2g_1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w2g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_W2G" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="Q1_W2G" type="CBR" sxy:x="1" sxy:y="2">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w2g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="TA2_W2G" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w2g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_W2G" type="DIS" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K1G/K1G" substationName="PIGGI" voltageLevelName="220" bayName="K1G" cNodeName="K1G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG3_W2G" type="DIS" sxy:x="0" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w2g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/w2g/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/w2g/connvtyNode1" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/w2g/connvtyNode4" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/w2g/connvtyNode5" sxy:x="1" sxy:y="2" />
			</Bay>
			<Bay name="w2g_1" sxy:x="6" sxy:y="0">
				<ConductingEquipment name="W2G" type="IFL" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w2g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_W2G" type="DIS" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w2g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w2g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/220/w2g_1/connvtyNode3" sxy:x="1" sxy:y="0" />

			</Bay>
			<Bay name="w3g" sxy:x="9" sxy:y="0">
				<ConductingEquipment name="TA1_W3G" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w3g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W3G" type="DIS" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w3g_1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w3g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_W3G" type="DIS" sxy:x="0" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="Q1_W3G" type="CBR" sxy:x="1" sxy:y="2">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w3g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="TA2_W3G" type="CTR" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w3g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_W3G" type="DIS" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K1G/K1G" substationName="PIGGI" voltageLevelName="220" bayName="K1G" cNodeName="K1G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG3_W3G" type="DIS" sxy:x="0" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w3g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/w3g/connvtyNode2" sxy:x="0" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/w3g/connvtyNode1" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/w3g/connvtyNode4" sxy:x="1" sxy:y="3" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/w3g/connvtyNode5" sxy:x="1" sxy:y="3" />
			</Bay>
			<Bay name="w3g_1" sxy:x="9" sxy:y="0">
				<ConductingEquipment name="W3G" type="IFL" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w3g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_W3G" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w3g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w3g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/220/w3g_1/connvtyNode3" sxy:x="0" sxy:y="1" />
			</Bay>
			<Bay name="K2G" desc="" sxy:x="14" sxy:y="5">
				<Text>Bus</Text>
				<ConductingEquipment name="QSG1_K2G" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K2G/K2G" substationName="PIGGI" voltageLevelName="220" bayName="K2G" cNodeName="K2G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_K2G" type="DIS" sxy:x="12" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K2G/K2G" substationName="PIGGI" voltageLevelName="220" bayName="K2G" cNodeName="K2G" />
				</ConductingEquipment>
				<ConnectivityNode name="K2G" pathName="PIGGI/220/K2G/K2G" sxy:x="0" sxy:y="0" sxy:dir="horizontal" />
			</Bay>
			<Bay name="K2G_TV1" sxy:x="2" sxy:y="5">
				<ConductingEquipment name="QS_TV1K2G" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K2G/K2G" substationName="PIGGI" voltageLevelName="220" bayName="K2G" cNodeName="K2G" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K2G_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="K2G_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG_TV1K2G" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K2G_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="K2G_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TV1_K2G" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K2G_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="K2G_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/K2G_TV1/connvtyNode1" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>
			<Bay name="w4g" sxy:x="14" sxy:y="1">
				<ConductingEquipment name="TA1_W4G" type="CTR" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w4g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W4G" type="DIS" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w4g_1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w4g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_W4G" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="Q1_W4G" type="CBR" sxy:x="1" sxy:y="2">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w4g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="TA2_W4G" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w4g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_W4G" type="DIS" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K2G/K2G" substationName="PIGGI" voltageLevelName="220" bayName="K2G" cNodeName="K2G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG3_W4G" type="DIS" sxy:x="0" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w4g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/w4g/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/w4g/connvtyNode1" sxy:x="2" sxy:y="2" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/w4g/connvtyNode4" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/w4g/connvtyNode5" sxy:x="2" sxy:y="2" />
			</Bay>
			<Bay name="w4g_1" sxy:x="14" sxy:y="1">
				<ConductingEquipment name="W4G" type="IFL" sxy:x="1" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w4g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_W4G" type="DIS" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w4g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w4g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/220/w4g_1/connvtyNode3" sxy:x="1" sxy:y="0" />
			</Bay>
			<Bay name="qc1g" sxy:x="13" sxy:y="1">
				<ConductingEquipment name="QC1G_TA1" type="CTR" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/qc1g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/qc1g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1G_QS2" type="DIS" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/K1G/K1G" substationName="PIGGI" voltageLevelName="220" bayName="K1G" cNodeName="K1G" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/qc1g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1G_QSG2" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/qc1g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1G" type="CBR" sxy:x="1" sxy:y="2">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/qc1g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/qc1g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1G_TA2" type="CTR" sxy:x="2" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/qc1g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/qc1g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1G_QS1" type="DIS" sxy:x="2" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/qc1g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K2G/K2G" substationName="PIGGI" voltageLevelName="220" bayName="K2G" cNodeName="K2G" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1G_QSG1" type="DIS" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/qc1g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="qc1g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/qc1g/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/qc1g/connvtyNode1" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/qc1g/connvtyNode4" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/qc1g/connvtyNode5" sxy:x="1" sxy:y="2" />
			</Bay>
			<Bay name="w5g" sxy:x="17" sxy:y="1">
				<ConductingEquipment name="TA1_W5G" type="CTR" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w5g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W5G" type="DIS" sxy:x="1" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w5g_1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w5g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_W5G" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="Q1_W5G" type="CBR" sxy:x="1" sxy:y="2">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w5g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="TA2_W5G" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w5g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_W5G" type="DIS" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K2G/K2G" substationName="PIGGI" voltageLevelName="220" bayName="K2G" cNodeName="K2G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG3_W5G" type="DIS" sxy:x="0" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w5g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/w5g/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/w5g/connvtyNode1" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/w5g/connvtyNode4" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/w5g/connvtyNode5" sxy:x="1" sxy:y="2" />
			</Bay>
			<Bay name="w5g_1" sxy:x="17" sxy:y="1">
				<ConductingEquipment name="W5G" type="IFL" sxy:x="1" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w5g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_W5G" type="DIS" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w5g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w5g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/220/w5g_1/connvtyNode3" sxy:x="1" sxy:y="0" />
			</Bay>
			<Bay name="w6g" sxy:x="22" sxy:y="1">
				<ConductingEquipment name="TA1_W6G" type="CTR" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w6g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W6G" type="DIS" sxy:x="1" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w6g_1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w6g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_W6G" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="Q1_W6G" type="CBR" sxy:x="1" sxy:y="2">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w6g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="TA2_W6G" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/w6g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_W6G" type="DIS" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K2G/K2G" substationName="PIGGI" voltageLevelName="220" bayName="K2G" cNodeName="K2G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG3_W6G" type="DIS" sxy:x="0" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="w6g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/w6g/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/w6g/connvtyNode1" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/w6g/connvtyNode4" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/w6g/connvtyNode5" sxy:x="1" sxy:y="2" />
			</Bay>
			<Bay name="w6g_1" sxy:x="22" sxy:y="1">
				<ConductingEquipment name="W6G" type="IFL" sxy:x="1" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w6g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_W6G" type="DIS" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/w6g_1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="w6g_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/220/w6g_1/connvtyNode3" sxy:x="1" sxy:y="0" />
			</Bay>
			<Bay name="t1g1" sxy:x="0" sxy:y="0">
				<ConductingEquipment name="TA1_T1G1" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t1g1/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_T1G1" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t1g1/connvtyNode6" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode6" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_T1G1" type="DIS" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t1g1/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_T1G1" type="DIS" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="Q1_T1G1" type="CBR" sxy:x="1" sxy:y="2">
					<Text>bypassBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t1g1/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="TA2_T1G1" type="CTR" sxy:x="2" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t1g1/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_T1G1" type="DIS" sxy:x="1" sxy:y="4">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K1G/K1G" substationName="PIGGI" voltageLevelName="220" bayName="K1G" cNodeName="K1G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG3_T1G1" type="DIS" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG2_T1G1" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t1g1/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="t1g1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/t1g1/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/t1g1/connvtyNode1" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/t1g1/connvtyNode4" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/t1g1/connvtyNode5" sxy:x="2" sxy:y="3" />
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/220/t1g1/connvtyNode3" sxy:x="1" sxy:y="0" />
				<ConnectivityNode name="connvtyNode6" pathName="PIGGI/220/t1g1/connvtyNode6" sxy:x="1" sxy:y="0" />
			</Bay>
			<Bay name="t2g2" sxy:x="24" sxy:y="0">
				<ConductingEquipment name="TA1_T2G2" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t2g2/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_T2G2" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t2g2/connvtyNode6" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode6" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QSG2_T2G2" type="DIS" sxy:x="0" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="Q1_T2G2" type="CBR" sxy:x="1" sxy:y="3">
					<Text>bypassBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode1" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t2g2/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="TA2_T2G2" type="CTR" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode4" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t2g2/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_T2G2" type="DIS" sxy:x="1" sxy:y="4">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/K2G/K2G" substationName="PIGGI" voltageLevelName="220" bayName="K2G" cNodeName="K2G" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG1_T2G2" type="DIS" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG3_T2G2" type="DIS" sxy:x="0" sxy:y="4">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode5" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QS2_T2G2_1" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/220/t2g2/connvtyNode3" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/220/t2g2/connvtyNode2" substationName="PIGGI" voltageLevelName="220" bayName="t2g2" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/220/t2g2/connvtyNode2" sxy:x="0" sxy:y="1" />
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/220/t2g2/connvtyNode3" sxy:x="1" sxy:y="0" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/220/t2g2/connvtyNode1" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/220/t2g2/connvtyNode4" sxy:x="1" sxy:y="3" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/220/t2g2/connvtyNode5" sxy:x="1" sxy:y="3" />
				<ConnectivityNode name="connvtyNode6" pathName="PIGGI/220/t2g2/connvtyNode6" sxy:x="1" sxy:y="3" />
			</Bay>
		</VoltageLevel>
		<VoltageLevel name="10" sxy:x="29" sxy:y="2">
			<Voltage unit="V" multiplier="k">10</Voltage>
			<Bay name="K1K" desc="" sxy:x="8" sxy:y="0">
				<Text>Bus</Text>
				<ConnectivityNode name="K1K" pathName="PIGGI/10/K1K/K1K" sxy:x="1" sxy:y="0" sxy:dir="vertical" />
			</Bay>
			<Bay name="K1K_TV1" sxy:x="2" sxy:y="5">
				<ConductingEquipment name="QS_TV1K1K" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K1K/K1K" substationName="PIGGI" voltageLevelName="10" bayName="K1K" cNodeName="K1K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/K1K_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="K1K_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG_TV1K1K" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K1K_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="K1K_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TV_K1K" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K1K_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="K1K_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/K1K_TV1/connvtyNode1" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>
			<Bay name="K2K" desc="" sxy:x="9" sxy:y="7">
				<Text>Bus</Text>
				<ConnectivityNode name="K2K" pathName="PIGGI/10/K2K/K2K" sxy:x="1" sxy:y="0" sxy:dir="vertical" />
			</Bay>
			<Bay name="K2K_TV1" sxy:x="2" sxy:y="5">
				<ConductingEquipment name="QS_TV1K2K" type="DIS" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K2K/K2K" substationName="PIGGI" voltageLevelName="10" bayName="K2K" cNodeName="K2K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/K2K_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="K2K_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="QSG_TV1K2K" type="DIS" sxy:x="10" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K2K_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="K2K_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="TV_K2K" type="VTR" sxy:x="1" sxy:y="0" sxy:dir="vertical">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K2K_TV1/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="K2K_TV1" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/K2K_TV1/connvtyNode1" sxy:x="1" sxy:y="1" sxy:dir="horizontal" />
			</Bay>
			<Bay name="w1k" sxy:x="10" sxy:y="0">
				<ConductingEquipment name="Q1_W1K" type="CBR" sxy:x="1" sxy:y="1" sxy:dir="horizontal">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w1k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w1k" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w1k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w1k" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W1K" type="DIS" sxy:x="0" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K1K/K1K" substationName="PIGGI" voltageLevelName="10" bayName="K1K" cNodeName="K1K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w1k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w1k" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="CAB1" type="CAB" sxy:x="2" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w1k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w1k" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w1k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w1k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="W1K" type="IFL" sxy:x="3" sxy:y="1" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w1k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w1k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_W1K" type="CTR" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w1k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w1k" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w1k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w1k" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/w1k/connvtyNode1" sxy:x="0" sxy:y="1" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/10/w1k/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/10/w1k/connvtyNode3" sxy:x="2" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/w1k/connvtyNode4" sxy:x="2" sxy:y="1" />
			</Bay>
			<Bay name="w2k" sxy:x="11" sxy:y="2">
				<ConductingEquipment name="Q1_W2K" type="CBR" sxy:x="1" sxy:y="0">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w2k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w2k" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w2k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w2k" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W2K" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K1K/K1K" substationName="PIGGI" voltageLevelName="10" bayName="K1K" cNodeName="K1K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w2k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w2k" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="CAB2" type="CAB" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w2k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w2k" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w2k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w2k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="W2K" type="IFL" sxy:x="3" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w2k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w2k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_W2K" type="CTR" sxy:x="1" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w2k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w2k" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w2k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w2k" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/w2k/connvtyNode1" sxy:x="1" sxy:y="0" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/10/w2k/connvtyNode2" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/10/w2k/connvtyNode3" sxy:x="3" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/w2k/connvtyNode4" sxy:x="2" sxy:y="0" />
			</Bay>
			<Bay name="w3k" sxy:x="11" sxy:y="3">
				<ConductingEquipment name="Q1_W3K" type="CBR" sxy:x="1" sxy:y="0">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w3k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w3k" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w3k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w3k" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W3K" type="DIS" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K1K/K1K" substationName="PIGGI" voltageLevelName="10" bayName="K1K" cNodeName="K1K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w3k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w3k" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="CAB3" type="CAB" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w3k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w3k" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w3k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w3k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="W3K" type="IFL" sxy:x="3" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w3k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w3k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_W3K" type="CTR" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w3k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w3k" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w3k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w3k" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/w3k/connvtyNode1" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/10/w3k/connvtyNode2" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/10/w3k/connvtyNode3" sxy:x="3" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/w3k/connvtyNode4" sxy:x="3" sxy:y="1" />
			</Bay>
			<Bay name="qc1g" sxy:x="12" sxy:y="4">
				<ConductingEquipment name="QC1K_QS2" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K1K/K1K" substationName="PIGGI" voltageLevelName="10" bayName="K1K" cNodeName="K1K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/qc1g/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="qc1g" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1K" type="CBR" sxy:x="1" sxy:y="2">
					<Text>BusBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/qc1g/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="qc1g" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/qc1g/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="qc1g" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1K_TA" type="CTR" sxy:x="1" sxy:y="2">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/qc1g/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="qc1g" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/qc1g/connvtyNode5" substationName="PIGGI" voltageLevelName="10" bayName="qc1g" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1K_QS1" type="DIS" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/qc1g/connvtyNode5" substationName="PIGGI" voltageLevelName="10" bayName="qc1g" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/K2K/K2K" substationName="PIGGI" voltageLevelName="10" bayName="K2K" cNodeName="K2K" />
				</ConductingEquipment>
				<ConductingEquipment name="QC1K_QSG1" type="DIS" sxy:x="0" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/qc1g/connvtyNode5" substationName="PIGGI" voltageLevelName="10" bayName="qc1g" cNodeName="connvtyNode5" />
				</ConductingEquipment>			
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/qc1g/connvtyNode1" sxy:x="2" sxy:y="2" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/qc1g/connvtyNode4" sxy:x="1" sxy:y="2" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/10/qc1g/connvtyNode5" sxy:x="1" sxy:y="3" />
			</Bay>
			<Bay name="w4k" sxy:x="10" sxy:y="9">
				<ConductingEquipment name="Q1_W4K" type="CBR" sxy:x="1" sxy:y="1">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w4k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w4k" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w4k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w4k" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_WK" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K2K/K2K" substationName="PIGGI" voltageLevelName="10" bayName="K2K" cNodeName="K2K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w4k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w4k" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="CAB4" type="CAB" sxy:x="3" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w4k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w4k" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w4k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w4k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="W4K" type="IFL" sxy:x="4" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w4k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w4k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_W4K" type="CTR" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w4k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w4k" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w4k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w4k" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/w4k/connvtyNode1" sxy:x="1" sxy:y="0" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/10/w4k/connvtyNode2" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/10/w4k/connvtyNode3" sxy:x="3" sxy:y="0" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/w4k/connvtyNode4" sxy:x="2" sxy:y="1" />
			</Bay>
			<Bay name="w5k" sxy:x="10" sxy:y="10">
				<ConductingEquipment name="Q1_W5K" type="CBR" sxy:x="0" sxy:y="0">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w5k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w5k" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w5k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w5k" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W5K" type="DIS" sxy:x="0" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K2K/K2K" substationName="PIGGI" voltageLevelName="10" bayName="K2K" cNodeName="K2K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w5k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w5k" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="CAB5" type="CAB" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w5k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w5k" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w5k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w5k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="W5K" type="IFL" sxy:x="3" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w5k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w5k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_W5K" type="CTR" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w5k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w5k" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w5k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w5k" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/w5k/connvtyNode1" sxy:x="0" sxy:y="0" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/10/w5k/connvtyNode2" sxy:x="1" sxy:y="0" />
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/10/w5k/connvtyNode3" sxy:x="2" sxy:y="0" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/w5k/connvtyNode4" sxy:x="2" sxy:y="0" />
			</Bay>
			<Bay name="w6k" sxy:x="10" sxy:y="12">
				<ConductingEquipment name="Q1_W6K" type="CBR" sxy:x="1" sxy:y="1">
					<Text>fiderBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w6k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w6k" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w6k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w6k" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				<ConductingEquipment name="QS1_W6K" type="DIS" sxy:x="0" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/K2K/K2K" substationName="PIGGI" voltageLevelName="10" bayName="K2K" cNodeName="K2K" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w6k/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="w6k" cNodeName="connvtyNode1" />
				</ConductingEquipment>
				<ConductingEquipment name="CAB6" type="CAB" sxy:x="2" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w6k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w6k" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w6k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w6k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="W6K" type="IFL" sxy:x="3" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w6k/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="w6k" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				<ConductingEquipment name="TA_W6K" type="CTR" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/w6k/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="w6k" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/w6k/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="w6k" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/w6k/connvtyNode1" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/10/w6k/connvtyNode2" sxy:x="2" sxy:y="1" />
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/10/w6k/connvtyNode3" sxy:x="3" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/w6k/connvtyNode4" sxy:x="2" sxy:y="1" />
			</Bay>
			<Bay name="t1k_1" sxy:x="1" sxy:y="1">			
				<ConductingEquipment name="TA_T1K" type="CTR" sxy:x="4" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_1/connvtyNode7" substationName="PIGGI" voltageLevelName="10" bayName="t1k_1" cNodeName="connvtyNode7" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_1/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="t1k_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TV_K1K_T1" type="VTR" sxy:x="1" sxy:y="4">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_1/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="t1k_1" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QS1_T1K" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_1/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="t1k_1" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_11/connvtyNode6" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode6" />
				</ConductingEquipment>	

				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/10/t1k_1/connvtyNode3" sxy:x="0" sxy:y="4" />
				<ConnectivityNode name="connvtyNode7" pathName="PIGGI/10/t1k_1/connvtyNode7" sxy:x="2" sxy:y="1" />
			</Bay>			
			<Bay name="t1k_11" sxy:x="1" sxy:y="1">			
				<ConductingEquipment name="QSG1_K1K" type="DIS" sxy:x="2" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_11/connvtyNode6" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode6" />
				</ConductingEquipment>
				
				<ConductingEquipment name="LT1K" type="REA" sxy:x="2" sxy:y="0" sxy:dir="horizontal">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_11/connvtyNode6" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode6" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_11/connvtyNode5" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode5" />
				</ConductingEquipment>			
															
				<ConductingEquipment name="CAB1_T1K" type="CAB" sxy:x="3" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_11/connvtyNode5" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_11/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA1_T1K" type="CTR" sxy:x="4" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_11/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_11/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode1" />
				</ConductingEquipment>	

				<ConductingEquipment name="QS2_T1K" type="DIS" sxy:x="5" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_11/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_11/connvtyNode7" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode7" />
				</ConductingEquipment>				
				
				<ConductingEquipment name="Q1_T1K" type="CBR" sxy:x="5" sxy:y="1">
					<Text>bypassBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_11/connvtyNode7" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode7" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_11/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode2" />
				</ConductingEquipment>						
																
				<ConductingEquipment name="QS3_T1K" type="DIS" sxy:x="5" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_11/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="t1k_11" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/K1K/K1K" substationName="PIGGI" voltageLevelName="10" bayName="K1K" cNodeName="K1K" />
				</ConductingEquipment>
			
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/10/t1k_11/connvtyNode2" sxy:x="5" sxy:y="1" />
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/t1k_11/connvtyNode1" sxy:x="5" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/t1k_11/connvtyNode4" sxy:x="3" sxy:y="1" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/10/t1k_11/connvtyNode5" sxy:x="3" sxy:y="1" />
				<ConnectivityNode name="connvtyNode6" pathName="PIGGI/10/t1k_11/connvtyNode6" sxy:x="2" sxy:y="1" />
				<ConnectivityNode name="connvtyNode7" pathName="PIGGI/10/t1k_11/connvtyNode7" sxy:x="2" sxy:y="1" />
			</Bay>						
			<Bay name="t1k_2" sxy:x="1" sxy:y="8">			
				<ConductingEquipment name="TA_T2K" type="CTR" sxy:x="3" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_2/connvtyNode7" substationName="PIGGI" voltageLevelName="10" bayName="t1k_2" cNodeName="connvtyNode7" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_2/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="t1k_2" cNodeName="connvtyNode3" />
				</ConductingEquipment>
								
				<ConductingEquipment name="TV_K2K_T2" type="VTR" sxy:x="1" sxy:y="3">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_2/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="t1k_2" cNodeName="connvtyNode3" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QS1_T2K" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_2/connvtyNode3" substationName="PIGGI" voltageLevelName="10" bayName="t1k_2" cNodeName="connvtyNode3" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_21/connvtyNode6" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode6" />
				</ConductingEquipment>
				
				<ConnectivityNode name="connvtyNode3" pathName="PIGGI/10/t1k_2/connvtyNode3" sxy:x="0" sxy:y="4" />
				<ConnectivityNode name="connvtyNode7" pathName="PIGGI/10/t1k_2/connvtyNode7" sxy:x="1" sxy:y="1" />

			</Bay>
			<Bay name="t1k_21" sxy:x="1" sxy:y="8">						
				
				<ConductingEquipment name="QSG2_K2K" type="DIS" sxy:x="1" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_21/connvtyNode6" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode6" />
				</ConductingEquipment>

				<ConductingEquipment name="LT2K" type="REA" sxy:x="2" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_21/connvtyNode6" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode6" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_21/connvtyNode5" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode5" />
				</ConductingEquipment>
				
				<ConductingEquipment name="CAB1_T2K" type="CAB" sxy:x="3" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_21/connvtyNode5" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode5" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_21/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode4" />
				</ConductingEquipment>
				
				<ConductingEquipment name="TA1_T2K" type="CTR" sxy:x="3" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_21/connvtyNode4" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode4" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_21/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode1" />
				</ConductingEquipment>

				<ConductingEquipment name="QS2_T2K" type="DIS" sxy:x="4" sxy:y="1">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_21/connvtyNode1" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode1" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_21/connvtyNode7" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode7" />
				</ConductingEquipment>
				
				<ConductingEquipment name="Q1_T2K" type="CBR" sxy:x="4" sxy:y="0">
					<Text>bypassBreaker</Text>
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_21/connvtyNode7" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode7" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/t1k_21/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode2" />
				</ConductingEquipment>
				
				<ConductingEquipment name="QS3_T2K" type="DIS" sxy:x="5" sxy:y="0">
					<Terminal name="terminal1" connectivityNode="PIGGI/10/t1k_21/connvtyNode2" substationName="PIGGI" voltageLevelName="10" bayName="t1k_21" cNodeName="connvtyNode2" />
					<Terminal name="terminal2" connectivityNode="PIGGI/10/K2K/K2K" substationName="PIGGI" voltageLevelName="10" bayName="K2K" cNodeName="K2K" />
				</ConductingEquipment>
				
				<ConnectivityNode name="connvtyNode1" pathName="PIGGI/10/t1k_21/connvtyNode1" sxy:x="4" sxy:y="1" />				
				<ConnectivityNode name="connvtyNode2" pathName="PIGGI/10/t1k_21/connvtyNode2" sxy:x="5" sxy:y="1" />
				<ConnectivityNode name="connvtyNode4" pathName="PIGGI/10/t1k_21/connvtyNode4" sxy:x="3" sxy:y="1" />
				<ConnectivityNode name="connvtyNode5" pathName="PIGGI/10/t1k_21/connvtyNode5" sxy:x="3" sxy:y="1" />
				<ConnectivityNode name="connvtyNode6" pathName="PIGGI/10/t1k_21/connvtyNode6" sxy:x="1" sxy:y="1" />
				<ConnectivityNode name="connvtyNode7" pathName="PIGGI/10/t1k_21/connvtyNode7" sxy:x="1" sxy:y="1" />

			</Bay>
		</VoltageLevel>
	</Substation>
</SCL>