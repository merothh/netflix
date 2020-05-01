.class public final Lcom/ibm/icu/text/Edits$Iterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Edits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final array:[C

.field private changed:Z

.field private final coarse:Z

.field private destIndex:I

.field private index:I

.field private final length:I

.field private newLength_:I

.field private oldLength_:I

.field private final onlyChanges_:Z

.field private remaining:I

.field private replIndex:I

.field private srcIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    const-class v0, Lcom/ibm/icu/text/Edits;

    return-void
.end method

.method private constructor <init>([CIZZ)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    .line 237
    iput p2, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    .line 238
    iput-boolean p3, p0, Lcom/ibm/icu/text/Edits$Iterator;->onlyChanges_:Z

    .line 239
    iput-boolean p4, p0, Lcom/ibm/icu/text/Edits$Iterator;->coarse:Z

    return-void
.end method

.method synthetic constructor <init>([CIZZLcom/ibm/icu/text/Edits$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/Edits$Iterator;-><init>([CIZZ)V

    return-void
.end method

.method private next(Z)Z
    .locals 5

    .line 289
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updateIndexes()V

    .line 290
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 292
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    return v1

    .line 295
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    iget v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    if-lt v0, v2, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->noNext()Z

    move-result p1

    return p1

    .line 298
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char v0, v2, v0

    const/16 v2, 0xfff

    if-gt v0, v2, :cond_5

    const/4 v3, 0x0

    .line 301
    iput-boolean v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    add-int/lit8 v3, v0, 0x1

    .line 302
    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 303
    :goto_0
    iget v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    aget-char v0, v0, v3

    if-gt v0, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 304
    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    .line 305
    iget v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_0

    .line 307
    :cond_2
    iget v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    if-eqz p1, :cond_4

    .line 309
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->updateIndexes()V

    .line 310
    iget p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    iget v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    if-lt p1, v3, :cond_3

    .line 311
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits$Iterator;->noNext()Z

    move-result p1

    return p1

    :cond_3
    add-int/2addr p1, v1

    .line 314
    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    goto :goto_1

    :cond_4
    return v1

    .line 319
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    const/16 p1, 0x6fff

    if-gt v0, p1, :cond_7

    .line 321
    iget-boolean v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->coarse:Z

    if-eqz v3, :cond_6

    shr-int/lit8 v3, v0, 0xc

    and-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int v0, v0, v3

    .line 324
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_2

    :cond_6
    shr-int/lit8 p1, v0, 0xc

    .line 327
    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    and-int/lit16 p1, v0, 0xfff

    .line 328
    iput p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->remaining:I

    return v1

    :cond_7
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    .line 333
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    and-int/lit8 v0, v0, 0x3f

    .line 334
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    .line 335
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->coarse:Z

    if-nez v0, :cond_8

    return v1

    .line 340
    :cond_8
    :goto_2
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    iget v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->length:I

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    aget-char v3, v3, v0

    if-le v3, v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    .line 341
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    if-gt v3, p1, :cond_9

    shr-int/lit8 v0, v3, 0xc

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v3, v1

    mul-int v3, v3, v0

    .line 346
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 347
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_2

    :cond_9
    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3f

    .line 350
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v0

    and-int/lit8 v3, v3, 0x3f

    .line 351
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/Edits$Iterator;->readLength(I)I

    move-result v3

    .line 352
    iget v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    .line 353
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_2

    :cond_a
    return v1
.end method

.method private noNext()Z
    .locals 1

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    .line 272
    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    return v0
.end method

.method private readLength(I)I
    .locals 3

    const/16 v0, 0x3d

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x3e

    if-ge p1, v0, :cond_1

    .line 248
    iget-object p1, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char p1, p1, v0

    and-int/lit16 p1, p1, 0x7fff

    return p1

    :cond_1
    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1e

    .line 253
    iget-object v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    aget-char v2, v0, v1

    and-int/lit16 v2, v2, 0x7fff

    shl-int/lit8 v2, v2, 0xf

    or-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    and-int/lit16 v0, v0, 0x7fff

    or-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x2

    .line 256
    iput v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->index:I

    return p1
.end method

.method private updateIndexes()V
    .locals 2

    .line 262
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    .line 263
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    if-eqz v0, :cond_0

    .line 264
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    .line 266
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    iget v1, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->destIndex:I

    return-void
.end method


# virtual methods
.method public hasChange()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->changed:Z

    return v0
.end method

.method public newLength()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->newLength_:I

    return v0
.end method

.method public next()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->onlyChanges_:Z

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits$Iterator;->next(Z)Z

    move-result v0

    return v0
.end method

.method public oldLength()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->oldLength_:I

    return v0
.end method

.method public replacementIndex()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->replIndex:I

    return v0
.end method

.method public sourceIndex()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/ibm/icu/text/Edits$Iterator;->srcIndex:I

    return v0
.end method
