.class public interface abstract Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProperties"
.end annotation


# static fields
.field public static final DEFAULT_MULTIPLIER:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getMultiplier()Ljava/math/BigDecimal;
.end method
