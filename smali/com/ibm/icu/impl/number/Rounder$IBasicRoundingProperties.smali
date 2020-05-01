.class public interface abstract Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Rounder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBasicRoundingProperties"
.end annotation


# static fields
.field public static final DEFAULT_MATH_CONTEXT:Ljava/math/MathContext;

.field public static final DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getMathContext()Ljava/math/MathContext;
.end method

.method public abstract getMaximumFractionDigits()I
.end method

.method public abstract getMaximumIntegerDigits()I
.end method

.method public abstract getMinimumFractionDigits()I
.end method

.method public abstract getMinimumIntegerDigits()I
.end method

.method public abstract getRoundingMode()Ljava/math/RoundingMode;
.end method
