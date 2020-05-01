.class Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntProperty"
.end annotation


# instance fields
.field column:I

.field mask:I

.field shift:I

.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->column:I

    const/4 p1, 0x0

    .line 456
    iput p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->mask:I

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->column:I

    .line 451
    iput p3, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->mask:I

    .line 452
    iput p4, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->shift:I

    return-void
.end method


# virtual methods
.method final getSource()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->mask:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->column:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method getValue(I)I
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    iget v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->column:I

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p1

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->mask:I

    and-int/2addr p1, v0

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->shift:I

    ushr-int/2addr p1, v0

    return p1
.end method
