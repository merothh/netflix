.class public Lcom/ibm/icu/impl/number/NumberStringBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final fieldToDebugChar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/text/NumberFormat$Field;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chars:[C

.field private fields:[Lcom/ibm/icu/text/NumberFormat$Field;

.field private length:I

.field private zero:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    .line 252
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x28

    .line 22
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 27
    new-array v0, p1, [Lcom/ibm/icu/text/NumberFormat$Field;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 28
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;)V
    .locals 4

    .line 33
    iget-object v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(I)V

    .line 34
    iget v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 35
    iget v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 36
    iget-object v0, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object p1, p1, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private prepareForInsert(II)I
    .locals 4

    if-nez p1, :cond_0

    .line 187
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v1, v0, p2

    if-ltz v1, :cond_0

    sub-int/2addr v0, p2

    .line 189
    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 190
    iget p1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 191
    iget p1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    return p1

    .line 192
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ne p1, v0, :cond_1

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int v2, v1, v0

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/2addr v0, p2

    .line 194
    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 195
    iget p1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    .line 198
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsertHelper(II)I

    move-result p1

    return p1
.end method

.method private prepareForInsertHelper(II)I
    .locals 7

    .line 204
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int v1, v0, p2

    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v3, v2

    if-le v1, v3, :cond_0

    add-int v1, v0, p2

    mul-int/lit8 v1, v1, 0x2

    .line 205
    new-array v1, v1, [C

    add-int v3, v0, p2

    mul-int/lit8 v3, v3, 0x2

    .line 206
    new-array v3, v3, [Lcom/ibm/icu/text/NumberFormat$Field;

    .line 207
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    .line 208
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    invoke-static {v2, v0, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v2, p1

    add-int v5, v4, p1

    add-int/2addr v5, p2

    iget v6, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v6, p1

    invoke-static {v0, v2, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    invoke-static {v0, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v2, p1

    iget v6, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v6, p1

    invoke-static {v0, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 213
    iput-object v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    .line 214
    iput v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 215
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    goto :goto_0

    .line 217
    :cond_0
    array-length v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, p2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 218
    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    invoke-static {v2, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v2, v1, p1

    add-int v3, v2, p2

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v0, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    .line 223
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    .line 225
    :goto_0
    iget p2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr p2, p1

    return p2
.end method


# virtual methods
.method public append(Lcom/ibm/icu/impl/number/NumberStringBuilder;)I
    .locals 1

    .line 155
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILcom/ibm/icu/impl/number/NumberStringBuilder;)I

    move-result p1

    return p1
.end method

.method public append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 1

    .line 82
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1
.end method

.method public appendCodePoint(ILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 1

    .line 59
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1
.end method

.method public charAt(I)C
    .locals 2

    if-ltz p1, :cond_0

    .line 47
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-gt p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    const/4 v0, 0x0

    .line 408
    iput v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    return-object p0
.end method

.method public contentEquals([C[Lcom/ibm/icu/text/NumberFormat$Field;)Z
    .locals 5

    .line 306
    array-length v0, p1

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 307
    :cond_0
    array-length v0, p2

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 308
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v0, v1, :cond_4

    .line 309
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int v4, v3, v0

    aget-char v1, v1, v4

    aget-char v4, p1, v0

    if-eq v1, v4, :cond_2

    return v2

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int/2addr v3, v0

    aget-object v1, v1, v3

    aget-object v3, p2, v0

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 7

    .line 383
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 386
    :goto_0
    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v3, v4, :cond_3

    .line 387
    iget-object v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    .line 388
    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v1, v5, :cond_0

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_0

    .line 390
    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v4, v5, v3, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_0
    if-eq v1, v4, :cond_2

    if-eqz v1, :cond_1

    .line 394
    invoke-virtual {v0, v1, v1, v2, v3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_1
    move v2, v3

    move-object v1, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 401
    invoke-virtual {v0, v1, v1, v2, v4}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 403
    :cond_4
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILcom/ibm/icu/impl/number/NumberStringBuilder;)I
    .locals 7

    if-eq p0, p2, :cond_2

    .line 169
    iget v0, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 171
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result p1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 173
    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v3, p1, v1

    iget-object v4, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v5, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int v6, v5, v1

    aget-char v4, v4, v6

    aput-char v4, v2, v3

    .line 174
    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget-object v4, p2, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot call insert/append on myself"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 4

    sub-int/2addr p4, p3

    .line 111
    invoke-direct {p0, p1, p4}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 113
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v2, p1, v0

    add-int v3, p3, v0

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 114
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    aput-object p5, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p4
.end method

.method public insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 6

    .line 91
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 97
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1

    :cond_1
    const/4 v3, 0x0

    .line 99
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1
.end method

.method public insert(I[C[Lcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 5

    .line 138
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result p1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 142
    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v3, p1, v1

    aget-char v4, p2, v1

    aput-char v4, v2, v3

    .line 143
    iget-object v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    if-nez p3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    aget-object v4, p3, v1

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 2

    .line 68
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result p1

    .line 70
    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    invoke-static {p2, v1, p1}, Ljava/lang/Character;->toChars(I[CI)I

    .line 71
    iget-object p2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    aput-object p3, p2, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 72
    aput-object p3, p2, p1

    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    return v0
.end method

.method public populateFieldPosition(Ljava/text/FieldPosition;I)V
    .locals 8

    .line 335
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 339
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 342
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_1
    return-void

    .line 349
    :cond_2
    :goto_0
    instance-of v2, v0, Lcom/ibm/icu/text/NumberFormat$Field;

    if-eqz v2, :cond_b

    .line 354
    check-cast v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 358
    iget v4, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    :goto_1
    iget v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v6, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int v7, v5, v6

    if-gt v4, v7, :cond_9

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    .line 359
    iget-object v5, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    aget-object v5, v5, v4

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v2, :cond_5

    if-eq v0, v5, :cond_5

    .line 362
    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v0, v6, :cond_4

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_4

    goto :goto_3

    .line 364
    :cond_4
    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr v4, v1

    add-int/2addr v4, p2

    invoke-virtual {p1, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_4

    :cond_5
    if-nez v2, :cond_6

    if-ne v0, v5, :cond_6

    .line 367
    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v2, v4, v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v2, 0x1

    .line 370
    :cond_6
    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-eq v5, v6, :cond_7

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_8

    .line 371
    :cond_7
    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v3, v4, v3

    add-int/2addr v3, v1

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 376
    :cond_9
    :goto_4
    sget-object p2, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v0, p2, :cond_a

    if-nez v2, :cond_a

    .line 377
    invoke-virtual {p1, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 378
    invoke-virtual {p1, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_a
    return-void

    .line 350
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You must pass an instance of com.ibm.icu.text.NumberFormat.Field as your FieldPosition attribute.  You passed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_0

    .line 230
    iget v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-lt p2, p1, :cond_0

    .line 233
    new-instance v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 234
    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr p2, p1

    .line 235
    iput p2, v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    return-object v0

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toCharArray()[C
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public toFieldArray()[Lcom/ibm/icu/text/NumberFormat$Field;
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->fields:[Lcom/ibm/icu/text/NumberFormat$Field;

    iget v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/NumberFormat$Field;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 246
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v2, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->zero:I

    iget v3, p0, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
