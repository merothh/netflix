.class final Lcom/ibm/icu/text/RBBIDataWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;,
        Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;,
        Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;
    }
.end annotation


# static fields
.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;

.field static fTrieFoldingFunc:Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;


# instance fields
.field fFTable:[S

.field fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

.field fRTable:[S

.field fRuleSource:Ljava/lang/String;

.field fSFTable:[S

.field fSRTable:[S

.field fStatusTable:[I

.field fTrie:Lcom/ibm/icu/impl/CharTrie;

.field private isBigEndian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;-><init>(Lcom/ibm/icu/text/RBBIDataWrapper$1;)V

    sput-object v0, Lcom/ibm/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;

    .line 160
    new-instance v0, Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    invoke-direct {v0}, Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dumpCharCategories(Ljava/io/PrintStream;)V
    .locals 13

    .line 449
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v0, v0, 0x1

    .line 450
    new-array v1, v0, [Ljava/lang/String;

    .line 456
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 458
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v4, v4, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v3, v4, :cond_0

    const-string v4, ""

    .line 459
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "\nCharacter Categories"

    .line 461
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "--------------------"

    .line 462
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const v7, 0x10ffff

    const-string v8, "-"

    const-string v9, " "

    if-gt v3, v7, :cond_6

    .line 464
    iget-object v7, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v7, v3}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v7

    and-int/lit16 v7, v7, -0x4001

    if-ltz v7, :cond_5

    .line 466
    iget-object v10, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v10, v10, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-le v7, v10, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ne v7, v4, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v4, :cond_4

    .line 475
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    aget v11, v0, v4

    add-int/lit8 v11, v11, 0x46

    if-le v10, v11, :cond_3

    .line 476
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    aput v10, v0, v4

    .line 477
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v4

    .line 480
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v4

    if-eq v6, v5, :cond_4

    .line 482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    :cond_4
    move v5, v3

    move v4, v7

    :goto_2
    add-int/lit8 v6, v3, 0x1

    move v12, v6

    move v6, v3

    move v3, v12

    goto/16 :goto_1

    .line 467
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error, bad category "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for char "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    if-eq v6, v5, :cond_7

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 494
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v2, v0, :cond_8

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 497
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private dumpRow(Ljava/io/PrintStream;[SI)V
    .locals 6

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    const/4 v2, 0x5

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x4

    .line 425
    invoke-static {p3, v1}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result p3

    add-int/lit8 v3, p3, 0x0

    .line 427
    aget-short v4, p2, v3

    const-string v5, "     "

    if-eqz v4, :cond_0

    .line 428
    aget-short v3, p2, v3

    invoke-static {v3, v2}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v3, p3, 0x1

    .line 432
    aget-short v4, p2, v3

    if-eqz v4, :cond_1

    .line 433
    aget-short v3, p2, v3

    invoke-static {v3, v2}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, p3, 0x2

    .line 437
    aget-short v3, p2, v3

    invoke-static {v3, v2}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 439
    :goto_2
    iget-object v4, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v4, v4, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, p3, 0x4

    add-int/2addr v4, v3

    .line 440
    aget-short v4, p2, v4

    invoke-static {v4, v2}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 443
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private dumpTable(Ljava/io/PrintStream;[S)V
    .locals 4

    if-nez p2, :cond_0

    const-string p2, "  -- null -- "

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Row  Acc Look  Tag"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 401
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v3, v3, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x5

    .line 402
    invoke-static {v2, v3}, Lcom/ibm/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 405
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const-string v3, "-"

    .line 406
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 408
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 409
    :goto_2
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/RBBIDataWrapper;->getStateTableNumStates([S)I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 410
    invoke-direct {p0, p1, p2, v1}, Lcom/ibm/icu/text/RBBIDataWrapper;->dumpRow(Ljava/io/PrintStream;[SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 412
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    :goto_3
    return-void
.end method

.method static get(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/text/RBBIDataWrapper;
    .locals 8

    .line 171
    new-instance v0, Lcom/ibm/icu/text/RBBIDataWrapper;

    invoke-direct {v0}, Lcom/ibm/icu/text/RBBIDataWrapper;-><init>()V

    .line 173
    sget-object v1, Lcom/ibm/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;

    const v2, 0x42726b20

    invoke-static {p0, v2, v1}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 174
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->isBigEndian:Z

    .line 177
    new-instance v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-direct {v1}, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    .line 178
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    .line 182
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    .line 183
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v1, v3

    .line 184
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v1, v4

    .line 185
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v5, 0x2

    aput-byte v2, v1, v5

    .line 186
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v6, 0x3

    aput-byte v2, v1, v6

    .line 187
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    .line 188
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    .line 189
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    .line 190
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    .line 191
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    .line 192
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    .line 193
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    .line 194
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    .line 195
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    .line 196
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    .line 197
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    .line 198
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrieLen:I

    .line 199
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    .line 200
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    .line 201
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    .line 202
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    const/16 v1, 0x18

    .line 203
    invoke-static {p0, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 206
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    const v2, 0xb1a0

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    if-eq v1, v4, :cond_1

    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    aget-byte v1, v1, v3

    if-ne v1, v6, :cond_8

    :cond_1
    const/16 v1, 0x60

    .line 221
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    const-string v3, "Break iterator Rule data corrupt"

    if-lt v2, v1, :cond_7

    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    iget-object v7, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    if-gt v2, v7, :cond_7

    .line 226
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 227
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    .line 229
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    div-int/2addr v2, v5

    iget-object v7, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    and-int/2addr v7, v4

    invoke-static {p0, v2, v7}, Lcom/ibm/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fFTable:[S

    .line 231
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    add-int/2addr v1, v2

    .line 238
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 239
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    .line 242
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    div-int/2addr v2, v5

    iget-object v7, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    and-int/2addr v7, v4

    invoke-static {p0, v2, v7}, Lcom/ibm/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fRTable:[S

    .line 244
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    add-int/2addr v1, v2

    .line 249
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    if-lez v2, :cond_2

    .line 251
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 252
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    .line 255
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    div-int/2addr v2, v5

    iget-object v7, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    and-int/2addr v7, v4

    invoke-static {p0, v2, v7}, Lcom/ibm/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSFTable:[S

    .line 257
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    add-int/2addr v1, v2

    .line 263
    :cond_2
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    if-lez v2, :cond_3

    .line 265
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 266
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    .line 269
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    div-int/2addr v2, v5

    iget-object v7, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    and-int/2addr v7, v4

    invoke-static {p0, v2, v7}, Lcom/ibm/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSRTable:[S

    .line 271
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    add-int/2addr v1, v2

    .line 281
    :cond_3
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 282
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    .line 284
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 289
    new-instance v2, Lcom/ibm/icu/impl/CharTrie;

    sget-object v7, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    invoke-direct {v2, p0, v7}, Lcom/ibm/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    iput-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/impl/CharTrie;

    .line 293
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 301
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    if-gt v1, v2, :cond_6

    .line 304
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 305
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    .line 306
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    div-int/lit8 v2, v2, 0x4

    iget-object v7, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    and-int/2addr v6, v7

    invoke-static {p0, v2, v6}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v2

    iput-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fStatusTable:[I

    .line 308
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    add-int/2addr v1, v2

    .line 313
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    if-gt v1, v2, :cond_5

    .line 316
    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 317
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    .line 318
    iget-object v1, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    div-int/2addr v1, v5

    iget-object v2, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    and-int/2addr v2, v4

    invoke-static {p0, v1, v2}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 321
    sget-object p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_4

    .line 322
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/RBBIDataWrapper;->dump(Ljava/io/PrintStream;)V

    :cond_4
    return-object v0

    .line 314
    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_6
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_7
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Break Iterator Rule Data Magic Number Incorrect, or unsupported data version."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getStateTableNumStates([S)I
    .locals 4

    .line 331
    iget-boolean v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->isBigEndian:Z

    const v1, 0xffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 332
    aget-short v0, p1, v2

    shl-int/lit8 v0, v0, 0x10

    aget-short p1, p1, v3

    :goto_0
    and-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1

    .line 334
    :cond_0
    aget-short v0, p1, v3

    shl-int/lit8 v0, v0, 0x10

    aget-short p1, p1, v2

    goto :goto_0
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 384
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 v1, 0x20

    .line 386
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    const/16 v1, 0x20

    .line 374
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method dump(Ljava/io/PrintStream;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fFTable:[S

    array-length v0, v0

    if-eqz v0, :cond_0

    const-string v0, "RBBI Data Wrapper dump ..."

    .line 351
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    const-string v0, "Forward State Table"

    .line 353
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fFTable:[S

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;[S)V

    const-string v0, "Reverse State Table"

    .line 355
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fRTable:[S

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;[S)V

    const-string v0, "Forward Safe Points Table"

    .line 357
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSFTable:[S

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;[S)V

    const-string v0, "Reverse Safe Points Table"

    .line 359
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fSRTable:[S

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;[S)V

    .line 362
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RBBIDataWrapper;->dumpCharCategories(Ljava/io/PrintStream;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source Rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 349
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method getRowIndex(I)I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v0, v0, 0x4

    mul-int p1, p1, v0

    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method getStateTableFlags([S)I
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->isBigEndian:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    aget-short p1, p1, v0

    return p1
.end method
