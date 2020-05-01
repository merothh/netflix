.class public interface abstract Lcom/ibm/icu/impl/number/Parse$IProperties;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProperties"
.end annotation


# static fields
.field public static final DEFAULT_PARSE_GROUPING_MODE:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

.field public static final DEFAULT_PARSE_MODE:Lcom/ibm/icu/impl/number/Parse$ParseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getDecimalPatternMatchRequired()Z
.end method

.method public abstract getParseCaseSensitive()Z
.end method

.method public abstract getParseGroupingMode()Lcom/ibm/icu/impl/number/Parse$GroupingMode;
.end method

.method public abstract getParseIntegerOnly()Z
.end method

.method public abstract getParseMode()Lcom/ibm/icu/impl/number/Parse$ParseMode;
.end method

.method public abstract getParseNoExponent()Z
.end method

.method public abstract getParseToBigDecimal()Z
.end method
