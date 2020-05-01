.class public final Lcom/ibm/icu/impl/coll/CollationData;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field public base:Lcom/ibm/icu/impl/coll/CollationData;

.field ce32s:[I

.field ces:[J

.field public compressibleBytes:[Z

.field contexts:Ljava/lang/String;

.field public fastLatinTable:[C

.field fastLatinTableHeader:[C

.field jamoCE32s:[I

.field public nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

.field numScripts:I

.field numericPrimary:J

.field public rootElements:[J

.field scriptStarts:[C

.field scriptsIndex:[C

.field trie:Lcom/ibm/icu/impl/Trie2_32;

.field unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 479
    sput-object v0, Lcom/ibm/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x43

    new-array v0, v0, [I

    .line 503
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    const-wide/32 v0, 0x12000000

    .line 506
    iput-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->numericPrimary:J

    .line 40
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    return-void
.end method

.method private addHighScriptRange([SII)I
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v1, p2, 0x1

    aget-char v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, p3, 0xff

    if-le v1, v2, :cond_0

    add-int/lit16 p3, p3, -0x100

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v1, v1, p2

    const v2, 0xff00

    and-int/2addr p3, v2

    and-int/2addr v0, v2

    and-int/2addr v2, v1

    sub-int/2addr v0, v2

    sub-int/2addr p3, v0

    and-int/lit16 v0, v1, 0xff

    or-int/2addr p3, v0

    shr-int/lit8 v0, p3, 0x8

    int-to-short v0, v0

    .line 469
    aput-short v0, p1, p2

    return p3
.end method

.method private addLowScriptRange([SII)I
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v0, v0, p2

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, p3, 0xff

    if-ge v1, v2, :cond_0

    add-int/lit16 p3, p3, 0x100

    :cond_0
    shr-int/lit8 v1, p3, 0x8

    int-to-short v1, v1

    .line 456
    aput-short v1, p1, p2

    .line 457
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 p2, p2, 0x1

    aget-char p1, p1, p2

    const p2, 0xff00

    and-int/2addr p3, p2

    and-int v1, p1, p2

    and-int/2addr p2, v0

    sub-int/2addr v1, p2

    add-int/2addr p3, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    return p1
.end method

.method private getScriptIndex(I)I
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 242
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    if-ge p1, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char p1, v0, p1

    return p1

    :cond_1
    const/16 v2, 0x1000

    if-ge p1, v2, :cond_2

    return v0

    :cond_2
    add-int/lit16 p1, p1, -0x1000

    const/16 v2, 0x8

    if-ge p1, v2, :cond_3

    .line 249
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1

    :cond_3
    return v0
.end method

.method private makeReorderRanges([IZLcom/ibm/icu/impl/coll/UVector32;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 299
    invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/impl/coll/UVector32;->removeAllElements()V

    .line 300
    array-length v3, v1

    if-eqz v3, :cond_1d

    const/16 v4, 0x67

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 301
    aget v7, v1, v5

    if-ne v7, v4, :cond_0

    goto/16 :goto_e

    .line 306
    :cond_0
    iget-object v7, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v7, v7

    sub-int/2addr v7, v6

    new-array v7, v7, [S

    .line 310
    iget-object v8, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v9, v0, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    add-int/lit16 v9, v9, 0x100e

    add-int/lit16 v9, v9, -0x1000

    aget-char v8, v8, v9

    const/16 v9, 0xff

    if-eqz v8, :cond_1

    .line 313
    aput-short v9, v7, v8

    .line 315
    :cond_1
    iget-object v8, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v10, v0, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    add-int/lit16 v10, v10, 0x100f

    add-int/lit16 v10, v10, -0x1000

    aget-char v8, v8, v10

    if-eqz v8, :cond_2

    .line 318
    aput-short v9, v7, v8

    .line 325
    :cond_2
    iget-object v8, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v10, v8, v6

    .line 327
    array-length v11, v8

    sub-int/2addr v11, v6

    aget-char v8, v8, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/16 v13, 0x8

    if-ge v11, v3, :cond_4

    .line 335
    aget v14, v1, v11

    add-int/lit16 v14, v14, -0x1000

    if-ltz v14, :cond_3

    if-ge v14, v13, :cond_3

    shl-int v13, v6, v14

    or-int/2addr v12, v13

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    move v11, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_6

    .line 343
    iget-object v14, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v15, v0, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v15, v10

    aget-char v14, v14, v15

    if-eqz v14, :cond_5

    shl-int v15, v6, v10

    and-int/2addr v15, v12

    if-nez v15, :cond_5

    .line 345
    invoke-direct {v0, v7, v14, v11}, Lcom/ibm/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v11

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    if-nez v12, :cond_7

    .line 352
    aget v10, v1, v5

    const/16 v12, 0x19

    if-ne v10, v12, :cond_7

    if-nez p2, :cond_7

    .line 353
    iget-object v10, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v10, v10, v12

    .line 355
    iget-object v12, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v10, v12, v10

    sub-int v11, v10, v11

    goto :goto_2

    :cond_7
    move v10, v11

    const/4 v11, 0x0

    :goto_2
    move v12, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_11

    add-int/lit8 v14, v10, 0x1

    .line 364
    aget v10, v1, v10

    const-string v15, "setReorderCodes(): duplicate or equivalent script "

    const-string v5, "setReorderCodes(): UScript.DEFAULT together with other scripts"

    const/4 v13, -0x1

    if-ne v10, v4, :cond_d

    :goto_4
    if-ge v14, v3, :cond_c

    add-int/lit8 v3, v3, -0x1

    .line 369
    aget v10, v1, v3

    if-eq v10, v4, :cond_b

    if-eq v10, v13, :cond_a

    .line 378
    invoke-direct {v0, v10}, Lcom/ibm/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v4

    if-nez v4, :cond_8

    :goto_5
    const/16 v4, 0x67

    goto :goto_4

    .line 380
    :cond_8
    aget-short v16, v7, v4

    if-nez v16, :cond_9

    .line 385
    invoke-direct {v0, v7, v4, v8}, Lcom/ibm/icu/impl/coll/CollationData;->addHighScriptRange([SII)I

    move-result v8

    goto :goto_5

    .line 381
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {v10}, Lcom/ibm/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "setReorderCodes(): duplicate UScript.UNKNOWN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    if-eq v10, v13, :cond_10

    .line 395
    invoke-direct {v0, v10}, Lcom/ibm/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v4

    if-nez v4, :cond_e

    :goto_6
    move v10, v14

    const/16 v4, 0x67

    const/4 v5, 0x0

    const/16 v13, 0x8

    goto :goto_3

    .line 397
    :cond_e
    aget-short v5, v7, v4

    if-nez v5, :cond_f

    .line 402
    invoke-direct {v0, v7, v4, v12}, Lcom/ibm/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v12

    goto :goto_6

    .line 398
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-static {v10}, Lcom/ibm/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x1

    .line 406
    :goto_8
    iget-object v5, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v10, v5

    sub-int/2addr v10, v6

    if-ge v4, v10, :cond_14

    .line 407
    aget-short v10, v7, v4

    if-eqz v10, :cond_12

    goto :goto_9

    .line 409
    :cond_12
    aget-char v5, v5, v4

    if-nez v3, :cond_13

    if-le v5, v12, :cond_13

    move v12, v5

    .line 414
    :cond_13
    invoke-direct {v0, v7, v4, v12}, Lcom/ibm/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v5

    move v12, v5

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    if-le v12, v8, :cond_16

    const v3, 0xff00

    and-int/2addr v3, v11

    sub-int/2addr v12, v3

    if-gt v12, v8, :cond_15

    .line 419
    invoke-direct {v0, v1, v6, v2}, Lcom/ibm/icu/impl/coll/CollationData;->makeReorderRanges([IZLcom/ibm/icu/impl/coll/UVector32;)V

    return-void

    .line 423
    :cond_15
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    const-string v2, "setReorderCodes(): reordering too many partial-primary-lead-byte scripts"

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_a
    move v4, v1

    .line 433
    :goto_b
    iget-object v5, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v8, v5

    sub-int/2addr v8, v6

    if-ge v3, v8, :cond_19

    .line 434
    aget-short v8, v7, v3

    if-ne v8, v9, :cond_17

    const/16 v5, 0x8

    goto :goto_c

    .line 438
    :cond_17
    aget-char v4, v5, v3

    const/16 v5, 0x8

    shr-int/2addr v4, v5

    sub-int/2addr v8, v4

    move v4, v8

    if-eq v8, v1, :cond_18

    goto :goto_d

    :cond_18
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    const/16 v5, 0x8

    :goto_d
    if-nez v1, :cond_1a

    .line 443
    iget-object v8, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v8, v8

    sub-int/2addr v8, v6

    if-ge v3, v8, :cond_1b

    .line 444
    :cond_1a
    iget-object v8, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v8, v8, v3

    shl-int/lit8 v8, v8, 0x10

    const v10, 0xffff

    and-int/2addr v1, v10

    or-int/2addr v1, v8

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/coll/UVector32;->addElement(I)V

    .line 446
    :cond_1b
    iget-object v1, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v1, v1

    sub-int/2addr v1, v6

    if-ne v3, v1, :cond_1c

    return-void

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_a

    :cond_1d
    :goto_e
    return-void
.end method

.method private static scriptCodeString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    .line 476
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCE32(I)I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_32;->get(I)I

    move-result p1

    return p1
.end method

.method getCE32FromContexts(I)I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method getCE32FromSupplementary(I)I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_32;->get(I)I

    move-result p1

    return p1
.end method

.method getCEFromOffsetCE32(II)J
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    aget-wide v1, v0, p2

    .line 111
    invoke-static {p1, v1, v2}, Lcom/ibm/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide p1

    return-wide p1
.end method

.method getFCD16(I)I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p1

    return p1
.end method

.method getFinalCE32(I)I
    .locals 1

    .line 100
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method getFirstPrimaryForGroup(I)J
    .locals 2

    .line 196
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char p1, v0, p1

    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method getIndirectCE32(I)I
    .locals 2

    .line 82
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    :cond_2
    :goto_0
    return p1
.end method

.method public getLastPrimaryForGroup(I)J
    .locals 4

    .line 207
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 p1, p1, 0x1

    aget-char p1, v0, p1

    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method isDigit(I)Z
    .locals 1

    const/16 v0, 0x660

    if-ge p1, v0, :cond_1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isUnsafeBackward(IZ)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->isDigit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method makeReorderRanges([ILcom/ibm/icu/impl/coll/UVector32;)V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/coll/CollationData;->makeReorderRanges([IZLcom/ibm/icu/impl/coll/UVector32;)V

    return-void
.end method
