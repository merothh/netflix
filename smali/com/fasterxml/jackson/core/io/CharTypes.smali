.class public final Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field private static final sHexValues:[I

.field private static final sInputCodes:[I

.field private static final sInputCodesComment:[I

.field private static final sInputCodesJsNames:[I

.field private static final sInputCodesUTF8:[I

.field private static final sInputCodesUtf8JsNames:[I

.field private static final sInputCodesWS:[I

.field private static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x100

    const/4 v1, -0x1

    const/16 v4, 0x80

    const/4 v2, 0x0

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    array-length v3, v0

    new-array v0, v3, [B

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    aget-char v6, v6, v0

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v3, v7, [I

    move v0, v2

    :goto_1
    const/16 v5, 0x20

    if-ge v0, v5, :cond_1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x22

    const/4 v5, 0x1

    aput v5, v3, v0

    const/16 v0, 0x5c

    const/4 v5, 0x1

    aput v5, v3, v0

    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v0, v0

    new-array v5, v0, [I

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v3, v5

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_5

    and-int/lit16 v0, v3, 0xe0

    const/16 v6, 0xc0

    if-ne v0, v6, :cond_2

    const/4 v0, 0x2

    :goto_3
    aput v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v3, 0xf0

    const/16 v6, 0xe0

    if-ne v0, v6, :cond_3

    const/4 v0, 0x3

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v3, 0xf8

    const/16 v6, 0xf0

    if-ne v0, v6, :cond_4

    const/4 v0, 0x4

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    new-array v3, v7, [I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    const/16 v0, 0x21

    :goto_4
    if-ge v0, v7, :cond_7

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_6

    aput v2, v3, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const/16 v0, 0x40

    aput v2, v3, v0

    const/16 v0, 0x23

    aput v2, v3, v0

    const/16 v0, 0x2a

    aput v2, v3, v0

    const/16 v0, 0x2d

    aput v2, v3, v0

    const/16 v0, 0x2b

    aput v2, v3, v0

    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    new-array v0, v7, [I

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    array-length v5, v0

    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v4, v4, v2}, Ljava/util/Arrays;->fill([IIII)V

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    new-array v0, v7, [I

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v3, v4, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x20

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    const/16 v3, 0x9

    aput v2, v0, v3

    aput v8, v0, v8

    const/16 v3, 0xd

    const/16 v5, 0xd

    aput v5, v0, v3

    const/16 v3, 0x2a

    const/16 v5, 0x2a

    aput v5, v0, v3

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    new-array v0, v7, [I

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v3, v4, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x20

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    const/16 v3, 0x20

    const/4 v5, 0x1

    aput v5, v0, v3

    const/16 v3, 0x9

    const/4 v5, 0x1

    aput v5, v0, v3

    aput v8, v0, v8

    const/16 v3, 0xd

    const/16 v5, 0xd

    aput v5, v0, v3

    const/16 v3, 0x2f

    const/16 v5, 0x2f

    aput v5, v0, v3

    const/16 v3, 0x23

    const/16 v5, 0x23

    aput v5, v0, v3

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    new-array v3, v4, [I

    move v0, v2

    :goto_5
    const/16 v5, 0x20

    if-ge v0, v5, :cond_8

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const/16 v0, 0x22

    const/16 v5, 0x22

    aput v5, v3, v0

    const/16 v0, 0x5c

    const/16 v5, 0x5c

    aput v5, v3, v0

    const/16 v0, 0x8

    const/16 v5, 0x62

    aput v5, v3, v0

    const/16 v0, 0x9

    const/16 v5, 0x74

    aput v5, v3, v0

    const/16 v0, 0xc

    const/16 v5, 0x66

    aput v5, v3, v0

    const/16 v0, 0x6e

    aput v0, v3, v8

    const/16 v0, 0xd

    const/16 v5, 0x72

    aput v5, v3, v0

    sput-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    new-array v0, v4, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move v0, v2

    :goto_6
    if-ge v0, v8, :cond_9

    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v3, v0, 0x30

    aput v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    move v0, v2

    :goto_7
    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x30

    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    array-length v2, v1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v5, v1, v4

    if-gez v5, :cond_2

    const/16 v5, 0x75

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    int-to-char v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static charToHex(I)I
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getInputCodeLatin1()[I
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static getInputCodeLatin1JsNames()[I
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method
