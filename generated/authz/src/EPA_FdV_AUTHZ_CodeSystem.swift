//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


import Foundation

/**
* vocSet: T396 (C-0-T396-cpt)
*/

public enum EPA_FdV_AUTHZ_CodeSystem:Int,CustomStringConvertible
{
    case  ABCcodes
    case  AS4E
    case  AS4
    case  AcknowledgementDetailType
    case  AcknowledgementCondition
    case  AcknowledgementDetailCode
    case  AcknowledgementType
    case  ActClass
    case  ActCode
    case  ActExposureLevelCode
    case  ActInvoiceElementModifier
    case  ActMood
    case  ActPriority
    case  ActReason
    case  ActRelationshipCheckpoint
    case  ActRelationshipJoin
    case  ActRelationshipSplit
    case  ActRelationshipSubset
    case  ActRelationshipType
    case  ActSite
    case  ActStatus
    case  ActUncertainty
    case  AddressPartType
    case  AdministrativeGender
    case  ACR
    case  ATC
    case  AmericanIndianAlaskaNativeLanguages
    case  CAMNCVS
    case  CSAID
    case  CDCA
    case  CDCM
    case  CDS
    case  CVX
    case  MVX
    case  CD2
    case  CE
    case  CLP
    case  CST
    case  C4
    case  C5
    case  Calendar
    case  CalendarCycle
    case  CalendarType
    case  CCI
    case  ICD_x002D_10_x002D_CA
    case  Charset
    case  CAS
    case  CodeSystem
    case  CodingRationale
    case  CommunicationFunctionType
    case  CompressionAlgorithm
    case  ConceptGenerality
    case  Confidentiality
    case  ContainerCap
    case  ContainerSeparator
    case  ContentProcessingMode
    case  ContextControl
    case  Currency
    case  DCL
    case  DQL
    case  DCM
    case  DataType
    case  Dentition
    case  DeviceAlertLevel
    case  DocumentCompletion
    case  DocumentStorage
    case  EPSG_x002D_GeodeticParameterDataset
    case  E
    case  EditStatus
    case  EducationLevel
    case  EmployeeJobClass
    case  EncounterAcuity
    case  EncounterAccident
    case  EncounterAdmissionSource
    case  EncounterReferralSource
    case  EncounterSpecialCourtesy
    case  EntityClass
    case  EntityCode
    case  EntityDeterminer
    case  EntityHandling
    case  EntityNamePartQualifier
    case  EntityNamePartType
    case  EntityNameUse
    case  EntityRisk
    case  EntityStatus
    case  ENZC
    case  EquipmentAlertLevel
    case  Ethnicity
    case  E5
    case  E7
    case  E6
    case  ExposureMode
    case  FDK
    case  FDDX
    case  FDDC
    case  GTSAbbreviation
    case  GenderStatus
    case  HPC
    case  HB
    case  CodeSystemType
    case  ConceptStatus
    case  HL7ITSVersionCode
    case  ConceptProperty
    case  HL7CommitteeIDInRIM
    case  HL7ConformanceInclusion
    case  HL7DefinedRoseProperty
    case  HL7StandardVersionCode
    case  HL7UpdateMode
    case  HI
    case  HealthcareProviderTaxonomyHIPAA
    case  HHC
    case  HtmlLinkType
    case  ICS
    case  I10
    case  I10P
    case  I9C
    case  I9
    case  IC2
    case  IETF1766
    case  IBT
    case  MDC
    case  ISO3166_x002D_1
    case  ISO3166_x002D_2
    case  ISO3166_x002D_3
    case  ISO4217
    case  IUPC
    case  IUPP
    case  IntegrityCheckAlgorithm
    case  ICDO
    case  ICSD
    case  JC8
    case  LanguageAbilityMode
    case  LanguageAbilityProficiency
    case  LivingArrangement
    case  LocalMarkupIgnore
    case  LocalRemoteControlState
    case  LN
    case  MDFAttributeType
    case  MDFSubjectAreaPrefix
    case  UMD
    case  MEDCIN
    case  MIME
    case  ManagedParticipationStatus
    case  MapRelationship
    case  MaritalStatus
    case  MaterialType
    case  MdfHmdMetSourceType
    case  MdfHmdRowType
    case  MdfRmimRowType
    case  MediaType
    case  MEDR
    case  MEDX
    case  MEDC
    case  MDDX
    case  MGPI
    case  MessageWaitingPriority
    case  MessageCondition
    case  ModifyIndicator
    case  MULTUM
    case  NAACCR
    case  NDA
    case  NOC
    case  NUCCProviderCodes
    case  NUBC_x002D_UB92
    case  NDC
    case  NAICS
    case  NullFlavor
    case  NIC
    case  NMMDS
    case  ObservationInterpretation
    case  ObservationMethod
    case  ObservationValue
    case  OHA
    case  OrderableDrugForm
    case  OrganizationNameType
    case  POS
    case  ParameterizedDataType
    case  ParticipationFunction
    case  ParticipationMode
    case  ParticipationSignature
    case  ParticipationType
    case  PatientImportance
    case  PaymentTerms
    case  PeriodicIntervalOfTimeAbbreviation
    case  PNDS
    case  PersonDisabilityType
    case  ConceptCodeRelationship
    case  PostalAddressUse
    case  ProbabilityDistributionType
    case  ProcedureMethod
    case  ProcessingID
    case  ProcessingMode
    case  QueryParameterValue
    case  QueryPriority
    case  QueryQuantityUnit
    case  QueryRequestLimit
    case  QueryResponse
    case  QueryStatusCode
    case  Race
    case  RC
    case  RelationalOperator
    case  RelationshipConjunction
    case  ReligiousAffiliation
    case  ResponseLevel
    case  ResponseModality
    case  ResponseMode
    case  RoleClass
    case  RoleCode
    case  RoleLinkType
    case  RoleStatus
    case  RouteOfAdministration
    case  SCDHEC_x002D_GISSpatialAccuracyTiers
    case  SNM3
    case  SNT
    case  SDM
    case  Sequencing
    case  SetOperator
    case  SpecialArrangement
    case  SpecimenType
    case  StyleType
    case  SubstanceAdminSubstitution
    case  SubstitutionCondition
    case  SNM
    case  TableCellHorizontalAlign
    case  TableCellScope
    case  TableCellVerticalAlign
    case  TableFrame
    case  TableRules
    case  IETF3066
    case  TargetAwareness
    case  TelecommunicationAddressUse
    case  RCFB
    case  RCV2
    case  TimingEvent
    case  TransmissionRelationshipTypeCode
    case  TribalEntityUS
    case  UC
    case  UCUM
    case  URLScheme
    case  UML
    case  UnitsOfMeasure
    case  UPC
    case  VaccineManufacturer
    case  VaccineType
    case  VocabularyDomainQualifier
    case  WC
    case  ART
    case  W4
    case  W1_x002D_W2

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_CodeSystem?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_CodeSystem?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_CodeSystem(rawValue: i) 
        {
            if String(describing: item) == value
            {
                return item
            }
            i += 1
        }
       return nil
    }

    public var stringValue : String
    {
        return description
    }

    public var description : String
    {
        switch self
        {
            case  .ABCcodes: return "ABCcodes"
            case  .AS4E: return "AS4E"
            case  .AS4: return "AS4"
            case  .AcknowledgementDetailType: return "AcknowledgementDetailType"
            case  .AcknowledgementCondition: return "AcknowledgementCondition"
            case  .AcknowledgementDetailCode: return "AcknowledgementDetailCode"
            case  .AcknowledgementType: return "AcknowledgementType"
            case  .ActClass: return "ActClass"
            case  .ActCode: return "ActCode"
            case  .ActExposureLevelCode: return "ActExposureLevelCode"
            case  .ActInvoiceElementModifier: return "ActInvoiceElementModifier"
            case  .ActMood: return "ActMood"
            case  .ActPriority: return "ActPriority"
            case  .ActReason: return "ActReason"
            case  .ActRelationshipCheckpoint: return "ActRelationshipCheckpoint"
            case  .ActRelationshipJoin: return "ActRelationshipJoin"
            case  .ActRelationshipSplit: return "ActRelationshipSplit"
            case  .ActRelationshipSubset: return "ActRelationshipSubset"
            case  .ActRelationshipType: return "ActRelationshipType"
            case  .ActSite: return "ActSite"
            case  .ActStatus: return "ActStatus"
            case  .ActUncertainty: return "ActUncertainty"
            case  .AddressPartType: return "AddressPartType"
            case  .AdministrativeGender: return "AdministrativeGender"
            case  .ACR: return "ACR"
            case  .ATC: return "ATC"
            case  .AmericanIndianAlaskaNativeLanguages: return "AmericanIndianAlaskaNativeLanguages"
            case  .CAMNCVS: return "CAMNCVS"
            case  .CSAID: return "CSAID"
            case  .CDCA: return "CDCA"
            case  .CDCM: return "CDCM"
            case  .CDS: return "CDS"
            case  .CVX: return "CVX"
            case  .MVX: return "MVX"
            case  .CD2: return "CD2"
            case  .CE: return "CE"
            case  .CLP: return "CLP"
            case  .CST: return "CST"
            case  .C4: return "C4"
            case  .C5: return "C5"
            case  .Calendar: return "Calendar"
            case  .CalendarCycle: return "CalendarCycle"
            case  .CalendarType: return "CalendarType"
            case  .CCI: return "CCI"
            case  .ICD_x002D_10_x002D_CA: return "ICD-10-CA"
            case  .Charset: return "Charset"
            case  .CAS: return "CAS"
            case  .CodeSystem: return "CodeSystem"
            case  .CodingRationale: return "CodingRationale"
            case  .CommunicationFunctionType: return "CommunicationFunctionType"
            case  .CompressionAlgorithm: return "CompressionAlgorithm"
            case  .ConceptGenerality: return "ConceptGenerality"
            case  .Confidentiality: return "Confidentiality"
            case  .ContainerCap: return "ContainerCap"
            case  .ContainerSeparator: return "ContainerSeparator"
            case  .ContentProcessingMode: return "ContentProcessingMode"
            case  .ContextControl: return "ContextControl"
            case  .Currency: return "Currency"
            case  .DCL: return "DCL"
            case  .DQL: return "DQL"
            case  .DCM: return "DCM"
            case  .DataType: return "DataType"
            case  .Dentition: return "Dentition"
            case  .DeviceAlertLevel: return "DeviceAlertLevel"
            case  .DocumentCompletion: return "DocumentCompletion"
            case  .DocumentStorage: return "DocumentStorage"
            case  .EPSG_x002D_GeodeticParameterDataset: return "EPSG-GeodeticParameterDataset"
            case  .E: return "E"
            case  .EditStatus: return "EditStatus"
            case  .EducationLevel: return "EducationLevel"
            case  .EmployeeJobClass: return "EmployeeJobClass"
            case  .EncounterAcuity: return "EncounterAcuity"
            case  .EncounterAccident: return "EncounterAccident"
            case  .EncounterAdmissionSource: return "EncounterAdmissionSource"
            case  .EncounterReferralSource: return "EncounterReferralSource"
            case  .EncounterSpecialCourtesy: return "EncounterSpecialCourtesy"
            case  .EntityClass: return "EntityClass"
            case  .EntityCode: return "EntityCode"
            case  .EntityDeterminer: return "EntityDeterminer"
            case  .EntityHandling: return "EntityHandling"
            case  .EntityNamePartQualifier: return "EntityNamePartQualifier"
            case  .EntityNamePartType: return "EntityNamePartType"
            case  .EntityNameUse: return "EntityNameUse"
            case  .EntityRisk: return "EntityRisk"
            case  .EntityStatus: return "EntityStatus"
            case  .ENZC: return "ENZC"
            case  .EquipmentAlertLevel: return "EquipmentAlertLevel"
            case  .Ethnicity: return "Ethnicity"
            case  .E5: return "E5"
            case  .E7: return "E7"
            case  .E6: return "E6"
            case  .ExposureMode: return "ExposureMode"
            case  .FDK: return "FDK"
            case  .FDDX: return "FDDX"
            case  .FDDC: return "FDDC"
            case  .GTSAbbreviation: return "GTSAbbreviation"
            case  .GenderStatus: return "GenderStatus"
            case  .HPC: return "HPC"
            case  .HB: return "HB"
            case  .CodeSystemType: return "CodeSystemType"
            case  .ConceptStatus: return "ConceptStatus"
            case  .HL7ITSVersionCode: return "HL7ITSVersionCode"
            case  .ConceptProperty: return "ConceptProperty"
            case  .HL7CommitteeIDInRIM: return "HL7CommitteeIDInRIM"
            case  .HL7ConformanceInclusion: return "HL7ConformanceInclusion"
            case  .HL7DefinedRoseProperty: return "HL7DefinedRoseProperty"
            case  .HL7StandardVersionCode: return "HL7StandardVersionCode"
            case  .HL7UpdateMode: return "HL7UpdateMode"
            case  .HI: return "HI"
            case  .HealthcareProviderTaxonomyHIPAA: return "HealthcareProviderTaxonomyHIPAA"
            case  .HHC: return "HHC"
            case  .HtmlLinkType: return "HtmlLinkType"
            case  .ICS: return "ICS"
            case  .I10: return "I10"
            case  .I10P: return "I10P"
            case  .I9C: return "I9C"
            case  .I9: return "I9"
            case  .IC2: return "IC2"
            case  .IETF1766: return "IETF1766"
            case  .IBT: return "IBT"
            case  .MDC: return "MDC"
            case  .ISO3166_x002D_1: return "ISO3166-1"
            case  .ISO3166_x002D_2: return "ISO3166-2"
            case  .ISO3166_x002D_3: return "ISO3166-3"
            case  .ISO4217: return "ISO4217"
            case  .IUPC: return "IUPC"
            case  .IUPP: return "IUPP"
            case  .IntegrityCheckAlgorithm: return "IntegrityCheckAlgorithm"
            case  .ICDO: return "ICDO"
            case  .ICSD: return "ICSD"
            case  .JC8: return "JC8"
            case  .LanguageAbilityMode: return "LanguageAbilityMode"
            case  .LanguageAbilityProficiency: return "LanguageAbilityProficiency"
            case  .LivingArrangement: return "LivingArrangement"
            case  .LocalMarkupIgnore: return "LocalMarkupIgnore"
            case  .LocalRemoteControlState: return "LocalRemoteControlState"
            case  .LN: return "LN"
            case  .MDFAttributeType: return "MDFAttributeType"
            case  .MDFSubjectAreaPrefix: return "MDFSubjectAreaPrefix"
            case  .UMD: return "UMD"
            case  .MEDCIN: return "MEDCIN"
            case  .MIME: return "MIME"
            case  .ManagedParticipationStatus: return "ManagedParticipationStatus"
            case  .MapRelationship: return "MapRelationship"
            case  .MaritalStatus: return "MaritalStatus"
            case  .MaterialType: return "MaterialType"
            case  .MdfHmdMetSourceType: return "MdfHmdMetSourceType"
            case  .MdfHmdRowType: return "MdfHmdRowType"
            case  .MdfRmimRowType: return "MdfRmimRowType"
            case  .MediaType: return "MediaType"
            case  .MEDR: return "MEDR"
            case  .MEDX: return "MEDX"
            case  .MEDC: return "MEDC"
            case  .MDDX: return "MDDX"
            case  .MGPI: return "MGPI"
            case  .MessageWaitingPriority: return "MessageWaitingPriority"
            case  .MessageCondition: return "MessageCondition"
            case  .ModifyIndicator: return "ModifyIndicator"
            case  .MULTUM: return "MULTUM"
            case  .NAACCR: return "NAACCR"
            case  .NDA: return "NDA"
            case  .NOC: return "NOC"
            case  .NUCCProviderCodes: return "NUCCProviderCodes"
            case  .NUBC_x002D_UB92: return "NUBC-UB92"
            case  .NDC: return "NDC"
            case  .NAICS: return "NAICS"
            case  .NullFlavor: return "NullFlavor"
            case  .NIC: return "NIC"
            case  .NMMDS: return "NMMDS"
            case  .ObservationInterpretation: return "ObservationInterpretation"
            case  .ObservationMethod: return "ObservationMethod"
            case  .ObservationValue: return "ObservationValue"
            case  .OHA: return "OHA"
            case  .OrderableDrugForm: return "OrderableDrugForm"
            case  .OrganizationNameType: return "OrganizationNameType"
            case  .POS: return "POS"
            case  .ParameterizedDataType: return "ParameterizedDataType"
            case  .ParticipationFunction: return "ParticipationFunction"
            case  .ParticipationMode: return "ParticipationMode"
            case  .ParticipationSignature: return "ParticipationSignature"
            case  .ParticipationType: return "ParticipationType"
            case  .PatientImportance: return "PatientImportance"
            case  .PaymentTerms: return "PaymentTerms"
            case  .PeriodicIntervalOfTimeAbbreviation: return "PeriodicIntervalOfTimeAbbreviation"
            case  .PNDS: return "PNDS"
            case  .PersonDisabilityType: return "PersonDisabilityType"
            case  .ConceptCodeRelationship: return "ConceptCodeRelationship"
            case  .PostalAddressUse: return "PostalAddressUse"
            case  .ProbabilityDistributionType: return "ProbabilityDistributionType"
            case  .ProcedureMethod: return "ProcedureMethod"
            case  .ProcessingID: return "ProcessingID"
            case  .ProcessingMode: return "ProcessingMode"
            case  .QueryParameterValue: return "QueryParameterValue"
            case  .QueryPriority: return "QueryPriority"
            case  .QueryQuantityUnit: return "QueryQuantityUnit"
            case  .QueryRequestLimit: return "QueryRequestLimit"
            case  .QueryResponse: return "QueryResponse"
            case  .QueryStatusCode: return "QueryStatusCode"
            case  .Race: return "Race"
            case  .RC: return "RC"
            case  .RelationalOperator: return "RelationalOperator"
            case  .RelationshipConjunction: return "RelationshipConjunction"
            case  .ReligiousAffiliation: return "ReligiousAffiliation"
            case  .ResponseLevel: return "ResponseLevel"
            case  .ResponseModality: return "ResponseModality"
            case  .ResponseMode: return "ResponseMode"
            case  .RoleClass: return "RoleClass"
            case  .RoleCode: return "RoleCode"
            case  .RoleLinkType: return "RoleLinkType"
            case  .RoleStatus: return "RoleStatus"
            case  .RouteOfAdministration: return "RouteOfAdministration"
            case  .SCDHEC_x002D_GISSpatialAccuracyTiers: return "SCDHEC-GISSpatialAccuracyTiers"
            case  .SNM3: return "SNM3"
            case  .SNT: return "SNT"
            case  .SDM: return "SDM"
            case  .Sequencing: return "Sequencing"
            case  .SetOperator: return "SetOperator"
            case  .SpecialArrangement: return "SpecialArrangement"
            case  .SpecimenType: return "SpecimenType"
            case  .StyleType: return "StyleType"
            case  .SubstanceAdminSubstitution: return "SubstanceAdminSubstitution"
            case  .SubstitutionCondition: return "SubstitutionCondition"
            case  .SNM: return "SNM"
            case  .TableCellHorizontalAlign: return "TableCellHorizontalAlign"
            case  .TableCellScope: return "TableCellScope"
            case  .TableCellVerticalAlign: return "TableCellVerticalAlign"
            case  .TableFrame: return "TableFrame"
            case  .TableRules: return "TableRules"
            case  .IETF3066: return "IETF3066"
            case  .TargetAwareness: return "TargetAwareness"
            case  .TelecommunicationAddressUse: return "TelecommunicationAddressUse"
            case  .RCFB: return "RCFB"
            case  .RCV2: return "RCV2"
            case  .TimingEvent: return "TimingEvent"
            case  .TransmissionRelationshipTypeCode: return "TransmissionRelationshipTypeCode"
            case  .TribalEntityUS: return "TribalEntityUS"
            case  .UC: return "UC"
            case  .UCUM: return "UCUM"
            case  .URLScheme: return "URLScheme"
            case  .UML: return "UML"
            case  .UnitsOfMeasure: return "UnitsOfMeasure"
            case  .UPC: return "UPC"
            case  .VaccineManufacturer: return "VaccineManufacturer"
            case  .VaccineType: return "VaccineType"
            case  .VocabularyDomainQualifier: return "VocabularyDomainQualifier"
            case  .WC: return "WC"
            case  .ART: return "ART"
            case  .W4: return "W4"
            case  .W1_x002D_W2: return "W1-W2"
        }
    }

    public func getValue() -> Int
    {
        return rawValue
    }

    func serialize(__parent:DDXMLNode)
    {
        __parent.stringValue = stringValue
    }
}


        
