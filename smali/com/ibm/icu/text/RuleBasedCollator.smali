.class public final Lcom/ibm/icu/text/RuleBasedCollator;
.super Lcom/ibm/icu/text/Collator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;,
        Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;,
        Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;,
        Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private actualLocaleIsSameAsValid:Z

.field private collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

.field data:Lcom/ibm/icu/impl/coll/CollationData;

.field private frozenLock:Ljava/util/concurrent/locks/Lock;

.field settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/coll/SharedObject$Reference<",
            "Lcom/ibm/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

.field private validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/coll/CollationTailoring;Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 1725
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator;-><init>()V

    .line 1726
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1727
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->clone()Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 1728
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    .line 1729
    iput-object p2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    const/4 p1, 0x0

    .line 1730
    iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator;-><init>()V

    if-eqz p1, :cond_0

    .line 210
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 211
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->internalBuildTailoring(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Collation rules can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private adoptTailoring(Lcom/ibm/icu/impl/coll/CollationTailoring;)V
    .locals 1

    .line 1735
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1736
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->clone()Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 1737
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    .line 1738
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->validLocale:Lcom/ibm/icu/util/ULocale;

    const/4 p1, 0x0

    .line 1739
    iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    return-void
.end method

.method private checkNotFrozen()V
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen RuleBasedCollator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final compareNFDIter(Lcom/ibm/icu/impl/Normalizer2Impl;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;)I
    .locals 5

    .line 1594
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v0

    .line 1595
    invoke-virtual {p2}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v2, -0x2

    const v3, 0xfffe

    const/4 v4, -0x1

    if-gez v0, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    .line 1606
    :cond_3
    invoke-virtual {p1, p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Lcom/ibm/icu/impl/Normalizer2Impl;I)I

    move-result v0

    :goto_0
    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    const/4 v2, -0x1

    goto :goto_1

    .line 1613
    :cond_5
    invoke-virtual {p2, p0, v1}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Lcom/ibm/icu/impl/Normalizer2Impl;I)I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_6

    return v4

    :cond_6
    if-le v0, v2, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private final getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;
    .locals 3

    .line 1822
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_1

    .line 1825
    new-instance v0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/text/RuleBasedCollator$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    .line 1827
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    return-object v0
.end method

.method private final getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationTailoring;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    return-object v0
.end method

.method private final getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    return-object v0
.end method

.method private final initMaxExpansions()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    iget-object v2, v2, Lcom/ibm/icu/impl/coll/CollationTailoring;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-static {v2}, Lcom/ibm/icu/text/CollationElementIterator;->computeMaxExpansions(Lcom/ibm/icu/impl/coll/CollationData;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/ibm/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    .line 260
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final internalBuildTailoring(Ljava/lang/String;)V
    .locals 7

    .line 220
    invoke-static {}, Lcom/ibm/icu/impl/coll/CollationRoot;->getRoot()Lcom/ibm/icu/impl/coll/CollationTailoring;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    const-string v2, "com.ibm.icu.impl.coll.CollationBuilder"

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 228
    const-class v4, Lcom/ibm/icu/impl/coll/CollationTailoring;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "parseAndBuild"

    new-array v4, v2, [Ljava/lang/Class;

    .line 230
    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 231
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/coll/CollationTailoring;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 235
    iput-object v0, p1, Lcom/ibm/icu/impl/coll/CollationTailoring;->actualLocale:Lcom/ibm/icu/util/ULocale;

    .line 236
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->adoptTailoring(Lcom/ibm/icu/impl/coll/CollationTailoring;)V

    return-void

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    throw p1
.end method

.method private final releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 0

    .line 1831
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1832
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method

.method private setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->getOptions(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/impl/coll/CollationSettings;[C)I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->cloneAsThawed()Lcom/ibm/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/RuleBasedCollator;
    .locals 3

    const/4 v0, 0x0

    .line 337
    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/RuleBasedCollator;

    .line 341
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->clone()Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    move-result-object v2

    iput-object v2, v1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 342
    iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->collationBuffer:Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    .line 343
    iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1483
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1636
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1637
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    return v0

    .line 1639
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1640
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1646
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 1647
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v2

    if-lez v1, :cond_6

    .line 1649
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1650
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/ibm/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1651
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1652
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/ibm/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_6

    .line 1654
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 1655
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/ibm/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 1667
    :cond_6
    iget v6, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    const/4 v3, -0x2

    if-ltz v6, :cond_9

    .line 1669
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x17f

    if-eq v1, v4, :cond_7

    .line 1670
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_9

    .line 1671
    :cond_7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_8

    .line 1672
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_9

    .line 1673
    :cond_8
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v4, v4, Lcom/ibm/icu/impl/coll/CollationData;->fastLatinTable:[C

    iget-object v5, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    move-object v7, p1

    move-object v8, p2

    move v9, v1

    invoke-static/range {v4 .. v9}, Lcom/ibm/icu/impl/coll/CollationFastLatin;->compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    goto :goto_3

    :cond_9
    const/4 v4, -0x2

    :goto_3
    const/4 v5, 0x0

    if-ne v4, v3, :cond_b

    .line 1684
    :try_start_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1685
    :try_start_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1686
    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v4, v2, p1, v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1687
    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v4, v2, p2, v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1688
    iget-object v2, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-static {v2, v4, v0}, Lcom/ibm/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationSettings;)I

    move-result v2

    goto :goto_4

    .line 1691
    :cond_a
    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v4, v2, p1, v1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1692
    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v4, v2, p2, v1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1693
    iget-object v2, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-static {v2, v4, v0}, Lcom/ibm/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationIterator;Lcom/ibm/icu/impl/coll/CollationSettings;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    move v4, v2

    .line 1697
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v3, v5

    :goto_5
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw p1

    :cond_b
    :goto_6
    if-nez v4, :cond_e

    .line 1700
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_c

    goto :goto_7

    .line 1706
    :cond_c
    :try_start_2
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationBuffer()Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v5

    .line 1708
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v2, v2, Lcom/ibm/icu/impl/coll/CollationData;->nfcImpl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 1709
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1710
    iget-object v0, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    .line 1711
    iget-object p1, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {p1, p2, v1}, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    .line 1712
    iget-object p1, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    iget-object p2, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-static {v2, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->compareNFDIter(Lcom/ibm/icu/impl/Normalizer2Impl;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1719
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    return p1

    .line 1714
    :cond_d
    :try_start_3
    iget-object v0, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {v0, v2, p1, v1}, Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    .line 1715
    iget-object p1, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {p1, v2, p2, v1}, Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    .line 1716
    iget-object p1, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    iget-object p2, v5, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-static {v2, p1, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->compareNFDIter(Lcom/ibm/icu/impl/Normalizer2Impl;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1719
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    return p1

    :catchall_2
    move-exception p1

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/RuleBasedCollator;->releaseCollationBuffer(Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw p1

    :cond_e
    :goto_7
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1405
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1408
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/RuleBasedCollator;

    .line 1409
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1410
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    if-ne v1, v3, :cond_3

    return v0

    .line 1411
    :cond_3
    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 1412
    :goto_0
    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_6

    return v2

    .line 1415
    :cond_6
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v4

    .line 1416
    iget-object v5, p1, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_7

    .line 1417
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    if-nez v3, :cond_8

    .line 1418
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1420
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    .line 1425
    :cond_9
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    .line 1426
    invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 1427
    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 271
    new-instance v0, Lcom/ibm/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getNumericCollation()Z
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->tailoring:Lcom/ibm/icu/impl/coll/CollationTailoring;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrength()I
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v0

    return v0
.end method

.method public getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 993
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 994
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-eqz v1, :cond_0

    .line 995
    new-instance v1, Lcom/ibm/icu/impl/coll/TailoredSet;

    invoke-direct {v1, v0}, Lcom/ibm/icu/impl/coll/TailoredSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/coll/TailoredSet;->forData(Lcom/ibm/icu/impl/coll/CollationData;)V

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1444
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->hashCode()I

    move-result v0

    .line 1445
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-nez v1, :cond_0

    return v0

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getTailoredSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    .line 1448
    new-instance v2, Lcom/ibm/icu/text/UnicodeSetIterator;

    invoke-direct {v2, v1}, Lcom/ibm/icu/text/UnicodeSetIterator;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 1449
    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v2, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    sget v3, Lcom/ibm/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v1, v3, :cond_1

    .line 1450
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget v3, v2, Lcom/ibm/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isAlternateHandlingShifted()Z
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getAlternateHandling()Z

    move-result v0

    return v0
.end method

.method public isCaseLevel()Z
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrenchCollation()Z
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowerCaseFirst()Z
    .locals 2

    .line 1294
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpperCaseFirst()Z
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result v0

    const/16 v1, 0x300

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 1

    .line 606
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 607
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 609
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    .line 610
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setCaseLevel(Z)V
    .locals 2

    .line 632
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 633
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isCaseLevel()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/16 v1, 0x400

    .line 635
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 636
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setDecomposition(I)V
    .locals 2

    .line 672
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 682
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong decomposition mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 684
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->getFlag(I)Z

    move-result v0

    if-ne p1, v0, :cond_2

    return-void

    .line 685
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 686
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 687
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setFrenchCollation(Z)V
    .locals 2

    .line 583
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 584
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrenchCollation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/16 v1, 0x800

    .line 586
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 587
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setLowerCaseFirst(Z)V
    .locals 1

    .line 443
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 444
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isLowerCaseFirst()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x200

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 446
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 447
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public bridge synthetic setMaxVariable(I)Lcom/ibm/icu/text/Collator;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->setMaxVariable(I)Lcom/ibm/icu/text/RuleBasedCollator;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVariable(I)Lcom/ibm/icu/text/RuleBasedCollator;
    .locals 5

    const/16 v0, 0x1000

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    if-gt v0, p1, :cond_4

    const/16 v2, 0x1003

    if-gt p1, v2, :cond_4

    add-int/lit16 v2, p1, -0x1000

    .line 741
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v3

    if-ne v2, v3, :cond_1

    return-object p0

    .line 745
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v3

    .line 746
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v4

    if-ne v4, v3, :cond_2

    if-gez v2, :cond_2

    return-object p0

    .line 751
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v4

    if-ne p1, v1, :cond_3

    .line 754
    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result p1

    add-int/2addr p1, v0

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v0

    .line 758
    iget p1, v3, Lcom/ibm/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v4, v2, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 759
    iput-wide v0, v4, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    .line 760
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-object p0

    .line 739
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal max variable group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumericCollation(Z)V
    .locals 2

    .line 890
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 892
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 893
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/4 v1, 0x2

    .line 894
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 895
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public varargs setReorderCodes([I)V
    .locals 5

    .line 912
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 913
    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 914
    aget v3, p1, v0

    const/16 v4, 0x67

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    .line 917
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 918
    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v3, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    .line 919
    invoke-virtual {v3}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Lcom/ibm/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    return-void

    .line 922
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getDefaultSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v3

    if-ne v1, v2, :cond_5

    .line 923
    aget v0, p1, v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 924
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p1

    if-eq p1, v3, :cond_4

    .line 925
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object p1

    .line 926
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/coll/CollationSettings;->copyReorderingFrom(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    .line 927
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    :cond_4
    return-void

    .line 931
    :cond_5
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-nez v1, :cond_6

    .line 933
    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->resetReordering()V

    goto :goto_2

    .line 935
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setReordering(Lcom/ibm/icu/impl/coll/CollationData;[I)V

    .line 937
    :goto_2
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setStrength(I)V
    .locals 1

    .line 711
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 712
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 714
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setStrength(I)V

    .line 715
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setUpperCaseFirst(Z)V
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 422
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->isUpperCaseFirst()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator;->getOwnedSettings()Lcom/ibm/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 p1, 0x300

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 424
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 425
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedCollator;->setFastLatinOptions(Lcom/ibm/icu/impl/coll/CollationSettings;)V

    return-void
.end method
