.class public Lorg/xbill/DNS/TSIG;
.super Ljava/lang/Object;
.source "TSIG.java"


# static fields
.field public static final FUDGE:S = 0x12cs

.field public static final HMAC:Lorg/xbill/DNS/Name;

.field public static final HMAC_MD5:Lorg/xbill/DNS/Name;

.field private static final HMAC_MD5_STR:Ljava/lang/String; = "HMAC-MD5.SIG-ALG.REG.INT."

.field public static final HMAC_SHA1:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA1_STR:Ljava/lang/String; = "hmac-sha1."

.field public static final HMAC_SHA224:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA224_STR:Ljava/lang/String; = "hmac-sha224."

.field public static final HMAC_SHA256:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA256_STR:Ljava/lang/String; = "hmac-sha256."

.field public static final HMAC_SHA384:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA384_STR:Ljava/lang/String; = "hmac-sha384."

.field public static final HMAC_SHA512:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA512_STR:Ljava/lang/String; = "hmac-sha512."


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private digest:Ljava/lang/String;

.field private digestBlockLength:I

.field private key:[B

.field private name:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 29
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    .line 32
    const-string/jumbo v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    .line 39
    const-string/jumbo v0, "hmac-sha224."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    .line 42
    const-string/jumbo v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    .line 45
    const-string/jumbo v0, "hmac-sha384."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    .line 48
    const-string/jumbo v0, "hmac-sha512."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 159
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 160
    return-void

    .line 147
    :cond_0
    const-string/jumbo v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 149
    :cond_1
    const-string/jumbo v0, "hmac-sha224"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 151
    :cond_2
    const-string/jumbo v0, "hmac-sha256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 153
    :cond_3
    const-string/jumbo v0, "hmac-sha384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 155
    :cond_4
    const-string/jumbo v0, "hmac-sha512"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 158
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 120
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG key string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 129
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 130
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG key name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 94
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 95
    iput-object p3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 96
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/TSIG;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    return v0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/TSIG;)[B
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;
    .locals 8

    .prologue
    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 187
    const-string/jumbo v0, "[:/]"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 188
    array-length v1, v0

    if-ge v1, v5, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG key specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_1

    .line 193
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/TSIG;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 198
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string/jumbo v0, "[:/]"

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_1
    new-instance v1, Lorg/xbill/DNS/TSIG;

    sget-object v2, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    aget-object v3, v0, v6

    aget-object v0, v0, v7

    invoke-direct {v1, v2, v3, v0}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private getDigest()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/16 v2, 0x40

    .line 63
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "md5"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 65
    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    .line 83
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v0, "sha-1"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 68
    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const-string/jumbo v0, "sha-224"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 71
    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const-string/jumbo v0, "sha-256"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 74
    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    const-string/jumbo v0, "sha-512"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 77
    iput v3, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    const-string/jumbo v0, "sha-384"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 80
    iput v3, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 287
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 288
    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 289
    iput v1, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 290
    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V

    .line 300
    return-void
.end method

.method public applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 13

    .prologue
    .line 309
    if-eqz p3, :cond_0

    .line 310
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 347
    :goto_0
    return-void

    .line 313
    :cond_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 315
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 317
    const-string/jumbo v1, "tsigfudge"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v8

    .line 318
    if-ltz v8, :cond_1

    const/16 v1, 0x7fff

    if-le v8, v1, :cond_2

    .line 319
    :cond_1
    const/16 v8, 0x12c

    .line 321
    :cond_2
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 322
    invoke-virtual {p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 323
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 324
    invoke-virtual {p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 327
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 329
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 330
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 331
    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    .line 332
    const-wide v10, 0xffffffffL

    and-long/2addr v2, v10

    .line 333
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 334
    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 335
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 337
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 339
    invoke-virtual {v0}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v9

    .line 340
    const/4 v12, 0x0

    .line 342
    new-instance v1, Lorg/xbill/DNS/TSIGRecord;

    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 343
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v12}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    .line 345
    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 346
    const/4 v0, 0x3

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    goto/16 :goto_0
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 15

    .prologue
    .line 213
    const/16 v2, 0x12

    move/from16 v0, p3

    if-eq v0, v2, :cond_8

    .line 214
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 218
    :goto_0
    const/4 v2, 0x0

    .line 219
    if-eqz p3, :cond_0

    const/16 v3, 0x12

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 220
    :cond_0
    new-instance v2, Lorg/xbill/DNS/utils/HMAC;

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget v4, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    iget-object v5, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v2, v3, v4, v5}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 222
    :cond_1
    const-string/jumbo v3, "tsigfudge"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v10

    .line 223
    if-ltz v10, :cond_2

    const/16 v3, 0x7fff

    if-le v10, v3, :cond_3

    .line 224
    :cond_2
    const/16 v10, 0x12c

    .line 226
    :cond_3
    if-eqz p4, :cond_4

    .line 227
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 228
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 229
    if-eqz v2, :cond_4

    .line 230
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 231
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 236
    :cond_4
    if-eqz v2, :cond_5

    .line 237
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 239
    :cond_5
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 240
    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 241
    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 242
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 243
    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 244
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 245
    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    .line 246
    const-wide v12, 0xffffffffL

    and-long/2addr v4, v12

    .line 247
    invoke-virtual {v3, v6}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 248
    invoke-virtual {v3, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 249
    invoke-virtual {v3, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 251
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 252
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 254
    if-eqz v2, :cond_6

    .line 255
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 258
    :cond_6
    if-eqz v2, :cond_9

    .line 259
    invoke-virtual {v2}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v11

    .line 263
    :goto_1
    const/4 v14, 0x0

    .line 264
    const/16 v2, 0x12

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 265
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 266
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 267
    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    .line 268
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 269
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 270
    invoke-virtual {v2, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 271
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v14

    .line 274
    :cond_7
    new-instance v3, Lorg/xbill/DNS/TSIGRecord;

    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 275
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v12

    move/from16 v13, p3

    invoke-direct/range {v3 .. v14}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    return-object v3

    .line 216
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v9

    goto/16 :goto_0

    .line 261
    :cond_9
    const/4 v2, 0x0

    new-array v11, v2, [B

    goto :goto_1
.end method

.method public recordLength()I
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 469
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B
    .locals 8

    .prologue
    .line 365
    const/4 v0, 0x4

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 366
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 367
    new-instance v1, Lorg/xbill/DNS/utils/HMAC;

    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget v3, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 368
    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    .line 371
    :cond_0
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 372
    :cond_1
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADKEY failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :cond_2
    const/16 v0, 0x11

    goto :goto_0

    .line 376
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 377
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 378
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v6

    int-to-long v6, v6

    .line 379
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 380
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADTIME failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    :cond_4
    const/16 v0, 0x12

    goto :goto_0

    .line 385
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    .line 386
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    .line 388
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 389
    invoke-virtual {p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 390
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 391
    invoke-virtual {p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 393
    :cond_6
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 394
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v2

    .line 395
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 396
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 398
    iget v3, p1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v4, v2

    sub-int/2addr v3, v4

    .line 399
    array-length v2, v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 401
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 402
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 403
    iget v3, v0, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 404
    iget-wide v4, v0, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    invoke-virtual {v2, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 405
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 406
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 407
    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    .line 408
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 409
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 410
    invoke-virtual {v2, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 411
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 412
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 413
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    if-eqz v3, :cond_8

    .line 414
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 415
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 420
    :goto_1
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 422
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    .line 423
    invoke-virtual {v1}, Lorg/xbill/DNS/utils/HMAC;->digestLength()I

    move-result v3

    .line 424
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    const-string/jumbo v4, "md5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 426
    :goto_2
    array-length v4, v2

    if-le v4, v3, :cond_a

    .line 427
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADSIG: signature too long"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_7
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 417
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_1

    .line 424
    :cond_9
    div-int/lit8 v0, v3, 0x2

    goto :goto_2

    .line 430
    :cond_a
    array-length v3, v2

    if-ge v3, v0, :cond_c

    .line 431
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 432
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADSIG: signature too short"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    :cond_b
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 434
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/xbill/DNS/utils/HMAC;->verify([BZ)Z

    move-result v0

    if-nez v0, :cond_e

    .line 435
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 436
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADSIG: signature verification"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    :cond_d
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 440
    :cond_e
    const/4 v0, 0x1

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 441
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1

    .prologue
    .line 459
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method
