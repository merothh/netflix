.class public Lcom/ibm/icu/text/TimeUnitFormat;
.super Lcom/ibm/icu/text/MeasureFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3374a809c751fb09L


# instance fields
.field private format:Lcom/ibm/icu/text/NumberFormat;

.field private transient isReady:Z

.field private locale:Lcom/ibm/icu/util/ULocale;

.field private transient mf:Lcom/ibm/icu/text/MeasureFormat;

.field private transient pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private style:I

.field private transient timeUnitToCountToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/ibm/icu/text/MeasureFormat;-><init>()V

    .line 120
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v1}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    .line 122
    iput v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->style:I

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/ibm/icu/text/MeasureFormat;-><init>()V

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    if-nez p2, :cond_0

    .line 158
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    :goto_0
    invoke-static {p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    .line 160
    iput p2, p0, Lcom/ibm/icu/text/TimeUnitFormat;->style:I

    .line 163
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/TimeUnitFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 164
    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    return-void

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "style should be either FULL_NAME or ABBREVIATED_NAME style"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/text/NumberFormat;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    if-eqz p3, :cond_0

    .line 171
    invoke-virtual {p3}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/TimeUnitFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/TimeUnitFormat;

    :cond_0
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 625
    new-instance v0, Lcom/ibm/icu/text/TimeUnitFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    iget v2, p0, Lcom/ibm/icu/text/TimeUnitFormat;->style:I

    iget-object v3, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeUnitFormat;-><init>(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/text/NumberFormat;)V

    return-object v0
.end method

.method private searchInTree(Ljava/lang/String;ILcom/ibm/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/ibm/icu/util/TimeUnit;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 506
    iget-object v0, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 507
    invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/util/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v13, 0x2

    if-eqz v0, :cond_1

    :try_start_0
    const-string v2, "com/ibm/icu/impl/data/icudt59b/unit"

    .line 511
    invoke-static {v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 513
    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 514
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 515
    invoke-virtual {v2, v11}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 516
    new-instance v3, Lcom/ibm/icu/text/MessageFormat;

    iget-object v4, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v3, v2, v4}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 517
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-nez v2, :cond_0

    new-array v2, v13, [Ljava/lang/Object;

    .line 520
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_0
    aput-object v3, v2, p2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 526
    :catch_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "unitsShort"

    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "units"

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 531
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILcom/ibm/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 532
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 533
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p2

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "other"

    .line 539
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 542
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->SECOND:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_3

    .line 543
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} s"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 544
    :cond_3
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->MINUTE:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_4

    .line 545
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} min"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 546
    :cond_4
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->HOUR:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_5

    .line 547
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} h"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 548
    :cond_5
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->WEEK:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_6

    .line 549
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} w"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 550
    :cond_6
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->DAY:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_7

    .line 551
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} d"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 552
    :cond_7
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->MONTH:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_8

    .line 553
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} m"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_1

    .line 554
    :cond_8
    sget-object v1, Lcom/ibm/icu/util/TimeUnit;->YEAR:Lcom/ibm/icu/util/TimeUnit;

    if-ne v9, v1, :cond_9

    .line 555
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "{0} y"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 557
    :cond_9
    :goto_1
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_a

    new-array v1, v13, [Ljava/lang/Object;

    .line 560
    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_a
    aput-object v0, v1, p2

    goto :goto_2

    :cond_b
    const-string v5, "other"

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    .line 565
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILcom/ibm/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    return-void
.end method

.method private setup()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0

    .line 351
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/TimeUnitFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getNumberInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    .line 361
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const/4 v2, 0x0

    const-string v3, "units/duration"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/ibm/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    .line 363
    iget-object v1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const/4 v2, 0x1

    const-string v3, "unitsShort/duration"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/ibm/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    .line 364
    iput-boolean v2, p0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    return-void
.end method

.method private setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    :try_start_0
    const-string v0, "com/ibm/icu/impl/data/icudt59b/unit"

    .line 450
    iget-object v1, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 453
    new-instance v1, Lcom/ibm/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;

    iget-object v2, v7, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    move-object/from16 v3, p4

    invoke-direct {v1, v8, v9, v3, v2}, Lcom/ibm/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;-><init>(Ljava/util/Map;ILjava/util/Set;Lcom/ibm/icu/util/ULocale;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v10, p1

    .line 455
    :try_start_1
    invoke-virtual {v0, v10, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v10, p1

    .line 476
    :catch_1
    :goto_0
    invoke-static {}, Lcom/ibm/icu/util/TimeUnit;->values()[Lcom/ibm/icu/util/TimeUnit;

    move-result-object v11

    .line 477
    iget-object v0, v7, Lcom/ibm/icu/text/TimeUnitFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v12

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 478
    :goto_1
    array-length v0, v11

    if-ge v13, v0, :cond_4

    .line 481
    aget-object v14, v11, v13

    .line 482
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 485
    invoke-interface {v8, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v15, v0

    .line 487
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 488
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v9

    if-nez v0, :cond_1

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v14

    move-object v4, v5

    move-object v6, v15

    .line 490
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILcom/ibm/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat;->toTimeUnitProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    invoke-super {p0}, Lcom/ibm/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeUnitFormat;

    .line 612
    iget-object v1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/NumberFormat;

    iput-object v1, v0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormat()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeUnitAmount;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeUnitAmount;
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 261
    iget-boolean v2, v0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    if-nez v2, :cond_0

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeUnitFormat;->setup()V

    .line 266
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 273
    iget-object v3, v0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ibm/icu/util/TimeUnit;

    .line 274
    iget-object v14, v0, Lcom/ibm/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 275
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move/from16 v17, v11

    move-object v11, v10

    move v10, v8

    move-object v8, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v13, :cond_5

    .line 278
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Object;

    aget-object v18, v18, v7

    move-object/from16 v6, v18

    check-cast v6, Lcom/ibm/icu/text/MessageFormat;

    .line 279
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 280
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v13, p1

    .line 282
    invoke-virtual {v6, v13, v1}, Lcom/ibm/icu/text/MessageFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v6

    .line 283
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    if-ne v5, v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-ne v5, v2, :cond_1

    goto :goto_4

    .line 288
    :cond_1
    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    array-length v5, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 292
    aget-object v6, v6, v5

    .line 293
    instance-of v5, v6, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 294
    check-cast v6, Ljava/lang/Number;

    goto :goto_3

    .line 300
    :cond_2
    :try_start_0
    iget-object v5, v0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 306
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    sub-int/2addr v5, v2

    if-le v5, v10, :cond_4

    .line 310
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v10, v5

    move/from16 v17, v8

    move-object v11, v12

    move-object/from16 v9, v16

    move-object v8, v6

    :catch_0
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x2

    goto :goto_2

    :cond_5
    move-object/from16 v13, p1

    move-object v7, v8

    move v8, v10

    move-object v10, v11

    move/from16 v11, v17

    const/4 v13, 0x2

    goto :goto_1

    :cond_6
    move-object/from16 v13, p1

    goto/16 :goto_0

    :cond_7
    if-nez v7, :cond_b

    if-eqz v8, :cond_b

    const-string v3, "zero"

    .line 323
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    .line 324
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_8
    const-string v3, "one"

    .line 325
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    .line 326
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_9
    const-string v3, "two"

    .line 327
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x2

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_a
    const/4 v3, 0x3

    .line 332
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b
    :goto_5
    if-nez v8, :cond_c

    .line 336
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v2, 0x0

    .line 337
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v1, 0x0

    return-object v1

    .line 340
    :cond_c
    invoke-virtual {v1, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 341
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 342
    new-instance v1, Lcom/ibm/icu/util/TimeUnitAmount;

    invoke-direct {v1, v7, v10}, Lcom/ibm/icu/util/TimeUnitAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/TimeUnit;)V

    return-object v1
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeUnitAmount;

    move-result-object p1

    return-object p1
.end method

.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/TimeUnitFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    .line 227
    iget-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->locale:Lcom/ibm/icu/util/ULocale;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->isReady:Z

    .line 229
    iget-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getNumberInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    .line 232
    iget-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->withNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    goto :goto_0

    .line 235
    :cond_2
    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    .line 236
    iget-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/TimeUnitFormat;->format:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->withNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeUnitFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    :goto_0
    return-object p0
.end method
