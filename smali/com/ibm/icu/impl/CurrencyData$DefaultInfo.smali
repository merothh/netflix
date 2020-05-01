.class public Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;
.super Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultInfo"
.end annotation


# static fields
.field private static final FALLBACK_INSTANCE:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private static final NO_FALLBACK_INSTANCE:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;


# instance fields
.field private final fallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 180
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;-><init>(Z)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->FALLBACK_INSTANCE:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    .line 181
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;-><init>(Z)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->NO_FALLBACK_INSTANCE:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;-><init>()V

    .line 125
    iput-boolean p1, p0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    return-void
.end method

.method public static final getWithFallback(Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 0

    if-eqz p0, :cond_0

    .line 129
    sget-object p0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->FALLBACK_INSTANCE:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->NO_FALLBACK_INSTANCE:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getFormatInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 139
    iget-boolean p2, p0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getSpacingInfo()Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getUnitPatterns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public nameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public symbolMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
