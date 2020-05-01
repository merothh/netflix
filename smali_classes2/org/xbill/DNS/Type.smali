.class public final Lorg/xbill/DNS/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final A:I = 0x1

.field public static final A6:I = 0x26

.field public static final AAAA:I = 0x1c

.field public static final AFSDB:I = 0x12

.field public static final ANY:I = 0xff

.field public static final APL:I = 0x2a

.field public static final ATMA:I = 0x22

.field public static final AXFR:I = 0xfc

.field public static final CERT:I = 0x25

.field public static final CNAME:I = 0x5

.field public static final DHCID:I = 0x31

.field public static final DLV:I = 0x8001

.field public static final DNAME:I = 0x27

.field public static final DNSKEY:I = 0x30

.field public static final DS:I = 0x2b

.field public static final EID:I = 0x1f

.field public static final GPOS:I = 0x1b

.field public static final HINFO:I = 0xd

.field public static final IPSECKEY:I = 0x2d

.field public static final ISDN:I = 0x14

.field public static final IXFR:I = 0xfb

.field public static final KEY:I = 0x19

.field public static final KX:I = 0x24

.field public static final LOC:I = 0x1d

.field public static final MAILA:I = 0xfe

.field public static final MAILB:I = 0xfd

.field public static final MB:I = 0x7

.field public static final MD:I = 0x3

.field public static final MF:I = 0x4

.field public static final MG:I = 0x8

.field public static final MINFO:I = 0xe

.field public static final MR:I = 0x9

.field public static final MX:I = 0xf

.field public static final NAPTR:I = 0x23

.field public static final NIMLOC:I = 0x20

.field public static final NS:I = 0x2

.field public static final NSAP:I = 0x16

.field public static final NSAP_PTR:I = 0x17

.field public static final NSEC:I = 0x2f

.field public static final NSEC3:I = 0x32

.field public static final NSEC3PARAM:I = 0x33

.field public static final NULL:I = 0xa

.field public static final NXT:I = 0x1e

.field public static final OPT:I = 0x29

.field public static final PTR:I = 0xc

.field public static final PX:I = 0x1a

.field public static final RP:I = 0x11

.field public static final RRSIG:I = 0x2e

.field public static final RT:I = 0x15

.field public static final SIG:I = 0x18

.field public static final SOA:I = 0x6

.field public static final SPF:I = 0x63

.field public static final SRV:I = 0x21

.field public static final SSHFP:I = 0x2c

.field public static final TKEY:I = 0xf9

.field public static final TLSA:I = 0x34

.field public static final TSIG:I = 0xfa

.field public static final TXT:I = 0x10

.field public static final URI:I = 0x100

.field public static final WKS:I = 0xb

.field public static final X25:I = 0x13

.field private static types:Lorg/xbill/DNS/Type$TypeMnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-direct {v0}, Lorg/xbill/DNS/Type$TypeMnemonic;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x1

    const-string/jumbo v2, "A"

    new-instance v3, Lorg/xbill/DNS/ARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/ARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x2

    const-string/jumbo v2, "NS"

    new-instance v3, Lorg/xbill/DNS/NSRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x3

    const-string/jumbo v2, "MD"

    new-instance v3, Lorg/xbill/DNS/MDRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MDRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x4

    const-string/jumbo v2, "MF"

    new-instance v3, Lorg/xbill/DNS/MFRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MFRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x5

    const-string/jumbo v2, "CNAME"

    new-instance v3, Lorg/xbill/DNS/CNAMERecord;

    invoke-direct {v3}, Lorg/xbill/DNS/CNAMERecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x6

    const-string/jumbo v2, "SOA"

    new-instance v3, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SOARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x7

    const-string/jumbo v2, "MB"

    new-instance v3, Lorg/xbill/DNS/MBRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MBRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x8

    const-string/jumbo v2, "MG"

    new-instance v3, Lorg/xbill/DNS/MGRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x9

    const-string/jumbo v2, "MR"

    new-instance v3, Lorg/xbill/DNS/MRRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xa

    const-string/jumbo v2, "NULL"

    new-instance v3, Lorg/xbill/DNS/NULLRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NULLRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xb

    const-string/jumbo v2, "WKS"

    new-instance v3, Lorg/xbill/DNS/WKSRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/WKSRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xc

    const-string/jumbo v2, "PTR"

    new-instance v3, Lorg/xbill/DNS/PTRRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/PTRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xd

    const-string/jumbo v2, "HINFO"

    new-instance v3, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v3}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xe

    const-string/jumbo v2, "MINFO"

    new-instance v3, Lorg/xbill/DNS/MINFORecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MINFORecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xf

    const-string/jumbo v2, "MX"

    new-instance v3, Lorg/xbill/DNS/MXRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MXRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x10

    const-string/jumbo v2, "TXT"

    new-instance v3, Lorg/xbill/DNS/TXTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/TXTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x11

    const-string/jumbo v2, "RP"

    new-instance v3, Lorg/xbill/DNS/RPRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/RPRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x12

    const-string/jumbo v2, "AFSDB"

    new-instance v3, Lorg/xbill/DNS/AFSDBRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/AFSDBRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x13

    const-string/jumbo v2, "X25"

    new-instance v3, Lorg/xbill/DNS/X25Record;

    invoke-direct {v3}, Lorg/xbill/DNS/X25Record;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x14

    const-string/jumbo v2, "ISDN"

    new-instance v3, Lorg/xbill/DNS/ISDNRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/ISDNRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x15

    const-string/jumbo v2, "RT"

    new-instance v3, Lorg/xbill/DNS/RTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/RTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x16

    const-string/jumbo v2, "NSAP"

    new-instance v3, Lorg/xbill/DNS/NSAPRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSAPRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x17

    const-string/jumbo v2, "NSAP-PTR"

    new-instance v3, Lorg/xbill/DNS/NSAP_PTRRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSAP_PTRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x18

    const-string/jumbo v2, "SIG"

    new-instance v3, Lorg/xbill/DNS/SIGRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SIGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x19

    const-string/jumbo v2, "KEY"

    new-instance v3, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1a

    const-string/jumbo v2, "PX"

    new-instance v3, Lorg/xbill/DNS/PXRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/PXRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1b

    const-string/jumbo v2, "GPOS"

    new-instance v3, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1c

    const-string/jumbo v2, "AAAA"

    new-instance v3, Lorg/xbill/DNS/AAAARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/AAAARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1d

    const-string/jumbo v2, "LOC"

    new-instance v3, Lorg/xbill/DNS/LOCRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/LOCRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1e

    const-string/jumbo v2, "NXT"

    new-instance v3, Lorg/xbill/DNS/NXTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NXTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1f

    const-string/jumbo v2, "EID"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x20

    const-string/jumbo v2, "NIMLOC"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x21

    const-string/jumbo v2, "SRV"

    new-instance v3, Lorg/xbill/DNS/SRVRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SRVRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x22

    const-string/jumbo v2, "ATMA"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x23

    const-string/jumbo v2, "NAPTR"

    new-instance v3, Lorg/xbill/DNS/NAPTRRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NAPTRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x24

    const-string/jumbo v2, "KX"

    new-instance v3, Lorg/xbill/DNS/KXRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/KXRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x25

    const-string/jumbo v2, "CERT"

    new-instance v3, Lorg/xbill/DNS/CERTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/CERTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x26

    const-string/jumbo v2, "A6"

    new-instance v3, Lorg/xbill/DNS/A6Record;

    invoke-direct {v3}, Lorg/xbill/DNS/A6Record;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x27

    const-string/jumbo v2, "DNAME"

    new-instance v3, Lorg/xbill/DNS/DNAMERecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DNAMERecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x29

    const-string/jumbo v2, "OPT"

    new-instance v3, Lorg/xbill/DNS/OPTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/OPTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2a

    const-string/jumbo v2, "APL"

    new-instance v3, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/APLRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2b

    const-string/jumbo v2, "DS"

    new-instance v3, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DSRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2c

    const-string/jumbo v2, "SSHFP"

    new-instance v3, Lorg/xbill/DNS/SSHFPRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SSHFPRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2d

    const-string/jumbo v2, "IPSECKEY"

    new-instance v3, Lorg/xbill/DNS/IPSECKEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/IPSECKEYRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2e

    const-string/jumbo v2, "RRSIG"

    new-instance v3, Lorg/xbill/DNS/RRSIGRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/RRSIGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2f

    const-string/jumbo v2, "NSEC"

    new-instance v3, Lorg/xbill/DNS/NSECRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSECRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x30

    const-string/jumbo v2, "DNSKEY"

    new-instance v3, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x31

    const-string/jumbo v2, "DHCID"

    new-instance v3, Lorg/xbill/DNS/DHCIDRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DHCIDRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x32

    const-string/jumbo v2, "NSEC3"

    new-instance v3, Lorg/xbill/DNS/NSEC3Record;

    invoke-direct {v3}, Lorg/xbill/DNS/NSEC3Record;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x33

    const-string/jumbo v2, "NSEC3PARAM"

    new-instance v3, Lorg/xbill/DNS/NSEC3PARAMRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSEC3PARAMRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x34

    const-string/jumbo v2, "TLSA"

    new-instance v3, Lorg/xbill/DNS/TLSARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/TLSARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x63

    const-string/jumbo v2, "SPF"

    new-instance v3, Lorg/xbill/DNS/SPFRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SPFRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xf9

    const-string/jumbo v2, "TKEY"

    new-instance v3, Lorg/xbill/DNS/TKEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/TKEYRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfa

    const-string/jumbo v2, "TSIG"

    new-instance v3, Lorg/xbill/DNS/TSIGRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/TSIGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfb

    const-string/jumbo v2, "IXFR"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfc

    const-string/jumbo v2, "AXFR"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfd

    const-string/jumbo v2, "MAILB"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfe

    const-string/jumbo v2, "MAILA"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xff

    const-string/jumbo v2, "ANY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x100

    const-string/jumbo v2, "URI"

    new-instance v3, Lorg/xbill/DNS/URIRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/URIRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const v1, 0x8001

    const-string/jumbo v2, "DLV"

    new-instance v3, Lorg/xbill/DNS/DLVRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DLVRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(I)V
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTypeException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/InvalidTypeException;-><init>(I)V

    throw v0

    :cond_1
    return-void
.end method

.method static getProto(I)Lorg/xbill/DNS/Record;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getProto(I)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static isRR(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_0
        0xf9 -> :sswitch_0
        0xfa -> :sswitch_0
        0xfb -> :sswitch_0
        0xfc -> :sswitch_0
        0xfd -> :sswitch_0
        0xfe -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static value(Ljava/lang/String;Z)I
    .locals 3

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method
