.class public final Lcom/ibm/icu/impl/number/rounders/NoRounder;
.super Lcom/ibm/icu/impl/number/Rounder;
.source ""


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Rounder;-><init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Lcom/ibm/icu/impl/number/rounders/NoRounder;
    .locals 1

    .line 12
    new-instance v0, Lcom/ibm/icu/impl/number/rounders/NoRounder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/rounders/NoRounder;-><init>(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/number/FormatQuantity;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/rounders/NoRounder;->applyDefaults(Lcom/ibm/icu/impl/number/FormatQuantity;)V

    .line 22
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->roundToInfinity()V

    return-void
.end method
