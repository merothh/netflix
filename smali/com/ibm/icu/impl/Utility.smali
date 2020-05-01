.class public final Lcom/ibm/icu/impl/Utility;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final DIGITS:[C

.field static final HEX_DIGIT:[C

.field public static LINE_SEPARATOR:Ljava/lang/String;

.field private static final UNESCAPE_MAP:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    .line 648
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 703
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C

    new-array v0, v0, [C

    .line 773
    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    const/16 v0, 0x24

    new-array v0, v0, [C

    .line 1355
    fill-array-data v0, :array_2

    sput-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x7s
        0x62s
        0x8s
        0x65s
        0x1bs
        0x66s
        0xcs
        0x6es
        0xas
        0x72s
        0xds
        0x74s
        0x9s
        0x76s
        0xbs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 79
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 80
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 81
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 82
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result p0

    return p0

    .line 83
    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    .line 84
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([DLjava/lang/Object;)Z

    move-result p0

    return p0

    .line 85
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 86
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result p0

    return p0

    .line 87
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final arrayEquals([BLjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v2, p1, [B

    if-nez v2, :cond_2

    return v1

    .line 66
    :cond_2
    check-cast p1, [B

    check-cast p1, [B

    .line 67
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 68
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final arrayEquals([DLjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, [D

    if-nez v2, :cond_2

    return v1

    .line 59
    :cond_2
    check-cast p1, [D

    check-cast p1, [D

    .line 60
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 61
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([DI[DII)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final arrayEquals([ILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v2, p1, [I

    if-nez v2, :cond_2

    return v1

    .line 47
    :cond_2
    check-cast p1, [I

    check-cast p1, [I

    .line 48
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 49
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([II[III)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 34
    :cond_1
    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v2, :cond_2

    return v1

    .line 35
    :cond_2
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 36
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 37
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final arrayRegionMatches([BI[BII)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 170
    aget-byte v0, p0, p1

    add-int v1, p1, p3

    aget-byte v1, p2, v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayRegionMatches([DI[DII)Z
    .locals 5

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 160
    aget-wide v0, p0, p1

    add-int v2, p1, p3

    aget-wide v2, p2, v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayRegionMatches([II[III)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 141
    aget v0, p0, p1

    add-int v1, p1, p3

    aget v1, p2, v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 103
    aget-object v0, p0, p1

    add-int v1, p1, p3

    aget-object v1, p2, v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 754
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 755
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 756
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const-string v3, "\\\\"

    .line 759
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    int-to-char v3, v3

    .line 761
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v4, 0xffff

    if-gt v3, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    const-string v5, "\\u"

    goto :goto_2

    :cond_3
    const-string v5, "\\U"

    .line 765
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v3

    if-eqz v4, :cond_4

    const/4 v3, 0x4

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    .line 766
    :goto_3
    invoke-static {v5, v6, v3}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 769
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeUnprintable(Ljava/lang/Appendable;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)Z"
        }
    .end annotation

    .line 1487
    :try_start_0
    invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5c

    .line 1488
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    .line 1490
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1491
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x1c

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1492
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x18

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1493
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1494
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const/16 v0, 0x75

    .line 1496
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1498
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1499
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1500
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1501
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 1506
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static hex(JI)Ljava/lang/String;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "-8000000000000000"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    neg-long p0, p0

    :cond_2
    const/16 v1, 0x10

    .line 983
    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 984
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, p2, :cond_3

    .line 985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0000000000000000"

    invoke-virtual {v2, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static isUnprintable(I)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unescapeAt(Ljava/lang/String;[I)I
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 808
    aget v2, p1, v1

    .line 809
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    if-ltz v2, :cond_15

    if-lt v2, v3, :cond_0

    goto/16 :goto_b

    .line 815
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 816
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v2, v6

    const/16 v6, 0x55

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eq v5, v6, :cond_5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_4

    const/16 v6, 0x78

    if-eq v5, v6, :cond_2

    .line 837
    invoke-static {v5, v9}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v6

    if-ltz v6, :cond_1

    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x3

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x4

    :goto_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    if-ge v2, v3, :cond_3

    .line 828
    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v6

    const/16 v11, 0x7b

    if-ne v6, v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x4

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    goto :goto_0

    :goto_2
    if-eqz v7, :cond_10

    :goto_3
    if-ge v2, v3, :cond_8

    if-ge v11, v12, :cond_8

    .line 849
    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    if-ne v13, v8, :cond_6

    const/16 v15, 0x8

    goto :goto_4

    :cond_6
    const/16 v15, 0x10

    .line 850
    :goto_4
    invoke-static {v5, v15}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v15

    if-gez v15, :cond_7

    goto :goto_5

    :cond_7
    shl-int/2addr v6, v13

    or-int/2addr v6, v15

    .line 855
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v15

    add-int/2addr v2, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    if-ge v11, v7, :cond_9

    return v4

    :cond_9
    if-eqz v14, :cond_b

    const/16 v7, 0x7d

    if-eq v5, v7, :cond_a

    return v4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    if-ltz v6, :cond_f

    const/high16 v5, 0x110000

    if-lt v6, v5, :cond_c

    goto :goto_8

    :cond_c
    if-ge v2, v3, :cond_e

    int-to-char v4, v6

    .line 875
    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v5, v2, 0x1

    .line 877
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_d

    if-ge v5, v3, :cond_d

    new-array v3, v10, [I

    aput v5, v3, v1

    .line 880
    invoke-static {v0, v3}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v7

    .line 881
    aget v0, v3, v1

    goto :goto_6

    :cond_d
    move v0, v5

    :goto_6
    int-to-char v3, v7

    .line 883
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 885
    invoke-static {v4, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    goto :goto_7

    :cond_e
    move v0, v2

    .line 888
    :goto_7
    aput v0, p1, v1

    return v6

    :cond_f
    :goto_8
    return v4

    :cond_10
    const/4 v4, 0x0

    .line 893
    :goto_9
    sget-object v6, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    array-length v7, v6

    if-ge v4, v7, :cond_13

    .line 894
    aget-char v7, v6, v4

    if-ne v5, v7, :cond_11

    .line 895
    aput v2, p1, v1

    add-int/2addr v4, v10

    .line 896
    aget-char v0, v6, v4

    return v0

    .line 897
    :cond_11
    aget-char v6, v6, v4

    if-ge v5, v6, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v4, v4, 0x2

    goto :goto_9

    :cond_13
    :goto_a
    const/16 v4, 0x63

    if-ne v5, v4, :cond_14

    if-ge v2, v3, :cond_14

    .line 904
    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 905
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    and-int/lit8 v0, v0, 0x1f

    return v0

    .line 911
    :cond_14
    aput v2, p1, v1

    return v5

    :cond_15
    :goto_b
    return v4
.end method
