<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE AdapterType SYSTEM "http://www.holobloc.com/xml/LibraryElement.dtd">
<AdapterType Name="AGripperPneumatic">
  <Identification Standard="61499-1"/>
  <VersionInfo Author="GE" Date="2008-04-22" Organization="4DIAC-Consortium" Version="0.0"/>
  <InterfaceList>
    <EventInputs>
      <Event Comment="" Name="Gripped" Type="Event"/>
      <Event Comment="" Name="Released" Type="Event"/>
      <Event Name="GripFail" Type="Event"/>
      <Event Name="RelaseFail" Type="Event"/>
    </EventInputs>
    <EventOutputs>
      <Event Comment="Command to grip" Name="Grip" Type="Event"/>
      <Event Comment="Command to release" Name="Release" Type="Event"/>
    </EventOutputs>
    <InputVars/>
    <OutputVars/>
  </InterfaceList>
  <Service LeftInterface="PLUG" RightInterface="SOCKET">
    <ServiceSequence Name="GripSuccess">
      <ServiceTransaction>
        <InputPrimitive Event="Grip" Interface="PLUG" Parameters="REQD"/>
        <OutputPrimitive Event="Grip" Interface="SOCKET" Parameters="REQD"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="StatusGrip" Interface="SOCKET" Parameters="CNFD"/>
        <OutputPrimitive Event="StatusGrip" Interface="PLUG" Parameters="CNFD"/>
      </ServiceTransaction>
    </ServiceSequence>
    <ServiceSequence Name="ReleaseSuccess">
      <ServiceTransaction>
        <InputPrimitive Event="Release" Interface="PLUG"/>
        <OutputPrimitive Event="Release" Interface="SOCKET"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="StatusRelease" Interface="SOCKET"/>
        <OutputPrimitive Event="StatusRelease" Interface="PLUG"/>
      </ServiceTransaction>
    </ServiceSequence>
    <ServiceSequence Name="GripFail">
      <ServiceTransaction>
        <InputPrimitive Event="Grip" Interface="PLUG"/>
        <OutputPrimitive Event="Grip" Interface="SOCKET"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="GripFail" Interface="SOCKET"/>
        <OutputPrimitive Event="GripFail" Interface="PLUG"/>
      </ServiceTransaction>
    </ServiceSequence>
    <ServiceSequence Name="RelaseFail">
      <ServiceTransaction>
        <InputPrimitive Event="Release" Interface="PLUG"/>
        <OutputPrimitive Event="Release" Interface="SOCKET"/>
      </ServiceTransaction>
      <ServiceTransaction>
        <InputPrimitive Event="ReleaseFail" Interface="SOCKET"/>
        <OutputPrimitive Event="ReleaseFail" Interface="PLUG"/>
      </ServiceTransaction>
    </ServiceSequence>
  </Service>
</AdapterType>
