.class public abstract Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;
.super Lcom/ibm/icu/text/CurrencyDisplayNames;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CurrencyDisplayInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFormatInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;
.end method

.method public abstract getSpacingInfo()Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;
.end method

.method public abstract getUnitPatterns()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
