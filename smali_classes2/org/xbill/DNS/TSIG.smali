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

    const-string/jumbo v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    const-string/jumbo v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    const-string/jumbo v0, "hmac-sha224."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    const-string/jumbo v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    const-string/jumbo v0, "hmac-sha384."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    const-string/jumbo v0, "hmac-sha512."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    return-void

    :cond_0
    const-string/jumbo v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "hmac-sha224"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "hmac-sha256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "hmac-sha384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "hmac-sha512"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG key string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG key name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    iput-object p3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .locals 1

    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/TSIG;)I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    return v0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/TSIG;)[B
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;
    .locals 8

    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string/jumbo v0, "[:/]"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG key specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_1

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

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "[:/]"

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

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

    const/16 v3, 0x80

    const/16 v2, 0x40

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "md5"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sha-1"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sha-224"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "sha-256"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "sha-512"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iput v3, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "sha-384"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iput v3, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 2

    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    iput v1, p1, Lorg/xbill/DNS/Message;->tsigState:I

    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V

    return-void
.end method

.method public applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 13

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    :goto_0
    return-void

    :cond_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    const-string/jumbo v1, "tsigfudge"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1

    const/16 v1, 0x7fff

    if-le v8, v1, :cond_2

    :cond_1
    const/16 v8, 0x12c

    :cond_2
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    invoke-virtual {p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    invoke-virtual {p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    const-wide v10, 0xffffffffL

    and-long/2addr v2, v10

    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    invoke-virtual {v0}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v9

    const/4 v12, 0x0

    new-instance v1, Lorg/xbill/DNS/TSIGRecord;

    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v12}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    const/4 v0, 0x3

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    goto/16 :goto_0
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 15

    const/16 v2, 0x12

    move/from16 v0, p3

    if-eq v0, v2, :cond_8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    :goto_0
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/16 v3, 0x12

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    :cond_0
    new-instance v2, Lorg/xbill/DNS/utils/HMAC;

    iget-object v3, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget v4, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    iget-object v5, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v2, v3, v4, v5}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    :cond_1
    const-string/jumbo v3, "tsigfudge"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_2

    const/16 v3, 0x7fff

    if-le v10, v3, :cond_3

    :cond_2
    const/16 v10, 0x12c

    :cond_3
    if-eqz p4, :cond_4

    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    :cond_5
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    const-wide v12, 0xffffffffL

    and-long/2addr v4, v12

    invoke-virtual {v3, v6}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v3, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    invoke-virtual {v3, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    :cond_6
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v11

    :goto_1
    const/4 v14, 0x0

    const/16 v2, 0x12

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v2, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v14

    :cond_7
    new-instance v3, Lorg/xbill/DNS/TSIGRecord;

    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v12

    move/from16 v13, p3

    invoke-direct/range {v3 .. v14}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    return-object v3

    :cond_8
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v9

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    new-array v11, v2, [B

    goto :goto_1
.end method

.method public recordLength()I
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

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

    const/4 v0, 0x4

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/utils/HMAC;

    iget-object v2, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget v3, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    iget-object v4, p0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

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

    :cond_1
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADKEY failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x11

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADTIME failure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x12

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    invoke-virtual {p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    invoke-virtual {p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    :cond_6
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Header;->incCount(I)V

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    iget v3, p1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v4, v2

    sub-int/2addr v3, v4

    array-length v2, v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    iget v3, v0, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget-wide v4, v0, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    invoke-virtual {v2, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v2, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    :goto_1
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/xbill/DNS/utils/HMAC;->digestLength()I

    move-result v3

    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    const-string/jumbo v4, "md5"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    :goto_2
    array-length v4, v2

    if-le v4, v3, :cond_a

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADSIG: signature too long"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_1

    :cond_9
    div-int/lit8 v0, v3, 0x2

    goto :goto_2

    :cond_a
    array-length v3, v2

    if-ge v3, v0, :cond_c

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADSIG: signature too short"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/xbill/DNS/utils/HMAC;->verify([BZ)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "BADSIG: signature verification"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    iput v0, p1, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1

    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method
