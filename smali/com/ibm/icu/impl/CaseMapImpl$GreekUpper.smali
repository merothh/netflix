.class final Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CaseMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GreekUpper"
.end annotation


# static fields
.field private static final data0370:[C

.field private static final data1F00:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x90

    new-array v0, v0, [C

    .line 393
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->data0370:[C

    const/16 v0, 0x100

    new-array v0, v0, [C

    .line 541
    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->data1F00:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x370s
        0x370s
        0x372s
        0x372s
        0x0s
        0x0s
        0x376s
        0x376s
        0x0s
        0x0s
        0x37as
        0x3fds
        0x3fes
        0x3ffs
        0x0s
        0x37fs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x5391s
        0x0s
        0x5395s
        0x5397s
        0x5399s
        0x0s
        0x539fs
        0x0s
        0x53a5s
        0x53a9s
        -0x2c67s
        0x1391s
        0x392s
        0x393s
        0x394s
        0x1395s
        0x396s
        0x1397s
        0x398s
        0x1399s
        0x39as
        0x39bs
        0x39cs
        0x39ds
        0x39es
        0x139fs
        0x3a0s
        0x3a1s
        0x0s
        0x3a3s
        0x3a4s
        0x13a5s
        0x3a6s
        0x3a7s
        0x3a8s
        0x13a9s
        -0x6c67s
        -0x6c5bs
        0x5391s
        0x5395s
        0x5397s
        0x5399s
        -0x2c5bs
        0x1391s
        0x392s
        0x393s
        0x394s
        0x1395s
        0x396s
        0x1397s
        0x398s
        0x1399s
        0x39as
        0x39bs
        0x39cs
        0x39ds
        0x39es
        0x139fs
        0x3a0s
        0x3a1s
        0x3a3s
        0x3a3s
        0x3a4s
        0x13a5s
        0x3a6s
        0x3a7s
        0x3a8s
        0x13a9s
        -0x6c67s
        -0x6c5bs
        0x539fs
        0x53a5s
        0x53a9s
        0x3cfs
        0x392s
        0x398s
        0x3d2s
        0x43d2s
        -0x7c2es
        0x3a6s
        0x3a0s
        0x3cfs
        0x3d8s
        0x3d8s
        0x3das
        0x3das
        0x3dcs
        0x3dcs
        0x3des
        0x3des
        0x3e0s
        0x3e0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x39as
        0x3a1s
        0x3f9s
        0x37fs
        0x3f4s
        0x1395s
        0x0s
        0x3f7s
        0x3f7s
        0x3f9s
        0x3fas
        0x3fas
        0x3fcs
        0x3fds
        0x3fes
        0x3ffs
    .end array-data

    :array_1
    .array-data 2
        0x1391s
        0x1391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x1391s
        0x1391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x5391s
        0x1395s
        0x1395s
        0x5395s
        0x5395s
        0x5395s
        0x5395s
        0x0s
        0x0s
        0x1395s
        0x1395s
        0x5395s
        0x5395s
        0x5395s
        0x5395s
        0x0s
        0x0s
        0x1397s
        0x1397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x1397s
        0x1397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x5397s
        0x1399s
        0x1399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x1399s
        0x1399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x5399s
        0x139fs
        0x139fs
        0x539fs
        0x539fs
        0x539fs
        0x539fs
        0x0s
        0x0s
        0x139fs
        0x139fs
        0x539fs
        0x539fs
        0x539fs
        0x539fs
        0x0s
        0x0s
        0x13a5s
        0x13a5s
        0x53a5s
        0x53a5s
        0x53a5s
        0x53a5s
        0x53a5s
        0x53a5s
        0x0s
        0x13a5s
        0x0s
        0x53a5s
        0x0s
        0x53a5s
        0x0s
        0x53a5s
        0x13a9s
        0x13a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x13a9s
        0x13a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x53a9s
        0x5391s
        0x5391s
        0x5395s
        0x5395s
        0x5397s
        0x5397s
        0x5399s
        0x5399s
        0x539fs
        0x539fs
        0x53a5s
        0x53a5s
        0x53a9s
        0x53a9s
        0x0s
        0x0s
        0x3391s
        0x3391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x3391s
        0x3391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x7391s
        0x3397s
        0x3397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x3397s
        0x3397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x7397s
        0x33a9s
        0x33a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x33a9s
        0x33a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x73a9s
        0x1391s
        0x1391s
        0x7391s
        0x3391s
        0x7391s
        0x0s
        0x5391s
        0x7391s
        0x1391s
        0x1391s
        0x5391s
        0x5391s
        0x3391s
        0x0s
        0x1399s
        0x0s
        0x0s
        0x0s
        0x7397s
        0x3397s
        0x7397s
        0x0s
        0x5397s
        0x7397s
        0x5395s
        0x5395s
        0x5397s
        0x5397s
        0x3397s
        0x0s
        0x0s
        0x0s
        0x1399s
        0x1399s
        -0x2c67s
        -0x2c67s
        0x0s
        0x0s
        0x5399s
        -0x2c67s
        0x1399s
        0x1399s
        0x5399s
        0x5399s
        0x0s
        0x0s
        0x0s
        0x0s
        0x13a5s
        0x13a5s
        -0x2c5bs
        -0x2c5bs
        0x3a1s
        0x3a1s
        0x53a5s
        -0x2c5bs
        0x13a5s
        0x13a5s
        0x53a5s
        0x53a5s
        0x3a1s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x73a9s
        0x33a9s
        0x73a9s
        0x0s
        0x53a9s
        0x73a9s
        0x539fs
        0x539fs
        0x53a9s
        0x53a9s
        0x33a9s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method static synthetic access$000(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 0

    .line 370
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->toUpper(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method private static final getDiacriticData(I)I
    .locals 1

    const/16 v0, 0x306

    if-eq p0, v0, :cond_2

    const/16 v0, 0x308

    if-eq p0, v0, :cond_1

    const/16 v0, 0x311

    if-eq p0, v0, :cond_0

    const/16 v0, 0x313

    if-eq p0, v0, :cond_2

    const/16 v0, 0x314

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x2000

    return p0

    :pswitch_1
    const p0, 0x14000

    return p0

    :cond_0
    :pswitch_2
    const/16 p0, 0x4000

    return p0

    :cond_1
    const/high16 p0, 0x10000

    return p0

    :cond_2
    :pswitch_3
    const/high16 p0, 0x20000

    return p0

    :pswitch_data_0
    .packed-switch 0x300
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x342
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final getLetterData(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x370

    if-lt p0, v1, :cond_3

    const/16 v2, 0x2126

    if-lt v2, p0, :cond_3

    const/16 v3, 0x1f00

    const/16 v4, 0x3ff

    if-ge v4, p0, :cond_0

    if-ge p0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-gt p0, v4, :cond_1

    .line 808
    sget-object v0, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->data0370:[C

    sub-int/2addr p0, v1

    aget-char p0, v0, p0

    return p0

    :cond_1
    const/16 v1, 0x1fff

    if-gt p0, v1, :cond_2

    .line 810
    sget-object v0, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->data1F00:[C

    sub-int/2addr p0, v3

    aget-char p0, v0, p0

    return p0

    :cond_2
    if-ne p0, v2, :cond_3

    const/16 p0, 0x13a9

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static isFollowedByCasedLetter(Ljava/lang/CharSequence;I)Z
    .locals 3

    .line 850
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    .line 851
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 852
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static toUpper(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(I",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 876
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v5, v7, :cond_1c

    .line 877
    invoke-static {v1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 878
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v5

    .line 880
    sget-object v9, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v9, v7}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v9

    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_0

    and-int/lit8 v9, v6, 0x1

    or-int/2addr v9, v4

    goto :goto_1

    :cond_0
    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 888
    :goto_1
    invoke-static {v7}, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->getLetterData(I)I

    move-result v10

    if-lez v10, :cond_1a

    and-int/lit16 v7, v10, 0x3ff

    and-int/lit16 v12, v10, 0x1000

    const/16 v13, 0x3a5

    const v14, 0x8000

    const/16 v15, 0x399

    if-eqz v12, :cond_3

    and-int/lit8 v12, v6, 0x2

    if-eqz v12, :cond_3

    if-eq v7, v15, :cond_2

    if-ne v7, v13, :cond_3

    :cond_2
    or-int/2addr v10, v14

    :cond_3
    and-int/lit16 v12, v10, 0x2000

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 906
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v8, v4, :cond_6

    .line 907
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->getDiacriticData(I)I

    move-result v4

    if-eqz v4, :cond_6

    or-int/2addr v10, v4

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_5

    add-int/lit8 v12, v12, 0x1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const v4, 0xd000

    and-int/2addr v4, v10

    const/16 v11, 0x5000

    if-ne v4, v11, :cond_7

    or-int/lit8 v9, v9, 0x2

    :cond_7
    const/16 v4, 0x397

    if-ne v7, v4, :cond_9

    and-int/lit16 v4, v10, 0x4000

    if-eqz v4, :cond_9

    if-nez v12, :cond_9

    and-int/lit8 v4, v6, 0x1

    if-nez v4, :cond_9

    .line 927
    invoke-static {v1, v8}, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->isFollowedByCasedLetter(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_9

    if-ne v5, v8, :cond_8

    const/16 v7, 0x389

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    and-int v4, v10, v14

    if-eqz v4, :cond_b

    const v4, -0x18001

    if-ne v7, v15, :cond_a

    const/16 v7, 0x3aa

    :goto_3
    and-int/2addr v10, v4

    goto :goto_4

    :cond_a
    if-ne v7, v13, :cond_b

    const/16 v7, 0x3ab

    goto :goto_3

    :cond_b
    :goto_4
    const/4 v4, 0x0

    :goto_5
    const/16 v6, 0x301

    const/16 v11, 0x308

    const v13, 0x18000

    if-nez v3, :cond_c

    :goto_6
    const/16 v16, 0x1

    goto :goto_e

    .line 951
    :cond_c
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v7, :cond_e

    if-lez v12, :cond_d

    goto :goto_7

    :cond_d
    const/4 v14, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v14, 0x1

    :goto_8
    add-int/lit8 v15, v5, 0x1

    and-int v17, v10, v13

    if-eqz v17, :cond_11

    if-ge v15, v8, :cond_10

    .line 954
    invoke-interface {v1, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-eq v13, v11, :cond_f

    goto :goto_9

    :cond_f
    const/4 v13, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v13, 0x1

    :goto_a
    or-int/2addr v14, v13

    add-int/lit8 v15, v15, 0x1

    :cond_11
    if-eqz v4, :cond_14

    if-ge v15, v8, :cond_13

    .line 958
    invoke-interface {v1, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-eq v13, v6, :cond_12

    goto :goto_b

    :cond_12
    const/4 v13, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v13, 0x1

    :goto_c
    or-int/2addr v14, v13

    add-int/lit8 v15, v15, 0x1

    :cond_14
    sub-int v13, v8, v5

    sub-int/2addr v15, v5

    add-int/2addr v15, v12

    if-eq v13, v15, :cond_15

    const/4 v5, 0x1

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    :goto_d
    or-int/2addr v5, v14

    if-eqz v5, :cond_16

    .line 966
    invoke-virtual {v3, v13, v15}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    move/from16 v16, v5

    goto :goto_e

    .line 970
    :cond_16
    invoke-virtual {v3, v13}, Lcom/ibm/icu/text/Edits;->addUnchanged(I)V

    and-int/lit16 v5, v0, 0x4000

    if-nez v5, :cond_17

    goto :goto_6

    :cond_17
    const/16 v16, 0x0

    :goto_e
    if-eqz v16, :cond_1b

    int-to-char v5, v7

    .line 978
    invoke-interface {v2, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const v5, 0x18000

    and-int/2addr v5, v10

    if-eqz v5, :cond_18

    .line 980
    invoke-interface {v2, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_18
    if-eqz v4, :cond_19

    .line 983
    invoke-interface {v2, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_19
    :goto_f
    if-lez v12, :cond_1b

    const/16 v4, 0x399

    .line 986
    invoke-interface {v2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v12, v12, -0x1

    goto :goto_f

    .line 991
    :cond_1a
    sget-object v4, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    const/4 v6, 0x0

    const/4 v10, 0x4

    invoke-virtual {v4, v7, v6, v2, v10}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v4

    sub-int v5, v8, v5

    .line 992
    invoke-static {v4, v2, v5, v0, v3}, Lcom/ibm/icu/impl/CaseMapImpl;->access$100(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    :cond_1b
    move v5, v8

    move v6, v9

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1c
    return-object v2
.end method
