#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Загрузка соглашений

Сценарий: Загрузка соглашений

// Справочник.Agreements

	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number'  | 'Date'               | 'PartnerSegment'                                                          | 'Partner'                                                          | 'Company'                                                           | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                   | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm'                                                              | 'Description_en'                                                  | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'False'        | 1      | '123456'  | '01.01.2021 0:00:00' | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByDocuments'  | ''                  | 'Enum.AgreementKinds.Regular' | 'True'           | 5000                | 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6868' | 'False'        | 2      | '1234569' | '01.01.2021 0:00:00' | ''                                                                        | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''                                                                         | 'Индивидуальное соглашение 1 (расчет по соглашениям)'             | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6869' | 'False'        | 3      | '1234567' | '01.01.2021 0:00:00' | ''                                                                        | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | ''                                                                  | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''                                                                         | 'Индивидуальное соглашение 2 (расчет по соглашениям)'             | ''                 | ''               | ''               |

	// Справочник.Companies

	И я проверяю или создаю для справочника "Companies" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country'                                                           | 'MainCompany' | 'Partner' | 'Type'                          | 'OurCompany' | 'Description_en'         | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'False'        | 1      | 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | ''            | ''        | 'Enum.CompanyLegalType.Company' | 'True'       | 'Собственная компания 1' | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                               | 'MovementType'                                                                                    |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' |

	// Справочник.Countries

	И я проверяю или создаю для справочника "Countries" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Currency'                                                           | 'LocalizationCode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | 'False'        | 1      | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | ''                 | 'Страна 1'       | ''                 | ''               | ''               |

	// Справочник.Currencies

	И я проверяю или создаю для справочника "Currencies" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Symbol' | 'NumericCode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'False'        | 'USD'  | '$'      | '840'         | 'Доллар'         | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'False'        | 'EUR'  | '€'      | '978'         | 'Евро'           | ''                 | ''               | ''               |

	// Справочник.IntegrationSettings

	И я проверяю или создаю для справочника "IntegrationSettings" объекты:
		| 'Ref'                                                                         | 'DeletionMark' | 'Code' | 'Description'            | 'ExternalDataProc' | 'IntegrationType'                    | 'ExternalDataProcSettings'              | 'UniqueID'                          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'False'        | 1      | 'Источник курса валют 1' | ''                 | 'Enum.IntegrationType.CurrencyRates' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | '_8a862d6e657e4386b794c6e29f6a05e0' |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'False'        | 2      | 'Источник курса валют 2' | ''                 | 'Enum.IntegrationType.CurrencyRates' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | '_b3fe2453726d4545b3334f227d3a00ba' |

	И я перезаполняю для объекта табличную часть "ConnectionSetting":
		| 'Ref'                                                                         | 'Key'                 | 'Value'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'QueryType'           | 'POST'      |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'ResourceAddress'     | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Ip'                  | 'localhost' |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Port'                | '8 080'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'User'                | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Password'            | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Proxy'               | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'TimeOut'             | '60'        |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'SecureConnection'    | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'UseOSAuthentication' | 'False'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Headers'             | 'Map'       |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'QueryType'           | 'POST'      |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'ResourceAddress'     | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Ip'                  | 'localhost' |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Port'                | '8 080'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'User'                | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Password'            | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Proxy'               | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'TimeOut'             | '60'        |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'SecureConnection'    | ''          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'UseOSAuthentication' | 'False'     |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Headers'             | 'Map'       |

	// Справочник.PaymentSchedules

	И я проверяю или создаю для справочника "PaymentSchedules" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Code' | 'Description_en'  | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'False'        | 1      | 'Отсрочка 7 дней' | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "StagesOfPayment":
		| 'Ref'                                                                      | 'CalculationType'                          | 'ProportionOfPayment' | 'DuePeriod' |
		| 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'Enum.CalculationTypes.PostShipmentCredit' | 100                   | 7           |

	// Справочник.PriceTypes

	И я проверяю или создаю для справочника "PriceTypes" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Currency'                                                           | 'ExternalDataProc' | 'ExternalDataProcSettings'              | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 'False'        | 2      | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | ''                 | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'Опт'            | ''                 | ''               | ''               |

	// Справочник.Stores

	И я проверяю или создаю для справочника "Stores" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'UseGoodsReceipt' | 'UseShipmentConfirmation' | 'Transit' | 'NegativeStockControl' | 'Description_en'                | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'False'        | 1      | 'True'            | 'True'                    | 'False'   | 'True'                 | 'Склад 1 (с контролем остатка)' | ''                 | ''               | ''               |

	// ПланВидовХарактеристик.CurrencyMovementType

	И я проверяю или создаю для плана видов характеристик "CurrencyMovementType" объекты:
		| 'Ref'                                                                                             | 'DeletionMark' | 'Currency'                                                           | 'Source'                                                                      | 'Type'                        | 'DeferredCalculation' | 'Description_en'            | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Enum.CurrencyType.Agreement' | 'False'               | 'Валюта соглашения, USD'    | ''                 | ''               | ''               |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Enum.CurrencyType.Reporting' | 'False'               | 'В валюте отчетности'       | ''                 | ''               | ''               |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7967' | 'Enum.CurrencyType.Budgeting' | 'True'                | 'В валюте бюджетирования'   | ''                 | ''               | ''               |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Enum.CurrencyType.Legal'     | 'False'               | 'В локальной валюте страны' | ''                 | ''               | ''               |

