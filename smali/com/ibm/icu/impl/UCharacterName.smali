.class public final Lcom/ibm/icu/impl/UCharacterName;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/UCharacterName;

.field private static final TYPE_NAMES_:[Ljava/lang/String;


# instance fields
.field private m_ISOCommentSet_:[I

.field private m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

.field public m_groupcount_:I

.field private m_groupinfo_:[C

.field private m_grouplengths_:[C

.field private m_groupoffsets_:[C

.field m_groupsize_:I

.field private m_groupstring_:[B

.field private m_nameSet_:[I

.field private m_tokenstring_:[B

.field private m_tokentable_:[C

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 49
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UCharacterName;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCharacterName;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCharacterName;->INSTANCE:Lcom/ibm/icu/impl/UCharacterName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "unassigned"

    const-string v2, "uppercase letter"

    const-string v3, "lowercase letter"

    const-string v4, "titlecase letter"

    const-string v5, "modifier letter"

    const-string v6, "other letter"

    const-string v7, "non spacing mark"

    const-string v8, "enclosing mark"

    const-string v9, "combining spacing mark"

    const-string v10, "decimal digit number"

    const-string v11, "letter number"

    const-string v12, "other number"

    const-string v13, "space separator"

    const-string v14, "line separator"

    const-string v15, "paragraph separator"

    const-string v16, "control"

    const-string v17, "format"

    const-string v18, "private use area"

    const-string v19, "surrogate"

    const-string v20, "dash punctuation"

    const-string v21, "start punctuation"

    const-string v22, "end punctuation"

    const-string v23, "connector punctuation"

    const-string v24, "other punctuation"

    const-string v25, "math symbol"

    const-string v26, "currency symbol"

    const-string v27, "modifier symbol"

    const-string v28, "other symbol"

    const-string v29, "initial punctuation"

    const-string v30, "final punctuation"

    const-string v31, "noncharacter"

    const-string v32, "lead surrogate"

    const-string v33, "trail surrogate"

    .line 1105
    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    return-void

    .line 52
    :catch_0
    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, ""

    const-string v2, "Could not construct UCharacterName. Missing unames.icu"

    invoke-direct {v0, v2, v1, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 2

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    .line 954
    iput v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    const/16 v0, 0x21

    new-array v1, v0, [C

    .line 1036
    iput-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C

    new-array v0, v0, [C

    .line 1037
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1080
    iput-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_nameSet_:[I

    new-array v0, v0, [I

    .line 1085
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    .line 1089
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1093
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    const-string v0, "unames.icu"

    .line 1171
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1172
    new-instance v1, Lcom/ibm/icu/impl/UCharacterNameReader;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/UCharacterNameReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1173
    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/UCharacterNameReader;->read(Lcom/ibm/icu/impl/UCharacterName;)V

    return-void
.end method

.method private static getExtendedChar(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    .line 1346
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne p1, v1, :cond_1

    .line 1348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 1349
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    const/16 v3, 0x2d

    .line 1350
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v3, v1

    .line 1356
    :try_start_0
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x10

    .line 1355
    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v3, v1

    .line 1364
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1365
    sget-object v1, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1367
    sget-object v3, Lcom/ibm/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1368
    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterName;->getType(I)I

    move-result p0

    if-ne p0, v0, :cond_1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v2

    :cond_2
    const/4 p0, -0x2

    return p0
.end method

.method private getGroupChar(I[CLjava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 1247
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v6, p1

    const/4 v5, 0x0

    :goto_0
    const/16 v7, 0x20

    const/4 v8, -0x1

    if-gt v5, v7, :cond_b

    .line 1253
    aget-char v7, p2, v5

    const/16 v9, 0x3b

    if-eqz v2, :cond_2

    const/4 v10, 0x2

    if-eq v2, v10, :cond_2

    const/4 v11, 0x4

    if-ne v2, v11, :cond_0

    goto :goto_1

    :cond_0
    move v10, v2

    .line 1265
    :goto_1
    iget-object v11, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    invoke-static {v11, v6, v7, v9}, Lcom/ibm/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v11

    add-int/2addr v11, v6

    sub-int v6, v11, v6

    sub-int/2addr v7, v6

    add-int/2addr v10, v8

    if-gtz v10, :cond_1

    goto :goto_2

    :cond_1
    move v6, v11

    goto :goto_1

    :cond_2
    move v11, v6

    :goto_2
    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v6, v7, :cond_8

    if-eq v10, v8, :cond_8

    if-ge v10, v3, :cond_8

    .line 1275
    iget-object v12, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v13, v11, v6

    aget-byte v13, v12, v13

    add-int/lit8 v6, v6, 0x1

    .line 1278
    iget-object v14, v0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v15, v14

    if-lt v13, v15, :cond_4

    add-int/lit8 v12, v10, 0x1

    .line 1279
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    and-int/lit16 v13, v13, 0xff

    if-eq v10, v13, :cond_3

    :goto_4
    const/4 v10, -0x1

    goto :goto_3

    :cond_3
    move v10, v12

    goto :goto_3

    :cond_4
    and-int/lit16 v15, v13, 0xff

    .line 1284
    aget-char v4, v14, v15

    const v8, 0xfffe

    if-ne v4, v8, :cond_5

    shl-int/lit8 v4, v13, 0x8

    add-int v8, v11, v6

    .line 1287
    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    aget-char v4, v14, v4

    add-int/lit8 v6, v6, 0x1

    :cond_5
    const v8, 0xffff

    if-ne v4, v8, :cond_7

    add-int/lit8 v4, v10, 0x1

    .line 1292
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v15, :cond_6

    const/4 v8, -0x1

    goto :goto_4

    :cond_6
    move v10, v4

    goto :goto_5

    .line 1298
    :cond_7
    iget-object v8, v0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v1, v8, v10, v4}, Lcom/ibm/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v10

    :goto_5
    const/4 v8, -0x1

    goto :goto_3

    :cond_8
    if-ne v3, v10, :cond_a

    if-eq v6, v7, :cond_9

    .line 1304
    iget-object v4, v0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int/2addr v6, v11

    aget-byte v4, v4, v6

    if-ne v4, v9, :cond_a

    :cond_9
    return v5

    :cond_a
    add-int v6, v11, v7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v4, -0x1

    return v4
.end method

.method private declared-synchronized getGroupChar(Ljava/lang/String;I)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1214
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 1217
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v0, v1, v3}, Lcom/ibm/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v1

    .line 1221
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-direct {p0, v1, v3, p1, p2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(I[CLjava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1224
    iget-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int v0, v0, p2

    aget-char p1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v1

    monitor-exit p0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1228
    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getType(I)I
    .locals 2

    .line 1321
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x1e

    return p0

    .line 1325
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const v0, 0xdbff

    if-gt p0, v0, :cond_1

    const/16 v0, 0x1f

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getCharFromName(ILjava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_8

    if-eqz p2, :cond_8

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 120
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ibm/icu/impl/UCharacterName;->getExtendedChar(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v0, :cond_1

    return v1

    .line 125
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_5

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    if-eqz v3, :cond_3

    .line 134
    array-length v3, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_5

    .line 137
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    aget-object v4, v4, v3

    invoke-virtual {v4, p2}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->getChar(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    return v4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    .line 145
    invoke-direct {p0, p2, v2}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x3

    .line 148
    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 153
    :cond_6
    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result p1

    :cond_7
    :goto_2
    return p1

    :cond_8
    :goto_3
    return v0
.end method

.method public getGroupLengths(I[C[C)I
    .locals 9

    .line 182
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int p1, p1, v0

    .line 183
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v1, p1, 0x1

    aget-char v1, v0, v1

    add-int/lit8 p1, p1, 0x2

    aget-char p1, v0, p1

    invoke-static {v1, p1}, Lcom/ibm/icu/impl/UCharacterUtility;->toInt(CC)I

    move-result p1

    const/4 v0, 0x0

    .line 187
    aput-char v0, p2, v0

    const v1, 0xffff

    const v2, 0xffff

    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_4

    .line 192
    iget-object v4, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    aget-byte v4, v4, p1

    const/4 v5, 0x4

    move v6, v2

    move v2, v0

    const/4 v0, 0x4

    :goto_1
    if-ltz v0, :cond_3

    shr-int v7, v4, v0

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    if-ne v6, v1, :cond_0

    const/16 v8, 0xb

    if-le v7, v8, :cond_0

    add-int/lit8 v7, v7, -0xc

    shl-int/lit8 v6, v7, 0x4

    int-to-char v6, v6

    goto :goto_3

    :cond_0
    if-eq v6, v1, :cond_1

    or-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xc

    int-to-char v6, v6

    .line 203
    aput-char v6, p3, v2

    goto :goto_2

    :cond_1
    int-to-char v6, v7

    .line 206
    aput-char v6, p3, v2

    :goto_2
    if-ge v2, v3, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 210
    aget-char v7, p2, v2

    aget-char v8, p3, v2

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p2, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const v6, 0xffff

    :goto_3
    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    move v0, v2

    move v2, v6

    goto :goto_0

    :cond_4
    return p1
.end method

.method setAlgorithm([Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 982
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 983
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_algorithm_:[Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setGroup([C[B)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1013
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1015
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupinfo_:[C

    .line 1016
    iput-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupstring_:[B

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setGroupCountSize(II)Z
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    iput p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupcount_:I

    .line 1001
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_groupsize_:I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method setToken([C[B)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 966
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 968
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokentable_:[C

    .line 969
    iput-object p2, p0, Lcom/ibm/icu/impl/UCharacterName;->m_tokenstring_:[B

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
