.class public Lorg/xbill/DNS/WKSRecord$Protocol;
.super Ljava/lang/Object;
.source "WKSRecord.java"


# static fields
.field public static final ARGUS:I = 0xd

.field public static final BBN_RCC_MON:I = 0xa

.field public static final BR_SAT_MON:I = 0x4c

.field public static final CFTP:I = 0x3e

.field public static final CHAOS:I = 0x10

.field public static final DCN_MEAS:I = 0x13

.field public static final EGP:I = 0x8

.field public static final EMCON:I = 0xe

.field public static final GGP:I = 0x3

.field public static final HMP:I = 0x14

.field public static final ICMP:I = 0x1

.field public static final IGMP:I = 0x2

.field public static final IGP:I = 0x9

.field public static final IPCV:I = 0x47

.field public static final IPPC:I = 0x43

.field public static final IRTP:I = 0x1c

.field public static final ISO_TP4:I = 0x1d

.field public static final LEAF_1:I = 0x19

.field public static final LEAF_2:I = 0x1a

.field public static final MERIT_INP:I = 0x20

.field public static final MFE_NSP:I = 0x1f

.field public static final MIT_SUBNET:I = 0x41

.field public static final MUX:I = 0x12

.field public static final NETBLT:I = 0x1e

.field public static final NVP_II:I = 0xb

.field public static final PRM:I = 0x15

.field public static final PUP:I = 0xc

.field public static final RDP:I = 0x1b

.field public static final RVD:I = 0x42

.field public static final SAT_EXPAK:I = 0x40

.field public static final SAT_MON:I = 0x45

.field public static final SEP:I = 0x21

.field public static final ST:I = 0x5

.field public static final TCP:I = 0x6

.field public static final TRUNK_1:I = 0x17

.field public static final TRUNK_2:I = 0x18

.field public static final UCL:I = 0x7

.field public static final UDP:I = 0x11

.field public static final WB_EXPAK:I = 0x4f

.field public static final WB_MON:I = 0x4e

.field public static final XNET:I = 0xf

.field public static final XNS_IDP:I = 0x16

.field private static protocols:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 152
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "IP protocol"

    invoke-direct {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 156
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 157
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 159
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "icmp"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 160
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x2

    const-string/jumbo v2, "igmp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 161
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const-string/jumbo v1, "ggp"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 162
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x5

    const-string/jumbo v2, "st"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 163
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x6

    const-string/jumbo v2, "tcp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 164
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x7

    const-string/jumbo v2, "ucl"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 165
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8

    const-string/jumbo v2, "egp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 166
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x9

    const-string/jumbo v2, "igp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 167
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xa

    const-string/jumbo v2, "bbn-rcc-mon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 168
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xb

    const-string/jumbo v2, "nvp-ii"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 169
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xc

    const-string/jumbo v2, "pup"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 170
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xd

    const-string/jumbo v2, "argus"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 171
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xe

    const-string/jumbo v2, "emcon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 172
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xf

    const-string/jumbo v2, "xnet"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 173
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x10

    const-string/jumbo v2, "chaos"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 174
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x11

    const-string/jumbo v2, "udp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 175
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x12

    const-string/jumbo v2, "mux"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 176
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x13

    const-string/jumbo v2, "dcn-meas"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 177
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x14

    const-string/jumbo v2, "hmp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 178
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x15

    const-string/jumbo v2, "prm"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 179
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x16

    const-string/jumbo v2, "xns-idp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 180
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x17

    const-string/jumbo v2, "trunk-1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 181
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x18

    const-string/jumbo v2, "trunk-2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 182
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x19

    const-string/jumbo v2, "leaf-1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 183
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1a

    const-string/jumbo v2, "leaf-2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 184
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1b

    const-string/jumbo v2, "rdp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 185
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1c

    const-string/jumbo v2, "irtp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 186
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1d

    const-string/jumbo v2, "iso-tp4"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 187
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1e

    const-string/jumbo v2, "netblt"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 188
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x1f

    const-string/jumbo v2, "mfe-nsp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 189
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x20

    const-string/jumbo v2, "merit-inp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 190
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x21

    const-string/jumbo v2, "sep"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 191
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x3e

    const-string/jumbo v2, "cftp"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 192
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x40

    const-string/jumbo v2, "sat-expak"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 193
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x41

    const-string/jumbo v2, "mit-subnet"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 194
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x42

    const-string/jumbo v2, "rvd"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 195
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x43

    const-string/jumbo v2, "ippc"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 196
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x45

    const-string/jumbo v2, "sat-mon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 197
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x47

    const-string/jumbo v2, "ipcv"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 198
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x4c

    const-string/jumbo v2, "br-sat-mon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 199
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x4e

    const-string/jumbo v2, "wb-mon"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 200
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x4f

    const-string/jumbo v2, "wb-expak"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 201
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
