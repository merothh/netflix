.class public Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier$IProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;


# instance fields
.field final delta:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;->DEFAULT:Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 47
    iput p1, p0, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;->delta:I

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Format$BeforeFormat;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Properties;->getMagnitudeMultiplier()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object p0, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;->DEFAULT:Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Properties;->getMagnitudeMultiplier()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;-><init>(I)V

    return-object v0
.end method

.method public static useMagnitudeMultiplier(Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier$IProperties;)Z
    .locals 0

    .line 33
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier$IProperties;->getMagnitudeMultiplier()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 0

    .line 52
    iget p2, p0, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;->delta:I

    invoke-interface {p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity;->adjustMagnitude(I)V

    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .line 57
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier;->delta:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method
