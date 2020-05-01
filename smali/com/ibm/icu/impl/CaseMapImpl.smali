.class public final Lcom/ibm/icu/impl/CaseMapImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;,
        Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    .locals 0

    .line 12
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    return-void
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)I
    .locals 2

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    .line 144
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0xd7c0

    shr-int/lit8 v1, p1, 0xa

    add-int/2addr v1, v0

    int-to-char v0, v1

    .line 147
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const v0, 0xdc00

    and-int/lit16 p1, p1, 0x3ff

    add-int/2addr p1, v0

    int-to-char p1, p1

    .line 148
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p0, 0x2

    return p0
.end method

.method private static appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    .locals 0

    if-gez p0, :cond_1

    if-eqz p4, :cond_0

    .line 163
    invoke-virtual {p4, p2}, Lcom/ibm/icu/text/Edits;->addUnchanged(I)V

    and-int/lit16 p2, p3, 0x4000

    if-eqz p2, :cond_0

    return-void

    :cond_0
    not-int p0, p0

    .line 168
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    goto :goto_0

    :cond_1
    const/16 p3, 0x1f

    if-gt p0, p3, :cond_2

    if-eqz p4, :cond_3

    .line 172
    invoke-virtual {p4, p2, p0}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {p1, p0}, Lcom/ibm/icu/impl/CaseMapImpl;->appendCodePoint(Ljava/lang/Appendable;I)I

    move-result p0

    if-eqz p4, :cond_3

    .line 178
    invoke-virtual {p4, p2, p0}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V
    .locals 0

    if-lez p2, :cond_1

    if-eqz p5, :cond_0

    .line 187
    invoke-virtual {p5, p2}, Lcom/ibm/icu/text/Edits;->addUnchanged(I)V

    and-int/lit16 p4, p4, 0x4000

    if-eqz p4, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p1

    .line 192
    invoke-interface {p3, p0, p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    :cond_1
    return-void
.end method

.method public static fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 5
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

    if-eqz p3, :cond_0

    .line 354
    :try_start_0
    invoke-virtual {p3}, Lcom/ibm/icu/text/Edits;->reset()V

    .line 356
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 358
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 359
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 361
    sget-object v4, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v4, v2, p2, p0}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v2

    .line 362
    invoke-static {v2, p2, v3, p0, p3}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object p2

    :catch_0
    move-exception p0

    .line 366
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static internalToLower(IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    .locals 2

    .line 199
    :goto_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v0

    if-ltz v0, :cond_0

    .line 200
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v1, v0, p2, p3, p0}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    .line 201
    invoke-virtual {p2}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v1

    invoke-static {v0, p3, v1, p1, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 209
    :try_start_0
    invoke-virtual {p4}, Lcom/ibm/icu/text/Edits;->reset()V

    .line 211
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v0, p2}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {p0, p1, v0, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->internalToLower(IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 215
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Lcom/ibm/icu/text/BreakIterator;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    if-eqz v10, :cond_0

    .line 245
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/ibm/icu/text/Edits;->reset()V

    .line 249
    :cond_0
    new-instance v11, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v11, v8}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 250
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v14, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v12, :cond_d

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/BreakIterator;->first()I

    move-result v1

    const/4 v15, 0x0

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/text/BreakIterator;->next()I

    move-result v3

    move v15, v1

    move v1, v3

    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-le v1, v12, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v12

    :goto_3
    if-ge v2, v6, :cond_b

    .line 284
    invoke-virtual {v11, v6}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->setLimit(I)V

    .line 285
    invoke-virtual {v11}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    and-int/lit16 v3, v7, 0x200

    if-nez v3, :cond_5

    .line 286
    sget-object v3, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 287
    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 289
    :goto_4
    invoke-virtual {v11}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result v5

    if-ltz v5, :cond_4

    sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 290
    invoke-virtual {v1, v5}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    .line 293
    :cond_4
    invoke-virtual {v11}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPStart()I

    move-result v16

    sub-int v3, v16, v2

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move/from16 v17, v5

    move/from16 v5, p1

    move v13, v6

    move-object/from16 v6, p5

    .line 294
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    move/from16 v2, v16

    move/from16 v1, v17

    goto :goto_5

    :cond_5
    move v13, v6

    :goto_5
    if-ge v2, v13, :cond_c

    .line 298
    invoke-virtual {v11}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLimit()I

    move-result v16

    .line 300
    sget-object v3, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v3, v1, v11, v9, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v1

    .line 301
    invoke-virtual {v11}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v3

    invoke-static {v1, v9, v3, v7, v10}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v13, :cond_9

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 305
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x69

    if-eq v1, v2, :cond_6

    const/16 v2, 0x49

    if-ne v1, v2, :cond_9

    .line 307
    :cond_6
    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x6a

    const/16 v4, 0x4a

    if-ne v1, v2, :cond_8

    .line 309
    invoke-interface {v9, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    if-eqz v10, :cond_7

    .line 311
    invoke-virtual {v10, v14, v14}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    .line 313
    :cond_7
    invoke-virtual {v11}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_8
    if-ne v1, v4, :cond_9

    const/4 v4, 0x1

    move-object/from16 v1, p3

    move v2, v3

    move v3, v4

    move-object/from16 v4, p4

    move/from16 v5, p1

    move-object/from16 v6, p5

    .line 319
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 320
    invoke-virtual {v11}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    goto :goto_6

    :cond_9
    :goto_7
    move/from16 v2, v16

    if-ge v2, v13, :cond_c

    and-int/lit16 v1, v7, 0x100

    if-nez v1, :cond_a

    .line 332
    invoke-static {v0, v7, v11, v9, v10}, Lcom/ibm/icu/impl/CaseMapImpl;->internalToLower(IILcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)V

    goto :goto_8

    :cond_a
    sub-int v3, v13, v2

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move/from16 v5, p1

    move-object/from16 v6, p5

    .line 335
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->appendUnchanged(Ljava/lang/CharSequence;IILjava/lang/Appendable;ILcom/ibm/icu/text/Edits;)V

    .line 336
    invoke-virtual {v11}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->moveToLimit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_b
    move v13, v6

    :cond_c
    :goto_8
    move v2, v13

    move v1, v15

    goto/16 :goto_0

    :cond_d
    return-object v9

    :catch_0
    move-exception v0

    .line 346
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toUpper(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(II",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p4}, Lcom/ibm/icu/text/Edits;->reset()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 226
    invoke-static {p1, p2, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl$GreekUpper;->access$000(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    .line 228
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;

    invoke-direct {v0, p2}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->nextCaseMapCP()I

    move-result p2

    if-ltz p2, :cond_2

    .line 231
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v1, p2, v0, p3, p0}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p2

    .line 232
    invoke-virtual {v0}, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->getCPLength()I

    move-result v1

    invoke-static {p2, p3, v1, p1, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->appendResult(ILjava/lang/Appendable;IILcom/ibm/icu/text/Edits;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-object p3

    .line 236
    :goto_2
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
