.class public abstract Lcom/ibm/icu/text/BreakIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;,
        Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final iterCache:[Lcom/ibm/icu/impl/CacheValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/ibm/icu/impl/CacheValue<",
            "*>;"
        }
    .end annotation
.end field

.field private static shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;


# instance fields
.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "breakiterator"

    .line 217
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/text/BreakIterator;->DEBUG:Z

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ibm/icu/impl/CacheValue;

    .line 562
    sput-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_2

    .line 860
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 861
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->createBreakInstance()Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0

    .line 870
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->createBreakIterator(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    .line 872
    new-instance v1, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/BreakIterator;)V

    .line 873
    sget-object p0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    invoke-static {v1}, Lcom/ibm/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Lcom/ibm/icu/impl/CacheValue;

    move-result-object v1

    aput-object v1, p0, p1

    .line 874
    instance-of p0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    if-eqz p0, :cond_1

    .line 875
    move-object p0, v0

    check-cast p0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 876
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->setBreakType(I)V

    :cond_1
    return-object v0

    .line 858
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Specified locale is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x3

    .line 717
    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method private static getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
    .locals 2

    .line 941
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.ibm.icu.text.BreakIteratorFactory"

    .line 943
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    sput-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 952
    sget-boolean v1, Lcom/ibm/icu/text/BreakIterator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 953
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 955
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 948
    throw v0

    .line 959
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    return-object v0
.end method

.method public static getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x1

    .line 599
    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 238
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public abstract next()I
.end method

.method public preceding(I)I
    .locals 2

    .line 351
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I

    move-result v0

    :goto_0
    if-lt v0, p1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract previous()I
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v2, v0, :cond_2

    .line 1016
    iput-object p1, p0, Lcom/ibm/icu/text/BreakIterator;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 1017
    iput-object p2, p0, Lcom/ibm/icu/text/BreakIterator;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void

    .line 1011
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 515
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
