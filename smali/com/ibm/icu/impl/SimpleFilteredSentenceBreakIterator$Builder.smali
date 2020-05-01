.class public Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;
.super Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private filterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 302
    invoke-direct {p0}, Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    .line 273
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 4

    .line 284
    invoke-direct {p0}, Lcom/ibm/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    .line 273
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    .line 285
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string v1, "com/ibm/icu/impl/data/icudt59b/brkitr"

    invoke-static {v1, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    const-string v0, "exceptions/SentenceBreak"

    .line 288
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 292
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 293
    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build(Lcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 325
    iget-object v2, v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 330
    :cond_0
    new-instance v2, Lcom/ibm/icu/util/CharsTrieBuilder;

    invoke-direct {v2}, Lcom/ibm/icu/util/CharsTrieBuilder;-><init>()V

    .line 331
    new-instance v3, Lcom/ibm/icu/util/CharsTrieBuilder;

    invoke-direct {v3}, Lcom/ibm/icu/util/CharsTrieBuilder;-><init>()V

    .line 336
    iget-object v4, v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 337
    new-array v5, v4, [Ljava/lang/String;

    .line 338
    new-array v6, v4, [I

    .line 344
    iget-object v7, v0, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 345
    aput-object v10, v5, v9

    .line 346
    aput v8, v6, v9

    add-int/2addr v9, v11

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v4, :cond_7

    .line 351
    aget-object v10, v5, v7

    const/16 v12, 0x2e

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v12, -0x1

    if-le v10, v12, :cond_6

    add-int/lit8 v10, v10, 0x1

    .line 352
    aget-object v13, v5, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v10, v13, :cond_6

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_2
    const/4 v15, 0x3

    if-ge v13, v4, :cond_5

    if-ne v13, v7, :cond_2

    goto :goto_3

    .line 359
    :cond_2
    aget-object v12, v5, v7

    aget-object v11, v5, v13

    invoke-virtual {v12, v8, v11, v8, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 360
    aget v11, v6, v13

    if-nez v11, :cond_3

    .line 361
    aput v15, v6, v13

    goto :goto_3

    .line 362
    :cond_3
    aget v11, v6, v13

    const/4 v12, 0x1

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    move v14, v13

    :cond_4
    :goto_3
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x1

    const/4 v12, -0x1

    goto :goto_2

    :cond_5
    const/4 v11, -0x1

    if-ne v14, v11, :cond_6

    .line 368
    aget v11, v6, v7

    if-nez v11, :cond_6

    .line 369
    new-instance v11, Ljava/lang/StringBuilder;

    aget-object v12, v5, v7

    invoke-virtual {v12, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    .line 372
    invoke-virtual {v2, v11, v10}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    add-int/lit8 v9, v9, 0x1

    .line 374
    aput v15, v6, v7

    goto :goto_4

    :cond_6
    const/4 v10, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_5
    if-ge v8, v4, :cond_9

    .line 380
    aget v10, v6, v8

    const/4 v11, 0x2

    if-nez v10, :cond_8

    .line 381
    new-instance v10, Ljava/lang/StringBuilder;

    aget-object v12, v5, v8

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v10

    .line 382
    invoke-virtual {v2, v10, v11}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 390
    :cond_8
    aget-object v10, v5, v8

    invoke-virtual {v3, v10, v11}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    add-int/lit8 v7, v7, 0x1

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    if-lez v9, :cond_a

    .line 396
    sget-object v5, Lcom/ibm/icu/util/StringTrieBuilder$Option;->FAST:Lcom/ibm/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/CharsTrieBuilder;->build(Lcom/ibm/icu/util/StringTrieBuilder$Option;)Lcom/ibm/icu/util/CharsTrie;

    move-result-object v2

    goto :goto_7

    :cond_a
    move-object v2, v4

    :goto_7
    if-lez v7, :cond_b

    .line 400
    sget-object v4, Lcom/ibm/icu/util/StringTrieBuilder$Option;->FAST:Lcom/ibm/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/CharsTrieBuilder;->build(Lcom/ibm/icu/util/StringTrieBuilder$Option;)Lcom/ibm/icu/util/CharsTrie;

    move-result-object v4

    .line 402
    :cond_b
    new-instance v3, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;

    invoke-direct {v3, v1, v4, v2}, Lcom/ibm/icu/impl/SimpleFilteredSentenceBreakIterator;-><init>(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/CharsTrie;Lcom/ibm/icu/util/CharsTrie;)V

    return-object v3
.end method
