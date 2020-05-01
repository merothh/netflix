.class public final Lorg/xbill/DNS/TTL;
.super Ljava/lang/Object;
.source "TTL.java"


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(J)V
    .locals 2

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTTLException;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/InvalidTTLException;-><init>(J)V

    throw v0

    .line 24
    :cond_1
    return-void
.end method

.method public static format(J)Ljava/lang/String;
    .locals 14

    .prologue
    .line 88
    invoke-static {p0, p1}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    const-wide/16 v2, 0x3c

    rem-long v2, p0, v2

    .line 92
    const-wide/16 v4, 0x3c

    div-long v4, p0, v4

    .line 93
    const-wide/16 v6, 0x3c

    rem-long v6, v4, v6

    .line 94
    const-wide/16 v8, 0x3c

    div-long/2addr v4, v8

    .line 95
    const-wide/16 v8, 0x18

    rem-long v8, v4, v8

    .line 96
    const-wide/16 v10, 0x18

    div-long/2addr v4, v10

    .line 97
    const-wide/16 v10, 0x7

    rem-long v10, v4, v10

    .line 98
    const-wide/16 v12, 0x7

    div-long/2addr v4, v12

    .line 100
    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-lez v1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "W"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "D"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v1, v8, v12

    if-lez v1, :cond_2

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "H"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v1, v6, v12

    if-lez v1, :cond_3

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "M"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-gtz v1, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-nez v1, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v1, v10, v4

    if-nez v1, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-nez v1, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-nez v1, :cond_5

    .line 109
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)J
    .locals 10

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 40
    :cond_1
    const-wide/16 v4, 0x0

    .line 41
    const-wide/16 v2, 0x0

    .line 42
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    .line 47
    cmp-long v1, v6, v4

    if-gez v1, :cond_3

    .line 48
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 50
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 51
    :sswitch_0
    const-wide/16 v6, 0x7

    mul-long/2addr v4, v6

    .line 52
    :sswitch_1
    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    .line 53
    :sswitch_2
    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    .line 54
    :sswitch_3
    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    .line 58
    :sswitch_4
    add-long/2addr v2, v4

    .line 59
    const-wide/16 v4, 0x0

    .line 60
    const-wide v6, 0xffffffffL

    cmp-long v1, v2, v6

    if-lez v1, :cond_4

    .line 61
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_3
    move-wide v4, v6

    .line 42
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    move-wide v0, v4

    .line 67
    :goto_1
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 68
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 69
    :cond_6
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    if-eqz p1, :cond_7

    .line 70
    const-wide/32 v0, 0x7fffffff

    .line 71
    :cond_7
    return-wide v0

    :cond_8
    move-wide v0, v2

    goto :goto_1

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x48 -> :sswitch_2
        0x4d -> :sswitch_3
        0x53 -> :sswitch_4
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseTTL(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method
