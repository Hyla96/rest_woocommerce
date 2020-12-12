import 'package:json_annotation/json_annotation.dart';

enum WooCommerceOrderStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('processing')
  processing,
  @JsonValue('on_hold')
  on_hold,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('refunded')
  refunded,
  @JsonValue('failed')
  failed,
  @JsonValue('trash')
  trash
}

enum WooCommerceOrderCurrency {
  @JsonValue('AED')
  AED,
  @JsonValue('AFN')
  AFN,
  @JsonValue('ALL')
  ALL,
  @JsonValue('AMD')
  AMD,
  @JsonValue('ANG')
  ANG,
  @JsonValue('AOA')
  AOA,
  @JsonValue('ARS')
  ARS,
  @JsonValue('AUD')
  AUD,
  @JsonValue('AWG')
  AWG,
  @JsonValue('AZN')
  AZN,
  @JsonValue('BAM')
  BAM,
  @JsonValue('BBD')
  BBD,
  @JsonValue('BDT')
  BDT,
  @JsonValue('BGN')
  BGN,
  @JsonValue('BHD')
  BHD,
  @JsonValue('BIF')
  BIF,
  @JsonValue('BMD')
  BMD,
  @JsonValue('BND')
  BND,
  @JsonValue('BOB')
  BOB,
  @JsonValue('BRL')
  BRL,
  @JsonValue('BSD')
  BSD,
  @JsonValue('BTC')
  BTC,
  @JsonValue('BTN')
  BTN,
  @JsonValue('BWP')
  BWP,
  @JsonValue('BYR')
  BYR,
  @JsonValue('BZD')
  BZD,
  @JsonValue('CAD')
  CAD,
  @JsonValue('CDF')
  CDF,
  @JsonValue('CHF')
  CHF,
  @JsonValue('CLP')
  CLP,
  @JsonValue('CNY')
  CNY,
  @JsonValue('COP')
  COP,
  @JsonValue('CRC')
  CRC,
  @JsonValue('CUC')
  CUC,
  @JsonValue('CUP')
  CUP,
  @JsonValue('CVE')
  CVE,
  @JsonValue('CZK')
  CZK,
  @JsonValue('DJF')
  DJF,
  @JsonValue('DKK')
  DKK,
  @JsonValue('DOP')
  DOP,
  @JsonValue('DZD')
  DZD,
  @JsonValue('EGP')
  EGP,
  @JsonValue('ERN')
  ERN,
  @JsonValue('ETB')
  ETB,
  @JsonValue('EUR')
  EUR,
  @JsonValue('FJD')
  FJD,
  @JsonValue('FKP')
  FKP,
  @JsonValue('GBP')
  GBP,
  @JsonValue('GEL')
  GEL,
  @JsonValue('GGP')
  GGP,
  @JsonValue('GHS')
  GHS,
  @JsonValue('GIP')
  GIP,
  @JsonValue('GMD')
  GMD,
  @JsonValue('GNF')
  GNF,
  @JsonValue('GTQ')
  GTQ,
  @JsonValue('GYD')
  GYD,
  @JsonValue('HKD')
  HKD,
  @JsonValue('HNL')
  HNL,
  @JsonValue('HRK')
  HRK,
  @JsonValue('HTG')
  HTG,
  @JsonValue('HUF')
  HUF,
  @JsonValue('IDR')
  IDR,
  @JsonValue('ILS')
  ILS,
  @JsonValue('IMP')
  IMP,
  @JsonValue('INR')
  INR,
  @JsonValue('IQD')
  IQD,
  @JsonValue('IRR')
  IRR,
  @JsonValue('IRT')
  IRT,
  @JsonValue('ISK')
  ISK,
  @JsonValue('JEP')
  JEP,
  @JsonValue('JMD')
  JMD,
  @JsonValue('JOD')
  JOD,
  @JsonValue('JPY')
  JPY,
  @JsonValue('KES')
  KES,
  @JsonValue('KGS')
  KGS,
  @JsonValue('KHR')
  KHR,
  @JsonValue('KMF')
  KMF,
  @JsonValue('KPW')
  KPW,
  @JsonValue('KRW')
  KRW,
  @JsonValue('KWD')
  KWD,
  @JsonValue('KYD')
  KYD,
  @JsonValue('KZT')
  KZT,
  @JsonValue('LAK')
  LAK,
  @JsonValue('LBP')
  LBP,
  @JsonValue('LKR')
  LKR,
  @JsonValue('LRD')
  LRD,
  @JsonValue('LSL')
  LSL,
  @JsonValue('LYD')
  LYD,
  @JsonValue('MAD')
  MAD,
  @JsonValue('MDL')
  MDL,
  @JsonValue('MGA')
  MGA,
  @JsonValue('MKD')
  MKD,
  @JsonValue('MMK')
  MMK,
  @JsonValue('MNT')
  MNT,
  @JsonValue('MOP')
  MOP,
  @JsonValue('MRO')
  MRO,
  @JsonValue('MUR')
  MUR,
  @JsonValue('MVR')
  MVR,
  @JsonValue('MWK')
  MWK,
  @JsonValue('MXN')
  MXN,
  @JsonValue('MYR')
  MYR,
  @JsonValue('MZN')
  MZN,
  @JsonValue('NAD')
  NAD,
  @JsonValue('NGN')
  NGN,
  @JsonValue('NIO')
  NIO,
  @JsonValue('NOK')
  NOK,
  @JsonValue('NPR')
  NPR,
  @JsonValue('NZD')
  NZD,
  @JsonValue('OMR')
  OMR,
  @JsonValue('PAB')
  PAB,
  @JsonValue('PEN')
  PEN,
  @JsonValue('PGK')
  PGK,
  @JsonValue('PHP')
  PHP,
  @JsonValue('PKR')
  PKR,
  @JsonValue('PLN')
  PLN,
  @JsonValue('PRB')
  PRB,
  @JsonValue('PYG')
  PYG,
  @JsonValue('QAR')
  QAR,
  @JsonValue('RON')
  RON,
  @JsonValue('RSD')
  RSD,
  @JsonValue('RUB')
  RUB,
  @JsonValue('RWF')
  RWF,
  @JsonValue('SAR')
  SAR,
  @JsonValue('SBD')
  SBD,
  @JsonValue('SCR')
  SCR,
  @JsonValue('SDG')
  SDG,
  @JsonValue('SEK')
  SEK,
  @JsonValue('SGD')
  SGD,
  @JsonValue('SHP')
  SHP,
  @JsonValue('SLL')
  SLL,
  @JsonValue('SOS')
  SOS,
  @JsonValue('SRD')
  SRD,
  @JsonValue('SSP')
  SSP,
  @JsonValue('STD')
  STD,
  @JsonValue('SYP')
  SYP,
  @JsonValue('SZL')
  SZL,
  @JsonValue('THB')
  THB,
  @JsonValue('TJS')
  TJS,
  @JsonValue('TMT')
  TMT,
  @JsonValue('TND')
  TND,
  @JsonValue('TOP')
  TOP,
  @JsonValue('TRY')
  TRY,
  @JsonValue('TTD')
  TTD,
  @JsonValue('TWD')
  TWD,
  @JsonValue('TZS')
  TZS,
  @JsonValue('UAH')
  UAH,
  @JsonValue('UGX')
  UGX,
  @JsonValue('USD')
  USD,
  @JsonValue('UYU')
  UYU,
  @JsonValue('UZS')
  UZS,
  @JsonValue('VEF')
  VEF,
  @JsonValue('VND')
  VND,
  @JsonValue('VUV')
  VUV,
  @JsonValue('WST')
  WST,
  @JsonValue('XAF')
  XAF,
  @JsonValue('XCD')
  XCD,
  @JsonValue('XOF')
  XOF,
  @JsonValue('XPF')
  XPF,
  @JsonValue('YER')
  YER,
  @JsonValue('ZAR')
  ZAR,
  @JsonValue('ZMW')
  ZMW,
}
