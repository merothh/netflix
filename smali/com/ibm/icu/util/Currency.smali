.class public Lcom/ibm/icu/util/Currency;
.super Lcom/ibm/icu/util/MeasureUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/Currency$EquivalenceRelation;,
        Lcom/ibm/icu/util/Currency$CurrencyStringInfo;,
        Lcom/ibm/icu/util/Currency$ServiceShim;,
        Lcom/ibm/icu/util/Currency$CurrencyUsage;
    }
.end annotation


# static fields
.field private static CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache<",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final EQUIVALENT_CURRENCY_SYMBOLS:Lcom/ibm/icu/util/Currency$EquivalenceRelation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/util/Currency$EquivalenceRelation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final POW10:[I

.field private static final UND:Lcom/ibm/icu/util/ULocale;

.field private static final regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Currency;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x510bc147b5e8c814L

.field private static shim:Lcom/ibm/icu/util/Currency$ServiceShim;


# instance fields
.field private final isoCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "currency"

    .line 62
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/util/Currency;->DEBUG:Z

    .line 65
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 90
    new-instance v0, Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;-><init>(Lcom/ibm/icu/util/Currency$1;)V

    const-string v1, "\u00a5"

    const-string v2, "\uffe5"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    const-string v1, "$"

    const-string v2, "\ufe69"

    const-string v3, "\uff04"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    const-string v1, "\u20a8"

    const-string v2, "\u20b9"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    const-string v1, "\u00a3"

    const-string v2, "\u20a4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    .line 235
    new-instance v0, Lcom/ibm/icu/util/Currency$1;

    invoke-direct {v0}, Lcom/ibm/icu/util/Currency$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/Currency;->regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;

    .line 448
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v1, "und"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Currency;->UND:Lcom/ibm/icu/util/ULocale;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 449
    sput-object v0, Lcom/ibm/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 918
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/util/Currency;->POW10:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "currency"

    .line 910
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iput-object p1, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->loadCurrency(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method static createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EURO"

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "EUR"

    .line 249
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 254
    invoke-static {p0, v1}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "PREEURO"

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 258
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/Currency;->regionCurrencyCache:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Currency;

    return-object p0
.end method

.method private static getCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            ")",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;"
        }
    .end annotation

    .line 718
    sget-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 722
    new-instance v1, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 725
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-static {p0, v2}, Lcom/ibm/icu/util/Currency;->setupCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;Ljava/util/List;)V

    .line 728
    sget-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
    .locals 1

    const-string v0, "currency"

    .line 166
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0

    .line 171
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_1

    .line 172
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0

    .line 175
    :cond_1
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Currency$ServiceShim;->createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 1

    if-eqz p0, :cond_1

    .line 299
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "currency"

    invoke-static {v0, p0}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Currency;

    return-object p0

    .line 300
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input currency code is not 3-letter alphabetic code."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The input currency code is null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isAlpha3Code(Ljava/lang/String;)Z
    .locals 5

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x5a

    if-le v3, v4, :cond_1

    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x7a

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static loadCurrency(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
    .locals 5

    const-string v0, "-"

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v3

    .line 272
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->onRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    .line 273
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 274
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "EUR"

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    return-object v4

    .line 279
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 281
    :cond_2
    invoke-static {v2}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v4
.end method

.method public static openParseState(Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/impl/TextTrieMap$ParseState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "II)",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">.ParseState;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    invoke-static {p0}, Lcom/ibm/icu/util/Currency;->getCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 711
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/TextTrieMap;->openParseState(I)Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move-result-object p0

    return-object p0

    .line 713
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/TextTrieMap;->openParseState(I)Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method private static setupCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 736
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    .line 737
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/TextTrieMap;

    .line 739
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object p0

    .line 740
    invoke-virtual {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;->symbolMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 741
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 742
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 745
    sget-object v4, Lcom/ibm/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Lcom/ibm/icu/util/Currency$EquivalenceRelation;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/util/Currency$EquivalenceRelation;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 746
    new-instance v6, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v6, v2, v3}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;->nameMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 750
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 751
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 752
    new-instance v2, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v2, v0, v1}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    .line 1035
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;

    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits(Lcom/ibm/icu/util/Currency$CurrencyUsage;)I
    .locals 2

    .line 846
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object p1

    .line 848
    iget p1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    return p1
.end method

.method public getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 603
    invoke-virtual {p0, p1, p2, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p4, :cond_1

    const/4 p2, 0x0

    .line 608
    aput-boolean p2, p4, p2

    .line 611
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object p1

    .line 612
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad name style: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    .line 559
    aput-boolean v0, p3, v0

    .line 562
    :cond_2
    invoke-static {p1}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyDisplayNames;

    move-result-object p1

    if-nez p2, :cond_3

    .line 563
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CurrencyDisplayNames;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getRoundingIncrement(Lcom/ibm/icu/util/Currency$CurrencyUsage;)D
    .locals 5

    .line 870
    invoke-static {}, Lcom/ibm/icu/text/CurrencyMetaInfo;->getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object p1

    .line 873
    iget v0, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 881
    :cond_0
    iget p1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    if-ltz p1, :cond_2

    .line 884
    sget-object v3, Lcom/ibm/icu/util/Currency;->POW10:[I

    array-length v4, v3

    if-lt p1, v4, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v0, v0

    .line 890
    aget p1, v3, p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 512
    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 501
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Currency;->getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/ibm/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method
