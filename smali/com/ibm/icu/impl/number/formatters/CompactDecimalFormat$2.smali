.class final Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$2;
.super Ljava/lang/ThreadLocal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Map<",
        "Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;",
        "Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$2;->initialValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalFingerprint;",
            "Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
