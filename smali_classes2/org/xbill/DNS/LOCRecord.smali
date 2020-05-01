.class public Lorg/xbill/DNS/LOCRecord;
.super Lorg/xbill/DNS/Record;
.source "LOCRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x7db54773c7eed6c9L

.field private static w2:Ljava/text/NumberFormat;

.field private static w3:Ljava/text/NumberFormat;


# instance fields
.field private altitude:J

.field private hPrecision:J

.field private latitude:J

.field private longitude:J

.field private size:J

.field private vPrecision:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    .line 25
    sget-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    .line 28
    sget-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJDDDDDD)V
    .locals 7

    .prologue
    .line 51
    const/16 v2, 0x1d

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 52
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, p5

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 53
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, p7

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 54
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    add-double v0, v0, p9

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 55
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p11

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 56
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p13

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 57
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p15

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 58
    return-void
.end method

.method private parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    if-eqz p3, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid LOC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 153
    :cond_1
    return-wide p8

    .line 146
    :cond_2
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_3

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_3
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-long p8, v0

    .line 151
    cmp-long v0, p8, p4

    if-ltz v0, :cond_4

    cmp-long v0, p8, p6

    if-lez v0, :cond_1

    .line 152
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid LOC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid LOC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private parseFixedPoint(Ljava/lang/String;)D
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 79
    const-string/jumbo v0, "^-?\\d+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    .line 88
    :goto_0
    return-wide v0

    .line 81
    :cond_0
    const-string/jumbo v0, "^-?\\d+\\.\\d*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const-string/jumbo v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    .line 84
    aget-object v0, v2, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    .line 85
    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 86
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v6

    .line 87
    :cond_1
    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 88
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    add-double/2addr v0, v4

    goto :goto_0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method private static parseLOCformat(I)J
    .locals 6

    .prologue
    .line 295
    shr-int/lit8 v0, p0, 0x4

    int-to-long v2, v0

    .line 296
    and-int/lit8 v0, p0, 0xf

    .line 297
    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 298
    :cond_0
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "Invalid LOC Encoding"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 300
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    move v0, v1

    goto :goto_0

    .line 301
    :cond_2
    return-wide v2
.end method

.method private parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J
    .locals 18

    .prologue
    .line 95
    const-string/jumbo v2, "latitude"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 96
    const/4 v3, 0x0

    .line 97
    const-wide/16 v4, 0x0

    .line 101
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v7

    .line 102
    const/16 v2, 0xb4

    if-gt v7, v2, :cond_0

    const/16 v2, 0x5a

    if-le v7, v2, :cond_1

    if-eqz v6, :cond_1

    .line 103
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid LOC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " degrees"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 105
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v2

    .line 107
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    if-ltz v3, :cond_2

    const/16 v8, 0x3b

    if-le v3, v8, :cond_3

    .line 109
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid LOC "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " minutes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v8

    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    move-exception v8

    .line 118
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid LOC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 110
    :cond_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v2

    .line 111
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v4

    .line 112
    const-wide/16 v8, 0x0

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_4

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    cmpl-double v8, v4, v8

    if-ltz v8, :cond_5

    .line 113
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid LOC "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v8

    throw v8

    .line 114
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 121
    :cond_6
    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/16 v10, 0x3c

    int-to-long v12, v3

    const-wide/16 v14, 0x3c

    int-to-long v0, v7

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    mul-long/2addr v10, v12

    long-to-double v10, v10

    add-double/2addr v4, v10

    mul-double/2addr v4, v8

    double-to-long v4, v4

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 124
    if-eqz v6, :cond_7

    const/16 v3, 0x53

    if-eq v2, v3, :cond_8

    :cond_7
    if-nez v6, :cond_9

    const/16 v3, 0x57

    if-ne v2, v3, :cond_9

    .line 125
    :cond_8
    neg-long v2, v4

    .line 129
    :goto_1
    const-wide v4, 0x80000000L

    add-long/2addr v2, v4

    .line 131
    return-wide v2

    .line 126
    :cond_9
    if-eqz v6, :cond_a

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_b

    :cond_a
    if-nez v6, :cond_c

    const/16 v3, 0x45

    if-eq v2, v3, :cond_c

    .line 127
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid LOC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    :cond_c
    move-wide v2, v4

    goto :goto_1
.end method

.method private positionToString(JCC)Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    const-wide v0, 0x80000000L

    sub-long v0, p1, v0

    .line 191
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 192
    neg-long v0, v0

    .line 197
    :goto_0
    div-long v4, v0, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 198
    rem-long/2addr v0, v8

    .line 199
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    div-long v4, v0, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 202
    rem-long v4, v0, v6

    .line 203
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 206
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move p4, p3

    .line 195
    goto :goto_0
.end method

.method private renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V
    .locals 5

    .prologue
    .line 177
    div-long v0, p3, p5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 178
    rem-long v0, p3, p5

    .line 179
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 180
    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_0
    return-void
.end method

.method private toLOCformat(J)I
    .locals 5

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    :goto_0
    const-wide/16 v2, 0x9

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 308
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 309
    const-wide/16 v2, 0xa

    div-long/2addr p1, v2

    goto :goto_0

    .line 311
    :cond_0
    const/4 v1, 0x4

    shl-long v2, p1, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getAltitude()D
    .locals 4

    .prologue
    .line 261
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v2, 0x989680

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getHPrecision()D
    .locals 4

    .prologue
    .line 273
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitude()D
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitude()D
    .locals 4

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/xbill/DNS/LOCRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/LOCRecord;-><init>()V

    return-object v0
.end method

.method public getSize()D
    .locals 4

    .prologue
    .line 267
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getVPrecision()D
    .locals 4

    .prologue
    .line 279
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 10

    .prologue
    .line 162
    const-string/jumbo v0, "latitude"

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 163
    const-string/jumbo v0, "longitude"

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 164
    const-string/jumbo v2, "altitude"

    const/4 v3, 0x1

    const-wide/32 v4, -0x989680

    const-wide v6, 0xff67697fL

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 166
    const-string/jumbo v2, "size"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/16 v8, 0x64

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 167
    const-string/jumbo v2, "horizontal precision"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/32 v8, 0xf4240

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 169
    const-string/jumbo v2, "vertical precision"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/16 v8, 0x3e8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 171
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "Invalid LOC version"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 70
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 74
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x64

    .line 217
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const/16 v3, 0x4e

    const/16 v4, 0x53

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const/16 v3, 0x45

    const/16 v4, 0x57

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v4, 0x989680

    sub-long v4, v0, v4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 229
    const-string/jumbo v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 233
    const-string/jumbo v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 237
    const-string/jumbo v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 241
    const-string/jumbo v0, "m"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 285
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 286
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 287
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 288
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 289
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 290
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 291
    return-void
.end method
