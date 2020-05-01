.class Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;
.super Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NormInertBinaryProperty"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    .line 225
    iput p3, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 1

    .line 229
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    add-int/lit8 v0, v0, -0x25

    invoke-static {v0}, Lcom/ibm/icu/impl/Norm2AllModes;->getN2WithImpl(I)Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isInert(I)Z

    move-result p1

    return p1
.end method
