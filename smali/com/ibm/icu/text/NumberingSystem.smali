.class public Lcom/ibm/icu/text/NumberingSystem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;
    }
.end annotation


# static fields
.field private static final OTHER_NS_KEYWORDS:[Ljava/lang/String;

.field private static cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NumberingSystem;",
            "Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedStringData:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NumberingSystem;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithmic:Z

.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private radix:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "native"

    const-string v1, "traditional"

    const-string v2, "finance"

    .line 37
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/NumberingSystem;->OTHER_NS_KEYWORDS:[Ljava/lang/String;

    .line 329
    new-instance v0, Lcom/ibm/icu/text/NumberingSystem$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/NumberingSystem;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    .line 340
    new-instance v0, Lcom/ibm/icu/text/NumberingSystem$2;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/NumberingSystem;->cachedStringData:Lcom/ibm/icu/impl/CacheBase;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 45
    iput v0, p0, Lcom/ibm/icu/text/NumberingSystem;->radix:I

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z

    const-string v0, "0123456789"

    .line 47
    iput-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    const-string v0, "latn"

    .line 48
    iput-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->lookupInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 7

    const-string v0, "numbers"

    .line 118
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 120
    sget-object v3, Lcom/ibm/icu/text/NumberingSystem;->OTHER_NS_KEYWORDS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 121
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 132
    invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v1

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@numbers="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;

    invoke-direct {v2, p0, v0}, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    .line 149
    sget-object p0, Lcom/ibm/icu/text/NumberingSystem;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/NumberingSystem;

    return-object p0
.end method

.method private static getInstance(Ljava/lang/String;IZLjava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    if-nez p2, :cond_1

    .line 91
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {p3}, Lcom/ibm/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid digit string for numbering system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_1
    :goto_0
    new-instance v0, Lcom/ibm/icu/text/NumberingSystem;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V

    .line 96
    iput p1, v0, Lcom/ibm/icu/text/NumberingSystem;->radix:I

    .line 97
    iput-boolean p2, v0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z

    .line 98
    iput-object p3, v0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    .line 99
    iput-object p0, v0, Lcom/ibm/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-object v0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid radix for numbering system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 2

    .line 221
    sget-object v0, Lcom/ibm/icu/text/NumberingSystem;->cachedStringData:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/NumberingSystem;

    return-object p0
.end method

.method public static isValidDigitString(Ljava/lang/String;)Z
    .locals 2

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static lookupInstanceByLocale(Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;->locale:Lcom/ibm/icu/util/ULocale;

    :try_start_0
    const-string v1, "com/ibm/icu/impl/data/icudt59b"

    .line 166
    invoke-static {v1, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "NumberElements"

    .line 167
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    iget-object p0, p0, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;->numbersKeyword:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 176
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "native"

    .line 179
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "finance"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "traditional"

    .line 181
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, v2

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 191
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 195
    new-instance v1, Lcom/ibm/icu/text/NumberingSystem;

    invoke-direct {v1}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    const-string p0, "default"

    goto :goto_0

    .line 169
    :catch_1
    new-instance p0, Lcom/ibm/icu/text/NumberingSystem;

    invoke-direct {p0}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V

    return-object p0
.end method

.method private static lookupInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 4

    const-string v0, "numberingSystems"

    :try_start_0
    const-string v1, "com/ibm/icu/impl/data/icudt59b"

    .line 229
    invoke-static {v1, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "desc"

    .line 233
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "radix"

    .line 234
    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    const-string v3, "algorithmic"

    .line 235
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 236
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v2

    .line 237
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 245
    :goto_0
    invoke-static {p0, v2, v3, v1}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRadix()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/ibm/icu/text/NumberingSystem;->radix:I

    return v0
.end method

.method public isAlgorithmic()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z

    return v0
.end method
