.class Lcom/ibm/icu/text/BreakIteratorFactory$BFService;
.super Lcom/ibm/icu/impl/ICULocaleService;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/BreakIteratorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BFService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "BreakIterator"

    .line 82
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/ibm/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;-><init>(Lcom/ibm/icu/text/BreakIteratorFactory$BFService;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/BreakIteratorFactory$BFService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;

    .line 92
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakIteratorFactory$BFService;->markDefault()V

    return-void
.end method


# virtual methods
.method public validateFallbackLocale()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
