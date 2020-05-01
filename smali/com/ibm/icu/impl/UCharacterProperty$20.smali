.class Lcom/ibm/icu/impl/UCharacterProperty$20;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$20;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$20;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p1

    and-int/lit16 p1, p1, 0x3e0

    ushr-int/lit8 p1, p1, 0x5

    .line 568
    invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->access$300()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 569
    invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->access$300()[I

    move-result-object v0

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
