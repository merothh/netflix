.class public Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;
.super Lcom/ibm/icu/text/CurrencyMetaInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;,
        Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;,
        Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    }
.end annotation


# instance fields
.field private digitInfo:Lcom/ibm/icu/impl/ICUResourceBundle;

.field private regionInfo:Lcom/ibm/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;-><init>()V

    .line 28
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt59b/curr"

    const-string v2, "supplementalData"

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "CurrencyMap"

    .line 31
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "CurrencyMeta"

    .line 32
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Lcom/ibm/icu/impl/ICUResourceBundle;

    return-void
.end method

.method private collect(Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector<",
            "TT;>;",
            "Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 77
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p2

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;->collects()I

    move-result v0

    .line 80
    iget-object v1, p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 83
    :cond_1
    iget-object v1, p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 86
    :cond_2
    iget-wide v1, p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    iget-wide v1, p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 89
    :cond_4
    iget-boolean v1, p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    if-eqz v0, :cond_7

    .line 94
    iget-object v1, p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 95
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Lcom/ibm/icu/impl/ICUResourceBundle;

    iget-object v2, p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 97
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;ILcom/ibm/icu/impl/ICUResourceBundle;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 101
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->at(I)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;ILcom/ibm/icu/impl/ICUResourceBundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_7
    :goto_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;->getList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private collectRegion(Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;ILcom/ibm/icu/impl/ICUResourceBundle;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector<",
            "TT;>;",
            "Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            "I",
            "Lcom/ibm/icu/impl/ICUResourceBundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 112
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    if-ne v2, v13, :cond_0

    .line 114
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v9}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    return-void

    :cond_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 118
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    if-ge v15, v3, :cond_9

    move-object/from16 v11, p4

    .line 119
    invoke-virtual {v11, v15}, Lcom/ibm/icu/impl/ICUResourceBundle;->at(I)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x0

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_2

    const-string v4, "id"

    .line 132
    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 134
    iget-object v5, v1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    move-object v5, v4

    and-int/lit8 v4, v2, 0x4

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v8, -0x8000000000000000L

    if-eqz v4, :cond_4

    const-string v4, "from"

    .line 140
    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v4

    invoke-direct {v0, v4, v8, v9, v14}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->getDate(Lcom/ibm/icu/impl/ICUResourceBundle;JZ)J

    move-result-wide v8

    const-string v4, "to"

    .line 141
    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v4

    invoke-direct {v0, v4, v6, v7, v13}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->getDate(Lcom/ibm/icu/impl/ICUResourceBundle;JZ)J

    move-result-wide v6

    .line 146
    iget-wide v13, v1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    cmp-long v4, v13, v6

    if-lez v4, :cond_3

    goto :goto_4

    .line 149
    :cond_3
    iget-wide v13, v1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    cmp-long v4, v13, v8

    if-gez v4, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v16, v6

    move-wide v6, v8

    move-wide/from16 v8, v16

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_8

    const-string v4, "tender"

    .line 154
    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 155
    invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    .line 156
    :goto_2
    iget-boolean v4, v1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v13, v3

    goto :goto_3

    :cond_8
    const/4 v13, 0x1

    :goto_3
    move-object/from16 v3, p1

    move-object v4, v12

    move v10, v15

    move v11, v13

    .line 162
    invoke-interface/range {v3 .. v11}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private getDate(Lcom/ibm/icu/impl/ICUResourceBundle;JZ)J
    .locals 4

    if-nez p1, :cond_0

    return-wide p2

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object p1

    const/4 p2, 0x0

    .line 172
    aget p2, p1, p2

    int-to-long p2, p2

    const/16 p4, 0x20

    shl-long/2addr p2, p4

    const/4 p4, 0x1

    aget p1, p1, p4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p1, p2, v0

    return-wide p1
.end method


# virtual methods
.method public currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;-><init>(Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$1;)V

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->collect(Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public currencyDigits(Ljava/lang/String;Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object p1

    .line 62
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    if-ne p2, v0, :cond_1

    .line 63
    new-instance p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x3

    aget p1, p1, v1

    invoke-direct {p2, v0, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object p2

    .line 64
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 65
    new-instance p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    aget v0, p1, v2

    aget p1, p1, v1

    invoke-direct {p2, v0, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object p2

    .line 67
    :cond_2
    new-instance p2, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    aget v0, p1, v2

    aget p1, p1, v1

    invoke-direct {p2, v0, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object p2
.end method
