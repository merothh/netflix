.class Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DequeI"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:[I

.field private firstIdx:I

.field private lastIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-class v0, Lcom/ibm/icu/text/DictionaryBreakEngine;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v0, v0, [I

    .line 93
    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    const/4 v0, 0x4

    .line 94
    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    .line 95
    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    return-void
.end method

.method private grow()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 107
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iput-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2

    .line 146
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    :goto_0
    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isEmpty()Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method offer(I)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aput p1, v0, v1

    return-void
.end method

.method peek()I
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method peekLast()I
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method pollLast()I
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget v0, v0, v1

    return v0
.end method

.method pop()I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aget v0, v0, v1

    return v0
.end method

.method push(I)V
    .locals 3

    .line 119
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->grow()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aput p1, v0, v1

    return-void
.end method

.method size()I
    .locals 2

    .line 98
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    sub-int/2addr v0, v1

    return v0
.end method
