.class public final Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyFormatInfo"
.end annotation


# instance fields
.field public final currencyPattern:Ljava/lang/String;

.field public final monetaryGroupingSeparator:Ljava/lang/String;

.field public final monetarySeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->monetarySeparator:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:Ljava/lang/String;

    return-void
.end method
