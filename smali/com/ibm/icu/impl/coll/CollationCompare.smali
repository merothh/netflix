.class public final Lcom/ibm/icu/impl/coll/CollationCompare;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationSettings;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 21
    iget v3, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v4, v3, 0xc

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    if-nez v4, :cond_0

    move-wide v9, v7

    goto :goto_0

    .line 27
    :cond_0
    iget-wide v9, v2, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    add-long/2addr v9, v5

    :goto_0
    const/4 v11, 0x0

    .line 36
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v12

    const/16 v14, 0x20

    ushr-long v15, v12, v14

    const-wide v17, -0x100000000L

    const-wide/32 v19, 0x2000000

    cmp-long v22, v15, v9

    if-gez v22, :cond_4

    cmp-long v22, v15, v19

    if-lez v22, :cond_4

    :cond_1
    and-long v11, v12, v17

    .line 44
    invoke-virtual {v0, v11, v12}, Lcom/ibm/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    .line 46
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v12

    ushr-long v15, v12, v14

    cmp-long v11, v15, v7

    if-nez v11, :cond_2

    .line 49
    invoke-virtual {v0, v7, v8}, Lcom/ibm/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    goto :goto_2

    :cond_2
    cmp-long v11, v15, v9

    if-gez v11, :cond_3

    cmp-long v11, v15, v19

    if-gtz v11, :cond_1

    :cond_3
    move-wide v11, v15

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    move v13, v11

    move-wide v11, v15

    :goto_3
    cmp-long v15, v11, v7

    if-eqz v15, :cond_3e

    .line 60
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v15

    ushr-long v22, v15, v14

    cmp-long v24, v22, v9

    if-gez v24, :cond_8

    cmp-long v24, v22, v19

    if-lez v24, :cond_8

    :cond_5
    and-long v4, v15, v17

    .line 68
    invoke-virtual {v1, v4, v5}, Lcom/ibm/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    .line 70
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v15

    ushr-long v22, v15, v14

    cmp-long v4, v22, v7

    if-nez v4, :cond_6

    .line 73
    invoke-virtual {v1, v7, v8}, Lcom/ibm/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    goto :goto_5

    :cond_6
    cmp-long v4, v22, v9

    if-gez v4, :cond_7

    cmp-long v4, v22, v19

    if-gtz v4, :cond_5

    :cond_7
    move-wide/from16 v4, v22

    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    move-wide/from16 v4, v22

    :goto_6
    cmp-long v15, v4, v7

    if-eqz v15, :cond_3d

    cmp-long v16, v11, v4

    if-eqz v16, :cond_b

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    invoke-virtual {v2, v11, v12}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v11

    .line 86
    invoke-virtual {v2, v4, v5}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v4

    :cond_9
    cmp-long v0, v11, v4

    if-gez v0, :cond_a

    const/4 v15, -0x1

    goto :goto_7

    :cond_a
    const/4 v15, 0x1

    :goto_7
    return v15

    :cond_b
    const-wide/16 v4, 0x1

    cmp-long v16, v11, v4

    if-nez v16, :cond_3c

    .line 98
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    const/16 v5, 0x100

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1c

    and-int/lit16 v4, v3, 0x800

    if-nez v4, :cond_11

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_8
    add-int/lit8 v10, v4, 0x1

    .line 105
    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v11

    long-to-int v4, v11

    ushr-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_10

    :goto_9
    add-int/lit8 v11, v9, 0x1

    .line 110
    invoke-virtual {v1, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    long-to-int v7, v6

    ushr-int/lit8 v6, v7, 0x10

    if-eqz v6, :cond_f

    if-eq v4, v6, :cond_d

    if-ge v4, v6, :cond_c

    const/4 v15, -0x1

    goto :goto_a

    :cond_c
    const/4 v15, 0x1

    :goto_a
    return v15

    :cond_d
    if-ne v4, v5, :cond_e

    goto/16 :goto_15

    :cond_e
    move v4, v10

    move v9, v11

    goto :goto_b

    :cond_f
    move v9, v11

    const-wide/16 v7, 0x0

    goto :goto_9

    :cond_10
    move v4, v10

    :goto_b
    const-wide/16 v7, 0x0

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_c
    move v7, v4

    .line 129
    :goto_d
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v9

    ushr-long/2addr v9, v14

    cmp-long v11, v9, v19

    if-gtz v11, :cond_1b

    const-wide/16 v11, 0x0

    cmp-long v16, v9, v11

    if-nez v16, :cond_12

    goto/16 :goto_14

    :cond_12
    move v9, v6

    .line 134
    :goto_e
    invoke-virtual {v1, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v16

    ushr-long v16, v16, v14

    cmp-long v10, v16, v19

    if-gtz v10, :cond_1a

    cmp-long v10, v16, v11

    if-nez v10, :cond_13

    goto :goto_13

    :cond_13
    move v10, v7

    move v11, v9

    :goto_f
    move v12, v10

    const/4 v10, 0x0

    :goto_10
    if-nez v10, :cond_14

    if-le v12, v4, :cond_14

    add-int/lit8 v12, v12, -0x1

    .line 145
    invoke-virtual {v0, v12}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v14

    long-to-int v10, v14

    ushr-int/lit8 v10, v10, 0x10

    const/16 v14, 0x20

    goto :goto_10

    :cond_14
    move v14, v11

    const/4 v11, 0x0

    :goto_11
    if-nez v11, :cond_15

    if-le v14, v6, :cond_15

    add-int/lit8 v14, v14, -0x1

    move/from16 v26, v6

    .line 150
    invoke-virtual {v1, v14}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v5

    long-to-int v6, v5

    ushr-int/lit8 v11, v6, 0x10

    move/from16 v6, v26

    const/16 v5, 0x100

    goto :goto_11

    :cond_15
    move/from16 v26, v6

    if-eq v10, v11, :cond_17

    if-ge v10, v11, :cond_16

    const/16 v18, -0x1

    goto :goto_12

    :cond_16
    const/16 v18, 0x1

    :goto_12
    return v18

    :cond_17
    if-nez v10, :cond_19

    const-wide/16 v4, 0x1

    cmp-long v6, v16, v4

    if-nez v6, :cond_18

    goto :goto_15

    :cond_18
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v6, v9, 0x1

    const/16 v5, 0x100

    const/16 v14, 0x20

    goto :goto_c

    :cond_19
    move v10, v12

    move v11, v14

    move/from16 v6, v26

    const/16 v5, 0x100

    const/16 v14, 0x20

    goto :goto_f

    :cond_1a
    :goto_13
    move/from16 v26, v6

    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v26

    const/16 v5, 0x100

    const-wide/16 v11, 0x0

    const/16 v14, 0x20

    goto :goto_e

    :cond_1b
    :goto_14
    move/from16 v26, v6

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v26

    const/16 v5, 0x100

    const/16 v14, 0x20

    goto/16 :goto_d

    :cond_1c
    :goto_15
    and-int/lit16 v4, v3, 0x400

    const/high16 v5, -0x10000

    const v6, 0xc000

    if-eqz v4, :cond_27

    .line 176
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_16
    if-nez v4, :cond_1f

    :goto_17
    add-int/lit8 v10, v7, 0x1

    .line 189
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v11

    long-to-int v7, v11

    const/16 v14, 0x20

    ushr-long/2addr v11, v14

    const-wide/16 v16, 0x0

    cmp-long v19, v11, v16

    if-eqz v19, :cond_1e

    if-eqz v7, :cond_1e

    and-int v11, v7, v6

    :goto_18
    add-int/lit8 v12, v9, 0x1

    .line 196
    invoke-virtual {v1, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v8

    long-to-int v15, v8

    ushr-long/2addr v8, v14

    cmp-long v14, v8, v16

    if-eqz v14, :cond_1d

    if-eqz v15, :cond_1d

    and-int v8, v15, v6

    move v9, v12

    goto :goto_1b

    :cond_1d
    move v9, v12

    const/16 v14, 0x20

    const-wide/16 v16, 0x0

    goto :goto_18

    :cond_1e
    move v7, v10

    goto :goto_17

    :cond_1f
    :goto_19
    add-int/lit8 v8, v7, 0x1

    .line 216
    invoke-virtual {v0, v7}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v10

    long-to-int v7, v10

    and-int v10, v7, v5

    if-eqz v10, :cond_26

    and-int v11, v7, v6

    :goto_1a
    add-int/lit8 v10, v9, 0x1

    .line 222
    invoke-virtual {v1, v9}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v14

    long-to-int v9, v14

    and-int v12, v9, v5

    if-eqz v12, :cond_25

    and-int/2addr v9, v6

    move/from16 v27, v10

    move v10, v8

    move v8, v9

    move/from16 v9, v27

    :goto_1b
    if-eq v11, v8, :cond_23

    const/16 v12, 0x100

    and-int/lit16 v0, v3, 0x100

    if-nez v0, :cond_21

    if-ge v11, v8, :cond_20

    const/16 v18, -0x1

    goto :goto_1c

    :cond_20
    const/16 v18, 0x1

    :goto_1c
    return v18

    :cond_21
    if-ge v11, v8, :cond_22

    const/16 v18, 0x1

    goto :goto_1d

    :cond_22
    const/16 v18, -0x1

    :goto_1d
    return v18

    :cond_23
    const/16 v12, 0x100

    ushr-int/lit8 v7, v7, 0x10

    if-ne v7, v12, :cond_24

    goto :goto_1e

    :cond_24
    move v7, v10

    goto :goto_16

    :cond_25
    move v9, v10

    goto :goto_1a

    :cond_26
    move v7, v8

    goto :goto_19

    .line 242
    :cond_27
    :goto_1e
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v4

    const/4 v7, 0x1

    if-gt v4, v7, :cond_28

    const/4 v4, 0x0

    return v4

    .line 246
    :cond_28
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1f
    add-int/lit8 v11, v8, 0x1

    .line 254
    invoke-virtual {v0, v8}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v7

    long-to-int v8, v7

    or-int/2addr v9, v8

    and-int v7, v8, v4

    if-eqz v7, :cond_3b

    :goto_20
    add-int/lit8 v12, v10, 0x1

    .line 262
    invoke-virtual {v1, v10}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v5

    long-to-int v6, v5

    or-int/2addr v9, v6

    and-int v5, v6, v4

    if-eqz v5, :cond_3a

    if-eq v7, v5, :cond_2e

    .line 269
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x100

    const/high16 v14, -0x10000

    if-le v7, v0, :cond_2a

    and-int v1, v8, v14

    if-eqz v1, :cond_29

    const v15, 0xc000

    xor-int/2addr v7, v15

    goto :goto_21

    :cond_29
    const v15, 0xc000

    add-int/lit16 v7, v7, 0x4000

    goto :goto_21

    :cond_2a
    const v15, 0xc000

    :goto_21
    if-le v5, v0, :cond_2c

    and-int v0, v6, v14

    if-eqz v0, :cond_2b

    xor-int/2addr v5, v15

    goto :goto_22

    :cond_2b
    add-int/lit16 v5, v5, 0x4000

    :cond_2c
    :goto_22
    if-ge v7, v5, :cond_2d

    const/16 v18, -0x1

    goto :goto_23

    :cond_2d
    const/16 v18, 0x1

    :goto_23
    return v18

    :cond_2e
    const/16 v5, 0x100

    const/high16 v14, -0x10000

    const v15, 0xc000

    if-ne v7, v5, :cond_39

    .line 296
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2f

    const/4 v3, 0x0

    return v3

    :cond_2f
    const/4 v3, 0x0

    if-nez v13, :cond_30

    and-int/lit16 v4, v9, 0xc0

    if-nez v4, :cond_30

    return v3

    :cond_30
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    add-int/lit8 v5, v3, 0x1

    .line 311
    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    and-long v10, v6, v8

    const-wide/16 v12, 0x100

    cmp-long v3, v10, v12

    if-gtz v3, :cond_31

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    goto :goto_25

    :cond_31
    const-wide v6, 0xffffff3fL

    or-long/2addr v6, v10

    :goto_25
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-eqz v3, :cond_38

    :goto_26
    add-int/lit8 v3, v4, 0x1

    .line 325
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v10

    and-long v14, v10, v8

    cmp-long v4, v14, v12

    if-gtz v4, :cond_32

    const/16 v16, 0x20

    ushr-long v10, v10, v16

    goto :goto_27

    :cond_32
    const/16 v16, 0x20

    const-wide v10, 0xffffff3fL

    or-long/2addr v10, v14

    :goto_27
    const-wide/16 v22, 0x0

    cmp-long v4, v10, v22

    if-eqz v4, :cond_37

    cmp-long v4, v6, v10

    if-eqz v4, :cond_35

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 340
    invoke-virtual {v2, v6, v7}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v6

    .line 341
    invoke-virtual {v2, v10, v11}, Lcom/ibm/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v10

    :cond_33
    cmp-long v0, v6, v10

    if-gez v0, :cond_34

    const/16 v18, -0x1

    goto :goto_28

    :cond_34
    const/16 v18, 0x1

    :goto_28
    return v18

    :cond_35
    const-wide/16 v24, 0x1

    cmp-long v4, v6, v24

    if-nez v4, :cond_36

    const/16 v21, 0x0

    return v21

    :cond_36
    const/16 v21, 0x0

    move v4, v3

    goto :goto_29

    :cond_37
    const/16 v21, 0x0

    const-wide/16 v24, 0x1

    move v4, v3

    goto :goto_26

    :cond_38
    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x1

    :goto_29
    move v3, v5

    goto :goto_24

    :cond_39
    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x1

    move v8, v11

    move v10, v12

    const/high16 v5, -0x10000

    const v6, 0xc000

    goto :goto_2a

    :cond_3a
    const/16 v5, 0x100

    const/high16 v14, -0x10000

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x1

    move v10, v12

    const/high16 v5, -0x10000

    const v6, 0xc000

    goto/16 :goto_20

    :cond_3b
    const/16 v5, 0x100

    const/high16 v14, -0x10000

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x1

    move v8, v11

    const/high16 v5, -0x10000

    :goto_2a
    const/4 v7, 0x1

    goto/16 :goto_1f

    :cond_3c
    const/16 v21, 0x0

    const-wide/16 v24, 0x1

    move v11, v13

    move-wide/from16 v5, v24

    goto/16 :goto_1

    :cond_3d
    const/16 v21, 0x0

    const-wide/16 v24, 0x1

    move-wide/from16 v5, v24

    goto/16 :goto_4

    :cond_3e
    const/16 v21, 0x0

    move v11, v13

    goto/16 :goto_1
.end method
