.class Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NormQuickCheckIntProperty"
.end annotation


# instance fields
.field max:I

.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    .line 495
    iput p3, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    .line 496
    iput p4, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1

    .line 500
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    add-int/lit16 v0, v0, -0x100c

    invoke-static {v0}, Lcom/ibm/icu/impl/Norm2AllModes;->getN2WithImpl(I)Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->getQuickCheck(I)I

    move-result p1

    return p1
.end method
