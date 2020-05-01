.class public Lcom/ibm/icu/impl/ICULocaleService;
.super Lcom/ibm/icu/impl/ICUService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;,
        Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;,
        Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
    }
.end annotation


# instance fields
.field private fallbackLocale:Lcom/ibm/icu/util/ULocale;

.field private fallbackLocaleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUService;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Key;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->createWithCanonical(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 4

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService;->createKey(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Key;

    move-result-object p1

    if-nez p3, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/ICULocaleService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 75
    aget-object v2, v0, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 77
    aget-object v3, v0, v1

    add-int/2addr v2, p2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    .line 79
    :cond_1
    new-instance p2, Lcom/ibm/icu/util/ULocale;

    aget-object v0, v0, v1

    invoke-direct {p2, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object p2, p3, v1

    :cond_2
    return-object p1
.end method

.method public get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    .line 57
    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 2

    .line 611
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;

    if-eq v0, v1, :cond_1

    .line 613
    monitor-enter p0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;

    if-eq v0, v1, :cond_0

    .line 615
    iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;

    .line 616
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->clearServiceCache()V

    .line 619
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 621
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    return-object v0
.end method
