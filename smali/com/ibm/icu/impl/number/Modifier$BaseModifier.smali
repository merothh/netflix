.class public abstract Lcom/ibm/icu/impl/number/Modifier$BaseModifier;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier;
.implements Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseModifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 0

    .line 120
    invoke-virtual {p2, p0}, Lcom/ibm/icu/impl/number/ModifierHolder;->add(Lcom/ibm/icu/impl/number/Modifier;)V

    return-void
.end method

.method public getModifier(Z)Lcom/ibm/icu/impl/number/Modifier;
    .locals 0

    return-object p0
.end method
