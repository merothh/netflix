.class public Lcom/ibm/icu/impl/number/AffixPatternUtils;
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsType(Ljava/lang/CharSequence;I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 300
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 302
    :cond_1
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 304
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 188
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x27

    if-ge v2, v4, :cond_5

    .line 189
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v7, 0x25

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_3

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_3

    const/16 v7, 0xa4

    if-eq v4, v7, :cond_3

    const/16 v7, 0x2030

    if-eq v4, v7, :cond_3

    if-ne v3, v5, :cond_1

    .line 212
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_1

    .line 216
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, "\'\'"

    .line 193
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 202
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 220
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_5
    if-ne v3, v5, :cond_6

    .line 224
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method static getCodePoint(J)I
    .locals 1

    const/16 v0, 0x28

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static getOffset(J)I
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static getState(J)I
    .locals 2

    const/16 v0, 0x24

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static getType(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static getTypeOrCp(J)I
    .locals 1

    .line 521
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getType(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getCodePoint(J)I

    move-result p0

    goto :goto_0

    :cond_0
    neg-int p0, v0

    :goto_0
    return p0
.end method

.method public static hasCurrencySymbols(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 318
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 320
    :cond_1
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 322
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v3

    const/4 v4, -0x5

    if-eq v3, v4, :cond_2

    const/4 v4, -0x6

    if-eq v3, v4, :cond_2

    const/4 v4, -0x7

    if-eq v3, v4, :cond_2

    const/16 v4, -0xf

    if-ne v3, v4, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static hasNext(JLjava/lang/CharSequence;)Z
    .locals 4

    .line 495
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getState(J)I

    move-result v0

    .line 496
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getOffset(J)I

    move-result p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    .line 499
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne p0, p1, :cond_0

    .line 500
    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v3, 0x27

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    return v2

    .line 505
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static makeTag(IIII)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    int-to-long p0, p1

    neg-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    int-to-long v0, p2

    const/16 p2, 0x24

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    const/16 v0, 0x28

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static nextToken(JLjava/lang/CharSequence;)J
    .locals 10

    .line 366
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getOffset(J)I

    move-result v0

    .line 367
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getState(J)I

    move-result p0

    .line 368
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v1, -0xf

    const/4 v2, -0x7

    const/4 v3, -0x6

    const/4 v4, -0x5

    const/4 v5, 0x0

    if-ge v0, p1, :cond_d

    .line 369
    invoke-static {p2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 370
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x27

    const/16 v9, 0xa4

    packed-switch p0, :pswitch_data_0

    .line 456
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    if-ne p1, v9, :cond_0

    goto/16 :goto_1

    .line 453
    :cond_0
    invoke-static {v0, v1, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_1
    if-ne p1, v9, :cond_1

    const/4 p0, 0x7

    goto/16 :goto_1

    .line 445
    :cond_1
    invoke-static {v0, v2, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_2
    if-ne p1, v9, :cond_2

    const/4 p0, 0x6

    goto :goto_1

    .line 436
    :cond_2
    invoke-static {v0, v3, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_3
    if-ne p1, v9, :cond_3

    const/4 p0, 0x5

    goto :goto_1

    .line 427
    :cond_3
    invoke-static {v0, v4, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_4
    if-ne p1, v8, :cond_4

    add-int/2addr v0, v6

    .line 414
    invoke-static {v0, v5, v7, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_4
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_5
    if-ne p1, v8, :cond_5

    const/4 p0, 0x3

    goto :goto_1

    :cond_5
    add-int/2addr v0, v6

    .line 410
    invoke-static {v0, v5, v7, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_6
    if-ne p1, v8, :cond_6

    add-int/2addr v0, v6

    .line 399
    invoke-static {v0, v5, v5, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_6
    add-int/2addr v0, v6

    .line 401
    invoke-static {v0, v5, v7, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_7
    const/16 p0, 0x25

    if-eq p1, p0, :cond_c

    if-eq p1, v8, :cond_b

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_a

    const/16 p0, 0x2d

    if-eq p1, p0, :cond_9

    if-eq p1, v9, :cond_8

    const/16 p0, 0x2030

    if-eq p1, p0, :cond_7

    add-int/2addr v0, v6

    .line 394
    invoke-static {v0, v5, v5, p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_7
    add-int/2addr v0, v6

    const/4 p0, -0x4

    .line 387
    invoke-static {v0, p0, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_8
    const/4 p0, 0x4

    goto :goto_1

    :cond_9
    add-int/2addr v0, v6

    const/4 p0, -0x1

    .line 381
    invoke-static {v0, p0, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_a
    add-int/2addr v0, v6

    const/4 p0, -0x2

    .line 383
    invoke-static {v0, p0, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_b
    const/4 p0, 0x1

    :goto_1
    add-int/2addr v0, v6

    goto/16 :goto_0

    :cond_c
    add-int/2addr v0, v6

    const/4 p0, -0x3

    .line 385
    invoke-static {v0, p0, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_d
    const-wide/16 v6, -0x1

    packed-switch p0, :pswitch_data_1

    .line 481
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 479
    :pswitch_8
    invoke-static {v0, v1, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 477
    :pswitch_9
    invoke-static {v0, v2, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 475
    :pswitch_a
    invoke-static {v0, v3, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 473
    :pswitch_b
    invoke-static {v0, v4, v5, v5}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_c
    return-wide v6

    .line 467
    :pswitch_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unterminated quote in pattern affix: \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_e
    return-wide v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    .line 342
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 345
    :cond_1
    :goto_0
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    invoke-static {v1, v2, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 347
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 348
    invoke-static {v1, v2}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getOffset(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 349
    aput-char p2, v0, v3

    goto :goto_0

    .line 352
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 253
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p5, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p5

    :cond_1
    const-wide/16 v0, 0x0

    .line 256
    :goto_0
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    .line 258
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->getTypeOrCp(J)I

    move-result v2

    const/16 v3, -0xf

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x0

    .line 285
    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->appendCodePoint(ILcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 261
    :pswitch_0
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, p5, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 270
    :pswitch_3
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 273
    :pswitch_4
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, p2, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 276
    :pswitch_5
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, p3, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 279
    :pswitch_6
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p6, p4, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    .line 282
    :cond_2
    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v3, "\ufffd"

    invoke-virtual {p6, v3, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static unescapedLength(Ljava/lang/CharSequence;)I
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 112
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v1, v4, :cond_7

    .line 113
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v7, 0x3

    const/16 v8, 0x27

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v7, :cond_1

    if-ne v4, v8, :cond_6

    goto :goto_1

    .line 156
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    if-ne v4, v8, :cond_6

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    if-ne v4, v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    if-ne v4, v8, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 159
    :goto_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_7
    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_8

    return v3

    .line 165
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unterminated quote: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
