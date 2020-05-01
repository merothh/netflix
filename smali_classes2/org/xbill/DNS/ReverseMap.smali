.class public final Lorg/xbill/DNS/ReverseMap;
.super Ljava/lang/Object;
.source "ReverseMap.java"


# static fields
.field private static inaddr4:Lorg/xbill/DNS/Name;

.field private static inaddr6:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "in-addr.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ReverseMap;->inaddr4:Lorg/xbill/DNS/Name;

    const-string/jumbo v0, "ip6.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ReverseMap;->inaddr6:Lorg/xbill/DNS/Name;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAddress(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "Invalid IP address"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress(Ljava/lang/String;I)Lorg/xbill/DNS/Name;
    .locals 2

    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "Invalid IP address"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress([B)Lorg/xbill/DNS/Name;
    .locals 6

    const/4 v5, 0x4

    array-length v0, p0

    if-eq v0, v5, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "array must contain 4 or 16 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    array-length v0, p0

    if-ne v0, v5, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-lez v0, :cond_1

    const-string/jumbo v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v3, v0, [I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_6

    const/4 v0, 0x0

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    aput v4, v3, v0

    const/4 v0, 0x1

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gtz v1, :cond_3

    if-lez v0, :cond_4

    :cond_3
    const-string/jumbo v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_6
    :try_start_0
    array-length v0, p0

    if-ne v0, v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/ReverseMap;->inaddr4:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/ReverseMap;->inaddr6:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "name cannot be invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromAddress([I)Lorg/xbill/DNS/Name;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget v2, p0, v0

    if-ltz v2, :cond_0

    aget v2, p0, v0

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "array must contain values between 0 and 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method
