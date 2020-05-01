.class public Lcom/ibm/icu/impl/CurrencyData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;,
        Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;,
        Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;,
        Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;,
        Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    }
.end annotation


# static fields
.field public static final provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.ibm.icu.impl.ICUCurrencyDisplayInfoProvider"

    .line 103
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CurrencyData$1;-><init>()V

    .line 118
    :goto_0
    sput-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
