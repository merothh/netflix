.class public abstract Lcom/ibm/icu/text/TimeZoneNames;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;,
        Lcom/ibm/icu/text/TimeZoneNames$Cache;,
        Lcom/ibm/icu/text/TimeZoneNames$Factory;,
        Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;,
        Lcom/ibm/icu/text/TimeZoneNames$NameType;
    }
.end annotation


# static fields
.field private static TZNAMES_CACHE:Lcom/ibm/icu/text/TimeZoneNames$Cache; = null

.field private static final TZNAMES_FACTORY:Lcom/ibm/icu/text/TimeZoneNames$Factory;

.field private static final serialVersionUID:J = -0x7f66b7d81bd309c1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 133
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/TimeZoneNames$Cache;-><init>(Lcom/ibm/icu/text/TimeZoneNames$1;)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames;->TZNAMES_CACHE:Lcom/ibm/icu/text/TimeZoneNames$Cache;

    const-string v0, "com.ibm.icu.impl.TimeZoneNamesFactoryImpl"

    const-string v2, "com.ibm.icu.text.TimeZoneNames.Factory.impl"

    .line 141
    invoke-static {v2, v0}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    :goto_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/TimeZoneNames$Factory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_1

    :catch_0
    nop

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    if-nez v1, :cond_0

    .line 160
    new-instance v1, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;

    invoke-direct {v1}, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;-><init>()V

    .line 162
    :cond_0
    sput-object v1, Lcom/ibm/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Lcom/ibm/icu/text/TimeZoneNames$Factory;

    return-void

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ibm/icu/text/TimeZoneNames$Factory;
    .locals 1

    .line 79
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Lcom/ibm/icu/text/TimeZoneNames$Factory;

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames;->TZNAMES_CACHE:Lcom/ibm/icu/text/TimeZoneNames$Cache;

    invoke-virtual {v1, v0, p0}, Lcom/ibm/icu/text/TimeZoneNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneNames;

    return-object p0
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The method is not implemented in TimeZoneNames base class."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;
    .locals 1

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0, p1, p3, p4}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 330
    invoke-static {p1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method

.method public abstract getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public abstract getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTimeZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method
