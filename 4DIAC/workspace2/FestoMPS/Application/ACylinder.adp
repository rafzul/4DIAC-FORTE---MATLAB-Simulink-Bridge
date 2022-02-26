<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE AdapterType SYSTEM "http://www.holobloc.com/xml/LibraryElement.dtd">
<AdapterType Name="ACylinder">
  <Identification Standard="61499-1"/>
  <VersionInfo Author="GE" Date="2008-04-22" Organization="4DIAC-Consortium" Version="0.0"/>
  <InterfaceList>
    <EventInputs>
      <Event Comment="Response from Socket" Name="Extended" Type="Event"/>
      <Event Comment="Response from Socket" Name="Retracted" Type="Event"/>
      <Event Name="ExtendFail" Type="Event"/>
      <Event Name="RetractFail" Type="Event"/>
    </EventInputs>
    <EventOutputs>
      <Event Name="Extend" Type="Event"/>
      <Event Name="Retract" Type="Event"/>
    </EventOutputs>
    <InputVars/>
    <OutputVars/>
  </InterfaceList>
  <Service LeftInterface="PLUG" RightInterface="SOCKET">
    <ServiceSequence Name="ExtendSuccess">
      <ServiceTransaction>
        <InputPrimitive Event="Extend" Interface="PLUG" Parameters=""/>
        <OutputPrimitive Event="Extend" Interface="SOCKET" Parameters="REQD"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="StatusExtend" Interface="SOCKET" Parameters="CNFD"/>
        <OutputPrimitive Event="StatusExtend" Interface="PLUG" Parameters="CNFD"/>
      </ServiceTransaction>
    </ServiceSequence>
    <ServiceSequence Name="RetractSuccess">
      <ServiceTransaction>
        <InputPrimitive Event="Retract" Interface="PLUG"/>
        <OutputPrimitive Event="Retract" Interface="SOCKET"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="StatusRetract" Interface="SOCKET"/>
        <OutputPrimitive Event="StatusRetract" Interface="PLUG"/>
      </ServiceTransaction>
    </ServiceSequence>
    <ServiceSequence Name="ExtendFail">
      <ServiceTransaction>
        <InputPrimitive Event="Extend" Interface="PLUG"/>
        <OutputPrimitive Event="Extend" Interface="SOCKET"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="ExtendFail" Interface="SOCKET"/>
        <OutputPrimitive Event="ExtendFail" Interface="PLUG"/>
      </ServiceTransaction>
    </ServiceSequence>
    <ServiceSequence Name="RetarctFail">
      <ServiceTransaction>
        <InputPrimitive Event="Retract" Interface="PLUG"/>
        <OutputPrimitive Event="Retract" Interface="SOCKET"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="RetractFail" Interface="SOCKET"/>
        <OutputPrimitive Event="RetractFail" Interface="PLUG"/>
      </ServiceTransaction>
    </ServiceSequence>
  </Service>
</AdapterType>
