.class Lcom/ibm/icu/text/CollatorServiceShim$CService;
.super Lcom/ibm/icu/impl/ICULocaleService;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CollatorServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Collator"

    .line 133
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/ibm/icu/text/CollatorServiceShim$CService$1CollatorFactory;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/CollatorServiceShim$CService$1CollatorFactory;-><init>(Lcom/ibm/icu/text/CollatorServiceShim$CService;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/CollatorServiceShim$CService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;

    .line 147
    invoke-virtual {p0}, Lcom/ibm/icu/text/CollatorServiceShim$CService;->markDefault()V

    return-void
.end method


# virtual methods
.method public handleDefault(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string v0, "root"

    .line 168
    aput-object v0, p2, p1

    .line 171
    :cond_0
    :try_start_0
    sget-object p1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/CollatorServiceShim;->access$000(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
