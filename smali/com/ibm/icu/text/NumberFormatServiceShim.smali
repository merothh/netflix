.class Lcom/ibm/icu/text/NumberFormatServiceShim;
.super Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;
    }
.end annotation


# static fields
.field private static service:Lcom/ibm/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;-><init>()V

    return-void
.end method


# virtual methods
.method createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/ibm/icu/util/ULocale;

    .line 86
    sget-object v2, Lcom/ibm/icu/text/NumberFormatServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;

    invoke-virtual {v2, p1, p2, v1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/NumberFormat;

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v2}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/NumberFormat;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    :cond_1
    const/4 p1, 0x0

    .line 101
    aget-object p1, v1, p1

    .line 102
    invoke-virtual {v2, p1, p1}, Lcom/ibm/icu/text/NumberFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    return-object v2

    .line 89
    :cond_2
    new-instance p1, Ljava/util/MissingResourceException;

    const-string p2, ""

    const-string v0, "Unable to construct NumberFormat"

    invoke-direct {p1, v0, p2, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
