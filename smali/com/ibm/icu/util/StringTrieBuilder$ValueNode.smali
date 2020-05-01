.class Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;
.super Lcom/ibm/icu/util/StringTrieBuilder$Node;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected hasValue:Z

.field protected value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 264
    const-class v0, Lcom/ibm/icu/util/StringTrieBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$Node;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$Node;-><init>()V

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 268
    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;I)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->setFinalValue(I)V

    return-void
.end method

.method private setFinalValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 277
    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method


# virtual methods
.method public add(Lcom/ibm/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;
    .locals 1

    .line 300
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 304
    invoke-static {p1, p2, p3, p4}, Lcom/ibm/icu/util/StringTrieBuilder;->access$100(Lcom/ibm/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p1

    .line 305
    iget p2, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {p1, p2}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    return-object p1

    .line 301
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duplicate string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 292
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 295
    :cond_1
    check-cast p1, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;

    .line 296
    iget-boolean v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    iget-boolean v3, p1, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-ne v1, v3, :cond_2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    iget p1, p1, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 282
    iget-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v0, :cond_0

    const v0, 0x2777775

    .line 283
    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x111111

    :goto_0
    return v0
.end method

.method public final setValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    .line 273
    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    return-void
.end method

.method public write(Lcom/ibm/icu/util/StringTrieBuilder;)V
    .locals 2

    .line 310
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->offset:I

    return-void
.end method
