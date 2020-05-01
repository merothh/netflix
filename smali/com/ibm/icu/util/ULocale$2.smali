.class final Lcom/ibm/icu/util/ULocale$2;
.super Lcom/ibm/icu/impl/SoftCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<",
        "Ljava/util/Locale;",
        "Lcom/ibm/icu/util/ULocale;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/util/Locale;Ljava/lang/Void;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 318
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toULocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 315
    check-cast p1, Ljava/util/Locale;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/ULocale$2;->createInstance(Ljava/util/Locale;Ljava/lang/Void;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    return-object p1
.end method
