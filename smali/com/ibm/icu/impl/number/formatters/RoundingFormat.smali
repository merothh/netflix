.class public Lcom/ibm/icu/impl/number/formatters/RoundingFormat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultOrNoRounder(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;
    .locals 1

    .line 23
    invoke-static {p0}, Lcom/ibm/icu/impl/number/formatters/RoundingFormat;->getDefaultOrNull(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/NoRounder;->getInstance(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Lcom/ibm/icu/impl/number/rounders/NoRounder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getDefaultOrNull(Lcom/ibm/icu/impl/number/formatters/RoundingFormat$IProperties;)Lcom/ibm/icu/impl/number/Rounder;
    .locals 1

    .line 31
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->useSignificantDigits(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->useRoundingIncrement(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/IncrementRounder;->getInstance(Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;)Lcom/ibm/icu/impl/number/rounders/IncrementRounder;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->useFractionFormat(Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder$IProperties;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-static {p0}, Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;->getInstance(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Lcom/ibm/icu/impl/number/rounders/MagnitudeRounder;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
