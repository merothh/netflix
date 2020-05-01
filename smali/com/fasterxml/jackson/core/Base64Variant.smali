.class public final Lcom/fasterxml/jackson/core/Base64Variant;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient a:[I

.field public final b:Ljava/lang/String;

.field private final transient c:[B

.field private final transient d:[C

.field private final transient e:Z

.field private final transient f:C

.field private final transient g:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V
    .locals 6

    .line 148
    iget-boolean v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->e:Z

    iget-char v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->f:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->a:[I

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 61
    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->d:[C

    new-array v0, v0, [B

    .line 67
    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->c:[B

    .line 158
    iput-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->b:Ljava/lang/String;

    .line 159
    iget-object p2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->c:[B

    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->c:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object p2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->d:[C

    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->d:[C

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object p1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->a:[I

    .line 164
    iget-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->a:[I

    array-length v0, p1

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->e:Z

    .line 167
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->f:C

    .line 168
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->a:[I

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 61
    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->d:[C

    new-array v1, v0, [B

    .line 67
    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->c:[B

    .line 113
    iput-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->b:Ljava/lang/String;

    .line 114
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->e:Z

    .line 115
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->f:C

    .line 116
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->g:I

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 127
    iget-object p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->d:[C

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, p5, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 128
    iget-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->a:[I

    const/4 p5, -0x1

    invoke-static {p2, p5}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 130
    iget-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->d:[C

    aget-char p2, p2, v0

    .line 131
    iget-object p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->c:[B

    int-to-byte v1, p2

    aput-byte v1, p5, v0

    .line 132
    iget-object p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->a:[I

    aput v0, p5, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 137
    iget-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->a:[I

    const/4 p2, -0x2

    aput p2, p1, p4

    :cond_1
    return-void

    .line 123
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/UsbAccessory;->e(Ljava/lang/String;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->b:Ljava/lang/String;

    return-object v0
.end method
