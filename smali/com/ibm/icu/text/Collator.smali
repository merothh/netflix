.class public abstract Lcom/ibm/icu/text/Collator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/Collator$ASCII;,
        Lcom/ibm/icu/text/Collator$ServiceShim;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/Collator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final KEYWORDS:[Ljava/lang/String;

.field private static shim:Lcom/ibm/icu/text/Collator$ServiceShim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "collation"

    .line 946
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const-string v0, "collator"

    .line 1482
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/text/Collator;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkNotFrozen()V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/ibm/icu/text/Collator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen Collator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
    .locals 3

    if-nez p0, :cond_0

    .line 826
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 828
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getShim()Lcom/ibm/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Collator$ServiceShim;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object v0

    .line 829
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 830
    instance-of v1, v0, Lcom/ibm/icu/text/RuleBasedCollator;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/text/RuleBasedCollator;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/ibm/icu/text/Collator;->setAttributesFromKeywords(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/text/RuleBasedCollator;)V

    :cond_2
    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 858
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method private static final varargs getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 663
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 664
    aget-object v1, p2, v0

    invoke-static {p1, v1}, Lcom/ibm/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal locale keyword=value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static final getReorderCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "space"

    const-string v1, "punct"

    const-string v2, "symbol"

    const-string v3, "currency"

    const-string v4, "digit"

    .line 672
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, 0x1000

    return p0
.end method

.method private static getShim()Lcom/ibm/icu/text/Collator$ServiceShim;
    .locals 2

    .line 606
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.ibm.icu.text.CollatorServiceShim"

    .line 608
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/Collator$ServiceShim;

    sput-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 619
    sget-boolean v1, Lcom/ibm/icu/text/Collator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    :cond_0
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 614
    throw v0

    .line 626
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/Collator;->shim:Lcom/ibm/icu/text/Collator$ServiceShim;

    return-object v0
.end method

.method private static final getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "yes"

    .line 653
    invoke-static {p1, v0}, Lcom/ibm/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "no"

    .line 656
    invoke-static {p1, v0}, Lcom/ibm/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 659
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal locale keyword=value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setAttributesFromKeywords(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 8

    const-string v0, "colHiraganaQuaternary"

    .line 690
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "variableTop"

    .line 694
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "colStrength"

    .line 699
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "primary"

    const-string v3, "secondary"

    const-string v4, "tertiary"

    const-string v5, "quaternary"

    const-string v6, "identical"

    .line 702
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 704
    :goto_0
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/Collator;->setStrength(I)V

    :cond_1
    const-string v0, "colBackwards"

    .line 706
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale keyword kb/colBackwards only settable for RuleBasedCollator"

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 709
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFrenchCollation(Z)V

    goto :goto_1

    .line 711
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v0, "colCaseLevel"

    .line 715
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    .line 718
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setCaseLevel(Z)V

    goto :goto_2

    .line 720
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const-string v0, "colCaseFirst"

    .line 724
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_8

    const-string v4, "no"

    const-string v5, "lower"

    const-string v6, "upper"

    .line 727
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/ibm/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 729
    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    .line 730
    invoke-virtual {p2, v2}, Lcom/ibm/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    goto :goto_3

    :cond_6
    if-ne v0, v3, :cond_7

    .line 732
    invoke-virtual {p2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    goto :goto_3

    .line 734
    :cond_7
    invoke-virtual {p2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    goto :goto_3

    .line 737
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kf/colCaseFirst only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    const-string v0, "colAlternate"

    .line 741
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    const-string v4, "non-ignorable"

    const-string v5, "shifted"

    .line 744
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-static {v0, v1, v4}, Lcom/ibm/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    .line 744
    :goto_4
    invoke-virtual {p2, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->setAlternateHandlingShifted(Z)V

    goto :goto_5

    .line 747
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword ka/colAlternate only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    const-string v0, "colNormalization"

    .line 751
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 753
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x11

    goto :goto_6

    :cond_d
    const/16 v0, 0x10

    :goto_6
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/Collator;->setDecomposition(I)V

    :cond_e
    const-string v0, "colNumeric"

    .line 756
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_f

    .line 759
    invoke-static {v0, v1}, Lcom/ibm/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setNumericCollation(Z)V

    goto :goto_7

    .line 761
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kn/colNumeric only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    const-string p2, "colReorder"

    .line 765
    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0xb4

    new-array v1, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 771
    :goto_8
    array-length v5, v1

    if-eq v3, v5, :cond_15

    move v5, v4

    .line 776
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_11

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_11

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 777
    :cond_11
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 779
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_12

    const/16 v6, 0x100a

    .line 781
    invoke-static {v6, v4}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v4

    goto :goto_a

    .line 783
    :cond_12
    invoke-static {p2, v4}, Lcom/ibm/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :goto_a
    add-int/lit8 v6, v3, 0x1

    .line 785
    aput v4, v1, v3

    .line 786
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v5, v3, :cond_14

    if-eqz v6, :cond_13

    .line 792
    new-array p2, v6, [I

    .line 793
    invoke-static {v1, v2, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Collator;->setReorderCodes([I)V

    goto :goto_b

    .line 790
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no script codes for colReorder locale keyword"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    add-int/lit8 v4, v5, 0x1

    move v3, v6

    goto :goto_8

    .line 772
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "too many script codes for colReorder locale keyword: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_b
    const-string p2, "kv"

    .line 796
    invoke-virtual {p0, p2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 798
    invoke-static {p2, p0}, Lcom/ibm/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Collator;->setMaxVariable(I)Lcom/ibm/icu/text/Collator;

    :cond_17
    return-void

    .line 696
    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword vt/variableTop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 692
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kh/colHiraganaQuaternary"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 485
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1250
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Collator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1262
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

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

.method public getStrength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 1214
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDecomposition(I)V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator;->checkNotFrozen()V

    return-void
.end method

.method public setMaxVariable(I)Lcom/ibm/icu/text/Collator;
    .locals 1

    .line 1322
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Needs to be implemented by the subclass."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setReorderCodes([I)V
    .locals 1

    .line 457
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Needs to be implemented by the subclass."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrength(I)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator;->checkNotFrozen()V

    return-void
.end method
