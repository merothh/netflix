.class final Lcom/ibm/icu/impl/coll/CollationDataReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 499
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;-><init>(Lcom/ibm/icu/impl/coll/CollationDataReader$1;)V

    sput-object v0, Lcom/ibm/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lcom/ibm/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/coll/CollationTailoring;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 101
    sget-object v3, Lcom/ibm/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/coll/CollationDataReader$IsAcceptable;

    const v4, 0x55436f6c

    invoke-static {v1, v4, v3}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    move-result v3

    iput v3, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->version:I

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailoring UCA version differs from base data UCA version"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const-string v4, "not enough bytes"

    const/16 v5, 0x8

    if-lt v3, v5, :cond_40

    .line 110
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3f

    mul-int/lit8 v8, v6, 0x4

    if-lt v3, v8, :cond_3f

    const/16 v8, 0x14

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_1
    if-ge v11, v6, :cond_2

    .line 116
    array-length v12, v8

    if-ge v11, v12, :cond_2

    .line 117
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    aput v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move v11, v6

    .line 119
    :goto_2
    array-length v12, v8

    if-ge v11, v12, :cond_3

    const/4 v12, -0x1

    .line 120
    aput v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 122
    :cond_3
    array-length v11, v8

    const/4 v12, 0x4

    if-le v6, v11, :cond_4

    .line 123
    array-length v11, v8

    sub-int v11, v6, v11

    mul-int/lit8 v11, v11, 0x4

    invoke-static {v1, v11}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :cond_4
    const/4 v11, 0x5

    const/16 v13, 0x13

    if-le v6, v13, :cond_5

    .line 137
    aget v6, v8, v13

    goto :goto_3

    :cond_5
    if-le v6, v11, :cond_6

    sub-int/2addr v6, v10

    .line 139
    aget v6, v8, v6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-lt v3, v6, :cond_3e

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4

    .line 147
    :cond_7
    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 151
    :goto_4
    aget v4, v8, v11

    const/4 v6, 0x6

    .line 152
    aget v11, v8, v6

    sub-int/2addr v11, v4

    const/4 v4, 0x3

    if-lt v11, v12, :cond_a

    if-eqz v0, :cond_9

    .line 159
    div-int/lit8 v14, v11, 0x4

    and-int/2addr v11, v4

    .line 160
    invoke-static {v1, v14, v11}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v11

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_8

    sub-int v16, v14, v15

    add-int/lit8 v16, v16, -0x1

    .line 167
    aget v16, v11, v16

    const/high16 v17, -0x10000

    and-int v16, v16, v17

    if-eqz v16, :cond_8

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_8
    sub-int/2addr v14, v15

    goto :goto_6

    .line 157
    :cond_9
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Collation base data must not reorder scripts"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-array v14, v9, [I

    .line 176
    invoke-static {v1, v11}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    move-object v11, v14

    const/4 v14, 0x0

    .line 184
    :goto_6
    aget v6, v8, v6

    const/4 v15, 0x7

    .line 185
    aget v16, v8, v15

    sub-int v6, v16, v6

    const/16 v13, 0x100

    if-lt v6, v13, :cond_c

    if-eqz v14, :cond_b

    new-array v3, v13, [B

    .line 191
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int/lit16 v6, v6, -0x100

    goto :goto_7

    .line 188
    :cond_b
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Reordering table without reordering codes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v3, 0x0

    .line 197
    :goto_7
    invoke-static {v1, v6}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const-wide v18, 0xff000000L

    move/from16 p0, v14

    if-eqz v0, :cond_e

    .line 199
    iget-wide v13, v0, Lcom/ibm/icu/impl/coll/CollationData;->numericPrimary:J

    aget v6, v8, v10

    int-to-long v9, v6

    and-long v9, v9, v18

    cmp-long v6, v13, v9

    if-nez v6, :cond_d

    goto :goto_8

    .line 200
    :cond_d
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailoring numeric primary weight differs from base data"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_e
    :goto_8
    aget v6, v8, v15

    .line 206
    aget v9, v8, v5

    sub-int/2addr v9, v6

    if-lt v9, v5, :cond_10

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    .line 209
    iget-object v6, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->ownedData:Lcom/ibm/icu/impl/coll/CollationData;

    .line 210
    iput-object v0, v6, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 v10, 0x1

    .line 211
    aget v13, v8, v10

    int-to-long v13, v13

    and-long v13, v13, v18

    iput-wide v13, v6, Lcom/ibm/icu/impl/coll/CollationData;->numericPrimary:J

    .line 212
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/impl/Trie2_32;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_32;

    move-result-object v10

    iput-object v10, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->trie:Lcom/ibm/icu/impl/Trie2_32;

    iput-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    .line 213
    iget-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    invoke-virtual {v10}, Lcom/ibm/icu/impl/Trie2_32;->getSerializedLength()I

    move-result v10

    if-gt v10, v9, :cond_f

    sub-int/2addr v9, v10

    goto :goto_9

    .line 215
    :cond_f
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Not enough bytes for the mappings trie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-eqz v0, :cond_3d

    .line 220
    iput-object v0, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 v6, 0x0

    .line 224
    :goto_9
    invoke-static {v1, v9}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 227
    aget v9, v8, v5

    const/16 v10, 0x9

    .line 228
    aget v10, v8, v10

    sub-int/2addr v10, v9

    .line 229
    invoke-static {v1, v10}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v9, 0x9

    .line 232
    aget v9, v8, v9

    const/16 v10, 0xa

    .line 233
    aget v10, v8, v10

    sub-int/2addr v10, v9

    if-lt v10, v5, :cond_12

    if-eqz v6, :cond_11

    .line 238
    div-int/lit8 v9, v10, 0x8

    and-int/2addr v10, v15

    invoke-static {v1, v9, v10}, Lcom/ibm/icu/impl/ICUBinary;->getLongs(Ljava/nio/ByteBuffer;II)[J

    move-result-object v9

    iput-object v9, v6, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    goto :goto_a

    .line 236
    :cond_11
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailored ces without tailored trie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_12
    invoke-static {v1, v10}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :goto_a
    const/16 v9, 0xa

    .line 244
    aget v9, v8, v9

    const/16 v10, 0xb

    .line 245
    aget v10, v8, v10

    sub-int/2addr v10, v9

    .line 246
    invoke-static {v1, v10}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v9, 0xb

    .line 249
    aget v9, v8, v9

    const/16 v10, 0xc

    .line 250
    aget v10, v8, v10

    sub-int/2addr v10, v9

    if-lt v10, v12, :cond_14

    if-eqz v6, :cond_13

    .line 255
    div-int/lit8 v9, v10, 0x4

    and-int/2addr v10, v4

    invoke-static {v1, v9, v10}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v9

    iput-object v9, v6, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    goto :goto_b

    .line 253
    :cond_13
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailored ce32s without tailored trie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_14
    invoke-static {v1, v10}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 260
    :goto_b
    aget v9, v8, v12

    if-ltz v9, :cond_16

    if-eqz v6, :cond_15

    .line 262
    iget-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    if-eqz v10, :cond_15

    const/16 v10, 0x43

    new-array v10, v10, [I

    .line 265
    iput-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 266
    iget-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    iget-object v13, v6, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    const/16 v14, 0x43

    const/4 v15, 0x0

    invoke-static {v10, v9, v13, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 263
    :cond_15
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "JamoCE32sStart index into non-existent ce32s[]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-nez v6, :cond_17

    goto :goto_c

    :cond_17
    if-eqz v0, :cond_3c

    .line 270
    iget-object v9, v0, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    iput-object v9, v6, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    :goto_c
    const/16 v9, 0xc

    .line 276
    aget v9, v8, v9

    const/16 v10, 0xd

    .line 277
    aget v10, v8, v10

    sub-int/2addr v10, v9

    if-lt v10, v12, :cond_1d

    .line 279
    div-int/lit8 v9, v10, 0x4

    if-eqz v6, :cond_1c

    if-le v9, v12, :cond_1b

    .line 286
    new-array v13, v9, [J

    iput-object v13, v6, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v9, :cond_18

    .line 288
    iget-object v14, v6, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    move-object/from16 v19, v8

    int-to-long v7, v15

    const-wide v20, 0xffffffffL

    and-long v7, v7, v20

    aput-wide v7, v14, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v19

    const/4 v7, 0x2

    goto :goto_d

    :cond_18
    move-object/from16 v19, v8

    .line 290
    iget-object v7, v6, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    aget-wide v8, v7, v4

    const-wide/32 v13, 0x5000500

    cmp-long v4, v8, v13

    if-nez v4, :cond_1a

    .line 294
    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->rootElements:[J

    aget-wide v7, v4, v12

    const/16 v4, 0x18

    ushr-long/2addr v7, v4

    const-wide/16 v12, 0x45

    cmp-long v4, v7, v12

    if-ltz v4, :cond_19

    and-int/lit8 v10, v10, 0x3

    goto :goto_e

    .line 298
    :cond_19
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "[fixed last secondary common byte] is too low"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1a
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Common sec/ter weights in base data differ from the hardcoded value"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1b
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Root elements array too short"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1c
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Root elements but no mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object/from16 v19, v8

    .line 302
    :goto_e
    invoke-static {v1, v10}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v4, 0xd

    .line 305
    aget v4, v19, v4

    const/16 v7, 0xe

    .line 306
    aget v7, v19, v7

    sub-int/2addr v7, v4

    const/4 v4, 0x2

    if-lt v7, v4, :cond_1f

    if-eqz v6, :cond_1e

    .line 311
    div-int/lit8 v4, v7, 0x2

    const/4 v8, 0x1

    and-int/2addr v7, v8

    invoke-static {v1, v4, v7}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    goto :goto_f

    .line 309
    :cond_1e
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Tailored contexts without tailored trie"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1f
    invoke-static {v1, v7}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :goto_f
    const/16 v4, 0xe

    .line 317
    aget v4, v19, v4

    const/16 v7, 0xf

    .line 318
    aget v7, v19, v7

    sub-int v9, v7, v4

    const/4 v4, 0x2

    if-lt v9, v4, :cond_25

    if-eqz v6, :cond_24

    if-nez v0, :cond_20

    .line 335
    new-instance v4, Lcom/ibm/icu/text/UnicodeSet;

    const v7, 0xdc00

    const v8, 0xdfff

    invoke-direct {v4, v7, v8}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    iput-object v4, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 336
    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-object v7, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->addLcccChars(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_10

    .line 339
    :cond_20
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UnicodeSet;->cloneAsThawed()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v4

    iput-object v4, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 342
    :goto_10
    new-instance v4, Lcom/ibm/icu/impl/USerializedSet;

    invoke-direct {v4}, Lcom/ibm/icu/impl/USerializedSet;-><init>()V

    .line 343
    div-int/lit8 v7, v9, 0x2

    and-int/lit8 v8, v9, 0x1

    invoke-static {v1, v7, v8}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v7

    const/4 v8, 0x0

    .line 345
    invoke-virtual {v4, v7, v8}, Lcom/ibm/icu/impl/USerializedSet;->getSet([CI)Z

    .line 346
    invoke-virtual {v4}, Lcom/ibm/icu/impl/USerializedSet;->countRanges()I

    move-result v7

    const/4 v9, 0x2

    new-array v10, v9, [I

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v7, :cond_21

    .line 349
    invoke-virtual {v4, v9, v10}, Lcom/ibm/icu/impl/USerializedSet;->getRange(I[I)Z

    .line 350
    iget-object v12, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    aget v13, v10, v8

    const/4 v8, 0x1

    aget v14, v10, v8

    invoke-virtual {v12, v13, v14}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_11

    :cond_21
    const/high16 v4, 0x10000

    const v7, 0xd800

    :goto_12
    const v8, 0xdc00

    if-ge v7, v8, :cond_23

    .line 356
    iget-object v8, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit16 v9, v4, 0x3ff

    invoke-virtual {v8, v4, v9}, Lcom/ibm/icu/text/UnicodeSet;->containsNone(II)Z

    move-result v8

    if-nez v8, :cond_22

    .line 357
    iget-object v8, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v8, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_22
    add-int/lit8 v7, v7, 0x1

    add-int/lit16 v4, v4, 0x400

    goto :goto_12

    .line 360
    :cond_23
    iget-object v4, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 361
    iget-object v4, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v9, 0x0

    goto :goto_13

    .line 321
    :cond_24
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Unsafe-backward-set but no mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-nez v6, :cond_26

    goto :goto_13

    :cond_26
    if-eqz v0, :cond_3b

    .line 366
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 370
    :goto_13
    invoke-static {v1, v9}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v4, 0xf

    .line 376
    aget v4, v19, v4

    const/16 v7, 0x10

    .line 377
    aget v8, v19, v7

    sub-int v9, v8, v4

    if-eqz v6, :cond_2a

    const/4 v4, 0x0

    .line 379
    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 380
    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    const/4 v4, 0x1

    .line 381
    aget v8, v19, v4

    shr-int/lit8 v4, v8, 0x10

    and-int/lit16 v4, v4, 0xff

    const/4 v8, 0x2

    if-ne v4, v8, :cond_2a

    if-lt v9, v8, :cond_29

    .line 383
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    and-int/lit16 v8, v4, 0xff

    .line 385
    new-array v10, v8, [C

    iput-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 386
    iget-object v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    const/4 v12, 0x0

    aput-char v4, v10, v12

    const/4 v10, 0x1

    :goto_14
    if-ge v10, v8, :cond_27

    .line 388
    iget-object v12, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v13

    aput-char v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 390
    :cond_27
    div-int/lit8 v10, v9, 0x2

    sub-int/2addr v10, v8

    and-int/lit8 v8, v9, 0x1

    .line 391
    invoke-static {v1, v10, v8}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v8

    iput-object v8, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    shr-int/2addr v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    const/4 v9, 0x0

    goto :goto_15

    .line 394
    :cond_28
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Fast-Latin table version differs from version in data header"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    if-eqz v0, :cond_2a

    .line 397
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 398
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 402
    :cond_2a
    :goto_15
    invoke-static {v1, v9}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 405
    aget v4, v19, v7

    const/16 v5, 0x11

    .line 406
    aget v5, v19, v5

    sub-int/2addr v5, v4

    const/4 v4, 0x2

    if-lt v5, v4, :cond_2e

    if-eqz v6, :cond_2d

    .line 411
    div-int/lit8 v8, v5, 0x2

    .line 412
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    .line 413
    invoke-virtual {v9}, Ljava/nio/CharBuffer;->get()C

    move-result v10

    iput v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    .line 415
    iget v10, v6, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    const/4 v12, 0x1

    add-int/2addr v10, v12

    add-int/2addr v10, v7

    sub-int/2addr v8, v10

    if-le v8, v4, :cond_2c

    .line 419
    iget v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v4, v7

    new-array v4, v4, [C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    invoke-virtual {v9, v4}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 420
    new-array v4, v8, [C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    invoke-virtual {v9, v4}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 421
    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    const/4 v7, 0x0

    aget-char v4, v4, v7

    if-nez v4, :cond_2b

    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    const/4 v9, 0x1

    aget-char v4, v4, v9

    const/16 v10, 0x300

    if-ne v4, v10, :cond_2b

    iget-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    sub-int/2addr v8, v9

    aget-char v4, v4, v8

    const v8, 0xff00

    if-ne v4, v8, :cond_2b

    goto :goto_16

    .line 425
    :cond_2b
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Script order data not valid"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_2c
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Script order data too short"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_2d
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Script order data but no mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v7, 0x0

    if-nez v6, :cond_2f

    goto :goto_16

    :cond_2f
    if-eqz v0, :cond_30

    .line 430
    iget v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    iput v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->numScripts:I

    .line 431
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptsIndex:[C

    .line 432
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->scriptStarts:[C

    .line 434
    :cond_30
    :goto_16
    invoke-static {v1, v5}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v4, 0x11

    .line 437
    aget v4, v19, v4

    const/16 v5, 0x12

    .line 438
    aget v5, v19, v5

    sub-int/2addr v5, v4

    const/16 v4, 0x100

    if-lt v5, v4, :cond_34

    if-eqz v6, :cond_33

    new-array v8, v4, [Z

    .line 443
    iput-object v8, v6, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v4, :cond_32

    .line 445
    iget-object v9, v6, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    if-eqz v10, :cond_31

    const/4 v10, 0x1

    goto :goto_18

    :cond_31
    const/4 v10, 0x0

    :goto_18
    aput-boolean v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_32
    add-int/lit16 v5, v5, -0x100

    goto :goto_19

    .line 441
    :cond_33
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Data for compressible primary lead bytes but no mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    if-nez v6, :cond_35

    goto :goto_19

    :cond_35
    if-eqz v0, :cond_3a

    .line 451
    iget-object v4, v0, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iput-object v4, v6, Lcom/ibm/icu/impl/coll/CollationData;->compressibleBytes:[Z

    .line 455
    :goto_19
    invoke-static {v1, v5}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v4, 0x12

    .line 458
    aget v4, v19, v4

    const/16 v5, 0x13

    .line 459
    aget v5, v19, v5

    sub-int/2addr v5, v4

    .line 460
    invoke-static {v1, v5}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 462
    iget-object v1, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    const/4 v4, 0x1

    .line 463
    aget v4, v19, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    const/16 v5, 0x180

    new-array v5, v5, [C

    .line 465
    iget-object v6, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-static {v6, v1, v5}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getOptions(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/impl/coll/CollationSettings;[C)I

    move-result v6

    .line 467
    iget v7, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    if-ne v4, v7, :cond_37

    iget-wide v7, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    const-wide/16 v9, 0x0

    cmp-long v12, v7, v9

    if-eqz v12, :cond_37

    iget-object v7, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 468
    invoke-static {v11, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-eqz v7, :cond_37

    iget v7, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    if-ne v6, v7, :cond_37

    if-ltz v6, :cond_36

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    .line 471
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_36
    return-void

    .line 475
    :cond_37
    iget-object v1, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 476
    iput v4, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    .line 478
    iget-object v4, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 479
    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v5

    add-int/lit16 v5, v5, 0x1000

    .line 478
    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    .line 480
    iget-wide v4, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_39

    if-eqz p0, :cond_38

    move/from16 v14, p0

    .line 485
    invoke-virtual {v1, v0, v11, v14, v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->aliasReordering(Lcom/ibm/icu/impl/coll/CollationData;[II[B)V

    .line 488
    :cond_38
    iget-object v0, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v2, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getOptions(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/impl/coll/CollationSettings;[C)I

    move-result v0

    iput v0, v1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    return-void

    .line 481
    :cond_39
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "The maxVariable could not be mapped to a variableTop"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_3a
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Missing data for compressible primary lead bytes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_3b
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Missing unsafe-backward-set"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_3c
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Missing Jamo CE32s for Hangul processing"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_3d
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "Missing collation data mappings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3e
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    invoke-direct {v0, v4}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3f
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string v1, "not enough indexes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_40
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    invoke-direct {v0, v4}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
