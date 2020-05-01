.class Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/Rounder$MultiplierGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompactDecimalData"
.end annotation


# static fields
.field private static final USE_FALLBACK:Lcom/ibm/icu/impl/number/Modifier;


# instance fields
.field isEmpty:Z

.field largestMagnitude:I

.field final mods:[Lcom/ibm/icu/impl/number/Modifier;

.field final multipliers:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 248
    new-instance v0, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->USE_FALLBACK:Lcom/ibm/icu/impl/number/Modifier;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    const/16 v1, 0x10

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/impl/number/Modifier;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    new-array v0, v1, [B

    .line 257
    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->multipliers:[B

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->isEmpty:Z

    const/4 v0, -0x1

    .line 259
    iput v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->largestMagnitude:I

    return-void
.end method

.method private static final modIndex(ILcom/ibm/icu/impl/StandardPlural;Z)I
    .locals 1

    .line 323
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int p0, p0, v0

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method getModifier(ILcom/ibm/icu/impl/StandardPlural;Z)Lcom/ibm/icu/impl/number/Modifier;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 291
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->largestMagnitude:I

    if-le p1, v1, :cond_1

    move p1, v1

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    invoke-static {p1, p2, p3}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->modIndex(ILcom/ibm/icu/impl/StandardPlural;Z)I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 295
    sget-object v2, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    if-eq p2, v2, :cond_2

    .line 297
    iget-object p2, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-static {p1, v1, p3}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->modIndex(ILcom/ibm/icu/impl/StandardPlural;Z)I

    move-result p1

    aget-object p1, p2, p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 299
    :goto_0
    sget-object p2, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->USE_FALLBACK:Lcom/ibm/icu/impl/number/Modifier;

    if-ne p1, p2, :cond_3

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method public getMultiplier(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 271
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->largestMagnitude:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->multipliers:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public has(ILcom/ibm/icu/impl/StandardPlural;)Z
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->modIndex(ILcom/ibm/icu/impl/StandardPlural;Z)I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method isEmpty()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->isEmpty:Z

    return v0
.end method

.method setModifiers(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;ILcom/ibm/icu/impl/StandardPlural;)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    const/4 v1, 0x0

    invoke-static {p3, p4, v1}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->modIndex(ILcom/ibm/icu/impl/StandardPlural;Z)I

    move-result v2

    aput-object p1, v0, v2

    .line 313
    iget-object p1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    const/4 v0, 0x1

    invoke-static {p3, p4, v0}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->modIndex(ILcom/ibm/icu/impl/StandardPlural;Z)I

    move-result p4

    aput-object p2, p1, p4

    .line 314
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->isEmpty:Z

    .line 315
    iget p1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->largestMagnitude:I

    if-le p3, p1, :cond_0

    iput p3, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->largestMagnitude:I

    :cond_0
    return-void
.end method

.method setNoFallback(ILcom/ibm/icu/impl/StandardPlural;)V
    .locals 1

    .line 319
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->USE_FALLBACK:Lcom/ibm/icu/impl/number/Modifier;

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->setModifiers(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;ILcom/ibm/icu/impl/StandardPlural;)V

    return-void
.end method

.method setOrGetMultiplier(IB)I
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->multipliers:[B

    aget-byte v1, v0, p1

    if-eqz v1, :cond_0

    .line 279
    aget-byte p1, v0, p1

    return p1

    .line 281
    :cond_0
    aput-byte p2, v0, p1

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->isEmpty:Z

    .line 283
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->largestMagnitude:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/ibm/icu/impl/number/formatters/CompactDecimalFormat$CompactDecimalData;->largestMagnitude:I

    :cond_1
    return p2
.end method
