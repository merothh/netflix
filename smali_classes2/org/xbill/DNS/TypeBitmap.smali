.class final Lorg/xbill/DNS/TypeBitmap;
.super Ljava/lang/Object;
.source "TypeBitmap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1bd58d9f278bf4bL


# instance fields
.field private types:Ljava/util/TreeSet;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 9

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xbill/DNS/TypeBitmap;-><init>()V

    const/4 v3, -0x1

    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid bitmap descriptor"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    if-ge v4, v3, :cond_2

    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid ordering"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-le v5, v0, :cond_3

    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid bitmap"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    const/16 v7, 0x8

    if-ge v0, v7, :cond_4

    const/4 v7, 0x1

    rsub-int/lit8 v8, v0, 0x7

    shl-int/2addr v7, v8

    and-int/2addr v7, v6

    if-nez v7, :cond_6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    mul-int/lit16 v7, v4, 0x100

    mul-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v0

    iget-object v8, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-static {v7}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Tokenizer;)V
    .locals 3

    invoke-direct {p0}, Lorg/xbill/DNS/TypeBitmap;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    return-void

    :cond_0
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-static {v1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>([I)V
    .locals 4

    invoke-direct {p0}, Lorg/xbill/DNS/TypeBitmap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {v1}, Lorg/xbill/DNS/Type;->check(I)V

    iget-object v1, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    new-instance v2, Ljava/lang/Integer;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static mapToWire(Lorg/xbill/DNS/DNSOutput;Ljava/util/TreeSet;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [I

    invoke-virtual {p0, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    div-int/lit8 v4, v4, 0x8

    aget v5, v2, v4

    const/4 v6, 0x1

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x7

    shl-int v0, v6, v0

    or-int/2addr v0, v5

    aput v0, v2, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public empty()Z
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toArray()[I
    .locals 5

    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 6

    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shr-int/lit8 v0, v4, 0x8

    if-eq v0, v1, :cond_3

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {p1, v2, v1}, Lorg/xbill/DNS/TypeBitmap;->mapToWire(Lorg/xbill/DNS/DNSOutput;Ljava/util/TreeSet;I)V

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {p1, v2, v1}, Lorg/xbill/DNS/TypeBitmap;->mapToWire(Lorg/xbill/DNS/DNSOutput;Ljava/util/TreeSet;I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method
