.class public Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;
.super Lo/ExtractButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;
    }
.end annotation


# static fields
.field private static final w:[I


# instance fields
.field protected f:I

.field protected h:Z

.field protected final i:Ljava/io/OutputStream;

.field protected final j:Lo/AbstractInputMethodService;

.field protected k:I

.field protected l:[C

.field protected final m:I

.field protected n:[B

.field protected final o:I

.field protected p:Z

.field protected q:[I

.field protected r:I

.field protected s:I

.field protected t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 22
    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->w:[I

    return-void
.end method

.method public constructor <init>(Lo/AbstractInputMethodService;IILo/UsbManager;Ljava/io/OutputStream;)V
    .locals 0

    .line 218
    invoke-direct {p0, p2, p4}, Lo/ExtractButton;-><init>(ILo/UsbManager;)V

    const/4 p2, 0x0

    .line 158
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    .line 187
    sget-object p2, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->w:[I

    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->q:[I

    const/4 p2, -0x2

    .line 196
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    .line 219
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f:I

    .line 220
    sget-object p2, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->b:Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->d(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->h:Z

    .line 221
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->j:Lo/AbstractInputMethodService;

    .line 222
    iput-object p5, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->i:Ljava/io/OutputStream;

    const/4 p2, 0x1

    .line 223
    iput-boolean p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->p:Z

    const/16 p2, 0x3e80

    .line 224
    invoke-virtual {p1, p2}, Lo/AbstractInputMethodService;->a(I)[B

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    .line 225
    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    array-length p2, p2

    iput p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    .line 226
    invoke-virtual {p1}, Lo/AbstractInputMethodService;->a()[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->l:[C

    .line 227
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->l:[C

    array-length p1, p1

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->o:I

    .line 229
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    const/16 p2, 0x302

    if-lt p1, p2, :cond_0

    return-void

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Internal encoding buffer length ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ") too short, must be at least "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(IILjava/lang/String;II)I
    .locals 4

    .line 1420
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    :goto_0
    if-ge p1, p4, :cond_7

    add-int/lit8 v1, p1, 0x1

    .line 1423
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    int-to-byte p1, p1

    .line 1425
    aput-byte p1, v0, p2

    :goto_1
    move p1, v1

    move p2, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x800

    if-ge p1, v2, :cond_1

    add-int/lit8 v2, p2, 0x1

    shr-int/lit8 v3, p1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    .line 1430
    aput-byte v3, v0, p2

    add-int/lit8 p2, v2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 1431
    aput-byte p1, v0, v2

    move p1, v1

    goto :goto_0

    :cond_1
    const v2, 0xd800

    if-lt p1, v2, :cond_6

    const v2, 0xdfff

    if-le p1, v2, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0xdbff

    if-le p1, v2, :cond_3

    .line 1445
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g(I)V

    :cond_3
    if-lt v1, p4, :cond_4

    .line 1449
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g(I)V

    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 1451
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b(II)I

    move-result p1

    const v1, 0x10ffff

    if-le p1, v1, :cond_5

    .line 1453
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g(I)V

    :cond_5
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v3, p1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    .line 1455
    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1456
    aput-byte v3, v0, v1

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1457
    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 1458
    aput-byte p1, v0, v1

    move p1, v2

    goto :goto_0

    :cond_6
    :goto_2
    add-int/lit8 v2, p2, 0x1

    shr-int/lit8 v3, p1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    .line 1438
    aput-byte v3, v0, p2

    add-int/lit8 p2, v2, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1439
    aput-byte v3, v0, v2

    add-int/lit8 v2, p2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 1440
    aput-byte p1, v0, p2

    goto/16 :goto_1

    :cond_7
    sub-int/2addr p2, p5

    return p2
.end method

.method private final a(I[CII)I
    .locals 7

    .line 1344
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    move v5, p1

    move v3, p3

    .line 1347
    :goto_0
    aget-char p3, p2, v3

    const/16 v1, 0x7f

    if-le p3, v1, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v6, p1

    .line 1349
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e([CIIII)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v5, 0x1

    int-to-byte p3, p3

    .line 1351
    aput-byte p3, v0, v5

    add-int/lit8 v3, v3, 0x1

    if-lt v3, p4, :cond_1

    sub-int/2addr v1, p1

    return v1

    :cond_1
    move v5, v1

    goto :goto_0
.end method

.method private final a(J)V
    .locals 4

    .line 653
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->h:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    long-to-int p2, p1

    .line 655
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->j(I)V

    return-void

    :cond_0
    const/16 v0, 0x9

    .line 659
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f(I)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    neg-long p1, p1

    .line 663
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    :goto_0
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    .line 668
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 669
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 670
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 671
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    long-to-int p2, p1

    .line 673
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 674
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 675
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 676
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method private final a([BII)V
    .locals 3

    .line 1619
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    if-lt v0, v1, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g()V

    .line 1623
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1624
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1625
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    return-void

    :cond_1
    add-int/2addr p2, v0

    .line 1630
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g()V

    goto :goto_0
.end method

.method private b(II)I
    .locals 3

    const v0, 0xdc00

    if-lt p2, v0, :cond_0

    const v1, 0xdfff

    if-gt p2, v1, :cond_0

    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v1

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1

    .line 1469
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", second 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; illegal combination"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c(ILjava/lang/String;I)I
    .locals 8

    .line 1405
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    const/4 v1, 0x0

    move v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    .line 1409
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move v7, p1

    .line 1411
    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(IILjava/lang/String;II)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v4, 0x1

    int-to-byte v1, v1

    .line 1413
    aput-byte v1, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v2

    goto :goto_0

    :cond_1
    sub-int/2addr v4, p1

    return v4
.end method

.method private final c(II)V
    .locals 4

    const/4 v0, 0x5

    .line 1547
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f(I)V

    const/16 v0, 0x18

    if-ge p2, v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_0
    const/16 v1, 0xff

    if-gt p2, v1, :cond_1

    .line 1553
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1554
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    return-void

    :cond_1
    int-to-byte v0, p2

    shr-int/lit8 p2, p2, 0x8

    if-gt p2, v1, :cond_2

    .line 1560
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 p1, p1, 0x19

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1561
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    .line 1562
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    aput-byte v0, v1, p1

    return-void

    .line 1565
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 p1, p1, 0x1a

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1566
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 1567
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 1568
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    .line 1569
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    aput-byte v0, v1, p1

    return-void
.end method

.method private final d(B)V
    .locals 3

    .line 1573
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    if-lt v0, v1, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g()V

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private final d([BII)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 1590
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    if-lt v1, v2, :cond_1

    .line 1591
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a([BII)V

    return-void

    .line 1595
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1596
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    return-void
.end method

.method private final e([CIIII)I
    .locals 4

    .line 1363
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    :goto_0
    if-ge p2, p3, :cond_7

    add-int/lit8 v1, p2, 0x1

    .line 1365
    aget-char p2, p1, p2

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_0

    add-int/lit8 v2, p4, 0x1

    int-to-byte p2, p2

    .line 1367
    aput-byte p2, v0, p4

    :goto_1
    move p2, v1

    move p4, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x800

    if-ge p2, v2, :cond_1

    add-int/lit8 v2, p4, 0x1

    shr-int/lit8 v3, p2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    .line 1372
    aput-byte v3, v0, p4

    add-int/lit8 p4, v2, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 1373
    aput-byte p2, v0, v2

    move p2, v1

    goto :goto_0

    :cond_1
    const v2, 0xd800

    if-lt p2, v2, :cond_6

    const v2, 0xdfff

    if-le p2, v2, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0xdbff

    if-le p2, v2, :cond_3

    .line 1386
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g(I)V

    :cond_3
    if-lt v1, p3, :cond_4

    .line 1390
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g(I)V

    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 1392
    aget-char v1, p1, v1

    invoke-direct {p0, p2, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b(II)I

    move-result p2

    const v1, 0x10ffff

    if-le p2, v1, :cond_5

    .line 1394
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g(I)V

    :cond_5
    add-int/lit8 v1, p4, 0x1

    shr-int/lit8 v3, p2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    .line 1396
    aput-byte v3, v0, p4

    add-int/lit8 p4, v1, 0x1

    shr-int/lit8 v3, p2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1397
    aput-byte v3, v0, v1

    add-int/lit8 v1, p4, 0x1

    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1398
    aput-byte v3, v0, p4

    add-int/lit8 p4, v1, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 1399
    aput-byte p2, v0, v1

    move p2, v2

    goto :goto_0

    :cond_6
    :goto_2
    add-int/lit8 v2, p4, 0x1

    shr-int/lit8 v3, p2, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    .line 1379
    aput-byte v3, v0, p4

    add-int/lit8 p4, v2, 0x1

    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1380
    aput-byte v3, v0, v2

    add-int/lit8 v2, p4, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 1381
    aput-byte p2, v0, p4

    goto/16 :goto_1

    :cond_7
    sub-int/2addr p4, p5

    return p4
.end method

.method private final f()V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->q:[I

    array-length v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->t:I

    if-ne v1, v2, :cond_0

    .line 605
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->q:[I

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->q:[I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->t:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    aput v2, v0, v1

    return-void
.end method

.method private final f(I)V
    .locals 1

    .line 1508
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    if-lt v0, p1, :cond_0

    .line 1509
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g()V

    :cond_0
    return-void
.end method

.method private g(I)V
    .locals 4

    const-string v0, "Illegal character point (0x"

    const v1, 0x10ffff

    if-gt p1, v1, :cond_2

    const v1, 0xd800

    if-lt p1, v1, :cond_1

    const v0, 0xdbff

    const-string v1, ")"

    if-gt p1, v0, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1497
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") to output"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1481
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1090
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    .line 1091
    invoke-virtual {v1}, Lo/IInputMethodSessionWrapper;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s size mismatch: number of element encoded is not equal to reported array/map size."

    .line 1090
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final i()V
    .locals 5

    .line 1669
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1676
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    .line 1677
    invoke-virtual {v4}, Lo/IInputMethodSessionWrapper;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "%s size mismatch: expected %d more elements"

    .line 1676
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1671
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(B)V

    .line 1679
    :cond_1
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->t:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->q:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->t:I

    aget v2, v2, v0

    :goto_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    return-void
.end method

.method private final j(I)V
    .locals 5

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    .line 620
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f(I)V

    .line 623
    iget-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->h:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x18

    if-ge p1, v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr v0, p1

    int-to-byte p1, v0

    aput-byte p1, v1, v2

    return-void

    :cond_1
    const/16 v2, 0xff

    if-gt p1, v2, :cond_2

    .line 629
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 630
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    return-void

    :cond_2
    int-to-byte v1, p1

    shr-int/lit8 p1, p1, 0x8

    if-gt p1, v2, :cond_4

    .line 636
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 637
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 638
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    aput-byte v1, v2, p1

    return-void

    :cond_3
    int-to-byte v1, p1

    shr-int/lit8 p1, p1, 0x8

    .line 645
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 646
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 647
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 648
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 649
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    aput-byte v1, v2, p1

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "start an array"

    .line 490
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0}, Lo/IInputMethodSessionWrapper;->f()Lo/IInputMethodSessionWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    .line 492
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->t:I

    if-lez v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f()V

    :cond_0
    const/4 v0, -0x2

    .line 495
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    const/16 v0, -0x61

    .line 496
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(B)V

    return-void
.end method

.method public a(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xc0

    .line 1158
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(II)V

    return-void

    .line 1155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not write negative tag ids ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a([CII)V
    .locals 4

    const/16 v0, 0x78

    const/16 v1, 0x17

    if-gt p3, v1, :cond_1

    const/16 v2, 0x47

    .line 1246
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(I)V

    .line 1247
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr p3, p2

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(I[CII)I

    move-result p1

    .line 1248
    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    .line 1249
    iget p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    if-gt p1, v1, :cond_0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x60

    int-to-byte v1, v1

    .line 1251
    aput-byte v1, p2, p3

    add-int/2addr v0, p1

    .line 1252
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    return-void

    :cond_0
    add-int/lit8 v1, p3, 0x1

    add-int/lit8 v2, p3, 0x2

    .line 1256
    invoke-static {p2, v1, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1257
    aput-byte v0, p2, p3

    add-int/lit8 p3, v1, 0x1

    int-to-byte v0, p1

    .line 1258
    aput-byte v0, p2, v1

    add-int/2addr p3, p1

    .line 1259
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    return-void

    :cond_1
    const/16 v1, 0x79

    const/16 v2, 0xff

    if-gt p3, v2, :cond_3

    const/16 v3, 0x300

    .line 1263
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(I)V

    .line 1264
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr p3, p2

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(I[CII)I

    move-result p1

    .line 1265
    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    .line 1266
    iget p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    if-gt p1, v2, :cond_2

    add-int/lit8 v1, p3, 0x1

    .line 1268
    aput-byte v0, p2, p3

    add-int/lit8 p3, v1, 0x1

    int-to-byte v0, p1

    .line 1269
    aput-byte v0, p2, v1

    add-int/2addr p3, p1

    .line 1270
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    return-void

    :cond_2
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v2, p3, 0x3

    .line 1274
    invoke-static {p2, v0, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p3, 0x1

    .line 1275
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 1276
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    .line 1277
    aput-byte v1, p2, p3

    add-int/2addr v0, p1

    .line 1278
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    return-void

    :cond_3
    const/16 v0, 0xf9c

    if-gt p3, v0, :cond_4

    const/16 v0, 0x2ed7

    .line 1283
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(I)V

    .line 1285
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v0, 0x3

    add-int/2addr p3, p2

    .line 1286
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(I[CII)I

    move-result p1

    .line 1287
    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    add-int/lit8 p3, v0, 0x1

    .line 1288
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 1289
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    int-to-byte v1, p1

    .line 1290
    aput-byte v1, p2, v0

    add-int/2addr p3, p1

    .line 1291
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    return-void

    .line 1294
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b([CII)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0}, Lo/IInputMethodSessionWrapper;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not Object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v1}, Lo/IInputMethodSessionWrapper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(Ljava/lang/String;)V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->i()V

    .line 563
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0}, Lo/IInputMethodSessionWrapper;->i()Lo/IInputMethodSessionWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    return-void
.end method

.method public b(I)V
    .locals 5

    const-string v0, "write number"

    .line 875
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    .line 883
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f(I)V

    .line 885
    iget-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->h:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x18

    if-ge p1, v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr v0, p1

    int-to-byte p1, v0

    aput-byte p1, v1, v2

    return-void

    :cond_1
    const/16 v2, 0xff

    if-gt p1, v2, :cond_2

    .line 891
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 892
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    return-void

    :cond_2
    int-to-byte v1, p1

    shr-int/lit8 p1, p1, 0x8

    if-gt p1, v2, :cond_4

    .line 898
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 899
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 900
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    aput-byte v1, v2, p1

    return-void

    :cond_3
    int-to-byte v1, p1

    shr-int/lit8 p1, p1, 0x8

    .line 907
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 908
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 909
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 910
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 911
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    aput-byte v1, v2, p1

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->j()V

    return-void

    :cond_0
    const-string v0, "write String value"

    .line 712
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected final b([CII)V
    .locals 6

    const/16 v0, 0x7f

    .line 1301
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(B)V

    :goto_0
    const/16 v0, 0xf9c

    if-le p3, v0, :cond_1

    const/16 v1, 0x2ed7

    .line 1304
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(I)V

    .line 1305
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit16 v2, p2, 0xf9c

    add-int/lit8 v3, v2, -0x1

    .line 1310
    aget-char v3, p1, v3

    const v4, 0xd800

    if-lt v3, v4, :cond_0

    const v4, 0xdbff

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    const/16 v0, 0xf9b

    .line 1315
    :cond_0
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v3, 0x3

    invoke-direct {p0, v3, p1, p2, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(I[CII)I

    move-result v2

    .line 1316
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x79

    .line 1317
    aput-byte v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    .line 1318
    aput-byte v5, v3, v4

    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v2

    .line 1319
    aput-byte v5, v3, v1

    add-int/2addr v4, v2

    .line 1320
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    .line 1326
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a([CII)V

    :cond_2
    const/4 p1, -0x1

    .line 1329
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(B)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0}, Lo/IInputMethodSessionWrapper;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not Array but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v1}, Lo/IInputMethodSessionWrapper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(Ljava/lang/String;)V

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->i()V

    .line 519
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0}, Lo/IInputMethodSessionWrapper;->i()Lo/IInputMethodSessionWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    return-void
.end method

.method public c(I)V
    .locals 1

    const-string v0, "start an array"

    .line 506
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0}, Lo/IInputMethodSessionWrapper;->f()Lo/IInputMethodSessionWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    .line 508
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f()V

    .line 509
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    const/16 v0, 0x80

    .line 510
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(II)V

    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/IInputMethodSessionWrapper;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "Can not write a field name, expecting a value"

    .line 424
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(Ljava/lang/String;)V

    .line 426
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(J)V

    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 4

    .line 1202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x60

    .line 1204
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(B)V

    return-void

    :cond_0
    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    const/16 v2, 0x47

    .line 1209
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(I)V

    .line 1211
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2, p1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(ILjava/lang/String;I)I

    move-result p1

    .line 1212
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    .line 1213
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    if-gt p1, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, p1, 0x60

    int-to-byte v3, v3

    .line 1215
    aput-byte v3, v0, v2

    add-int/2addr v1, p1

    .line 1216
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    return-void

    :cond_1
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, v2, 0x2

    .line 1220
    invoke-static {v0, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x78

    .line 1221
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, p1

    .line 1222
    aput-byte v3, v0, v1

    add-int/2addr v2, p1

    .line 1223
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    return-void

    .line 1227
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->l:[C

    .line 1228
    array-length v2, v1

    if-le v0, v2, :cond_3

    .line 1229
    array-length v1, v1

    add-int/lit8 v1, v1, 0x20

    .line 1230
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->l:[C

    :cond_3
    const/4 v2, 0x0

    .line 1232
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1233
    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a([CII)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->d:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 1112
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d()Lo/UsbEndpoint;

    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Lo/UsbEndpoint;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c()V

    goto :goto_0

    .line 1117
    :cond_0
    invoke-virtual {v0}, Lo/UsbEndpoint;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b()V

    goto :goto_0

    .line 1125
    :cond_1
    invoke-super {p0}, Lo/ExtractButton;->close()V

    .line 1126
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g()V

    .line 1128
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->j:Lo/AbstractInputMethodService;

    invoke-virtual {v0}, Lo/AbstractInputMethodService;->c()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->b:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 1129
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1133
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 1130
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1136
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e()V

    return-void
.end method

.method protected final d(I)V
    .locals 1

    .line 1237
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x3

    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->m:I

    if-le v0, p1, :cond_0

    .line 1238
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g()V

    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 4

    .line 916
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->h:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    long-to-int p2, p1

    .line 919
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b(I)V

    return-void

    :cond_0
    const-string v0, "write number"

    .line 923
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 924
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f(I)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    neg-long p1, p1

    .line 928
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    goto :goto_0

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    :goto_0
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    .line 933
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 934
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 935
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 936
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    long-to-int p2, p1

    .line 938
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 939
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 940
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 941
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public d(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 0

    if-nez p2, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->j()V

    return-void

    :cond_0
    const-string p1, "write Binary value"

    .line 816
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    const/16 p1, 0x40

    .line 817
    invoke-direct {p0, p1, p4}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(II)V

    .line 818
    invoke-direct {p0, p2, p3, p4}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d([BII)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0}, Lo/IInputMethodSessionWrapper;->j()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expecting field name"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(Ljava/lang/String;)V

    .line 1073
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    .line 1081
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->h()V

    return-void

    .line 1084
    :cond_1
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    :cond_2
    return-void
.end method

.method public e()V
    .locals 3

    .line 1642
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1643
    iget-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->p:Z

    if-eqz v2, :cond_0

    .line 1644
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    .line 1645
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->j:Lo/AbstractInputMethodService;

    invoke-virtual {v2, v0}, Lo/AbstractInputMethodService;->d([B)V

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->l:[C

    if-eqz v0, :cond_1

    .line 1649
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->l:[C

    .line 1650
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->j:Lo/AbstractInputMethodService;

    invoke-virtual {v1, v0}, Lo/AbstractInputMethodService;->a([C)V

    :cond_1
    return-void
.end method

.method public e(D)V
    .locals 4

    const-string v0, "write number"

    .line 976
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 977
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f(I)V

    .line 984
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    .line 985
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v2, v1

    .line 988
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 989
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 990
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 991
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    long-to-int p2, p1

    .line 993
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 994
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 995
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 996
    iget p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public final e(I)V
    .locals 1

    const-string v0, "start an object"

    .line 550
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0}, Lo/IInputMethodSessionWrapper;->h()Lo/IInputMethodSessionWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    .line 552
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->f()V

    .line 553
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->r:I

    const/16 v0, 0xa0

    .line 554
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(II)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b:Lo/IInputMethodSessionWrapper;

    invoke-virtual {v0, p1}, Lo/IInputMethodSessionWrapper;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "Can not write a field name, expecting a value"

    .line 399
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->a(Ljava/lang/String;)V

    .line 401
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    const-string v0, "write boolean value"

    .line 859
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, -0xb

    .line 861
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(B)V

    goto :goto_0

    :cond_0
    const/16 p1, -0xc

    .line 863
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(B)V

    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1102
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->g()V

    .line 1103
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->e:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 4

    .line 1655
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    if-lez v0, :cond_0

    .line 1656
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->s:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->s:I

    .line 1657
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->i:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->n:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1658
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->k:I

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    const-string v0, "write null value"

    .line 869
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(Ljava/lang/String;)V

    const/16 v0, -0xa

    .line 870
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(B)V

    return-void
.end method
