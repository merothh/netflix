.class public Lcom/ibm/icu/impl/number/FormatQuantitySelector;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(I)Lcom/ibm/icu/impl/number/FormatQuantityBCD;
    .locals 1

    .line 11
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(I)V

    return-object v0
.end method
