.class public abstract Lorg/xbill/DNS/Record;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final byteFormat:Ljava/text/DecimalFormat;

.field private static final serialVersionUID:J = 0x25663ac63c372e5aL


# instance fields
.field protected dclass:I

.field protected name:Lorg/xbill/DNS/Name;

.field protected ttl:J

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    .line 28
    sget-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/Name;IIJ)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 37
    :cond_0
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 38
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 39
    invoke-static {p4, p5}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 40
    iput-object p1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 41
    iput p2, p0, Lorg/xbill/DNS/Record;->type:I

    .line 42
    iput p3, p0, Lorg/xbill/DNS/Record;->dclass:I

    .line 43
    iput-wide p4, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 44
    return-void
.end method

.method protected static byteArrayFromString(Ljava/lang/String;)[B
    .locals 13

    .prologue
    const/16 v12, 0x5c

    const/4 v7, 0x1

    const/16 v11, 0xff

    const/4 v10, 0x3

    const/4 v1, 0x0

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    move v0, v1

    .line 343
    :goto_0
    array-length v2, v8

    if-ge v0, v2, :cond_c

    .line 344
    aget-byte v2, v8, v0

    if-ne v2, v12, :cond_0

    move v0, v7

    .line 349
    :goto_1
    if-nez v0, :cond_2

    .line 350
    array-length v0, v8

    if-le v0, v11, :cond_1

    .line 351
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string/jumbo v1, "text string too long"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v8

    .line 394
    :goto_2
    return-object v0

    .line 356
    :cond_2
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 360
    :goto_3
    array-length v5, v8

    if-ge v0, v5, :cond_8

    .line 361
    aget-byte v5, v8, v0

    .line 362
    if-eqz v4, :cond_6

    .line 363
    const/16 v6, 0x30

    if-lt v5, v6, :cond_5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_5

    if-ge v3, v10, :cond_5

    .line 364
    add-int/lit8 v6, v3, 0x1

    .line 365
    mul-int/lit8 v2, v2, 0xa

    .line 366
    add-int/lit8 v3, v5, -0x30

    add-int/2addr v3, v2

    .line 367
    if-le v3, v11, :cond_3

    .line 368
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string/jumbo v1, "bad escape"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_3
    if-ge v6, v10, :cond_4

    move v2, v3

    move v3, v6

    .line 360
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 372
    :cond_4
    int-to-byte v2, v3

    move v4, v6

    .line 376
    :goto_5
    invoke-virtual {v9, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v3

    move v3, v4

    move v4, v1

    .line 377
    goto :goto_4

    .line 374
    :cond_5
    if-lez v3, :cond_b

    if-ge v3, v10, :cond_b

    .line 375
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string/jumbo v1, "bad escape"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_6
    aget-byte v5, v8, v0

    if-ne v5, v12, :cond_7

    move v2, v1

    move v3, v1

    move v4, v7

    .line 382
    goto :goto_4

    .line 385
    :cond_7
    aget-byte v5, v8, v0

    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 387
    :cond_8
    if-lez v3, :cond_9

    if-ge v3, v10, :cond_9

    .line 388
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string/jumbo v1, "bad escape"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 390
    array-length v0, v0

    if-le v0, v11, :cond_a

    .line 391
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    const-string/jumbo v1, "text string too long"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2

    :cond_b
    move v4, v3

    move v3, v2

    move v2, v5

    goto :goto_5

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method protected static byteArrayToString([BZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x22

    .line 402
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 405
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 406
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 407
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_2

    .line 408
    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 409
    sget-object v3, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_2
    if-eq v2, v6, :cond_3

    if-ne v2, v7, :cond_4

    .line 411
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 414
    :cond_4
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 416
    :cond_5
    if-eqz p1, :cond_6

    .line 417
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static checkByteArrayLength(Ljava/lang/String;[BI)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 727
    array-length v0, p1

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" array "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "must have no more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " elements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 732
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    return-object v0
.end method

.method static checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 722
    :cond_0
    return-object p1
.end method

.method static checkU16(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 700
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be an unsigned 16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_1
    return p1
.end method

.method static checkU32(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 710
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be an unsigned 32 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    return-wide p1
.end method

.method static checkU8(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 690
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 691
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be an unsigned 8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_1
    return p1
.end method

.method public static fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 9

    .prologue
    .line 495
    new-instance v6, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v6, p5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 451
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 453
    :cond_0
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 454
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 455
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 457
    invoke-virtual {p5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 458
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    const-string/jumbo v1, "\\#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    invoke-virtual {p5}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v6

    .line 460
    invoke-virtual {p5}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v0

    .line 461
    if-nez v0, :cond_1

    .line 462
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 464
    :cond_1
    array-length v1, v0

    if-eq v6, v1, :cond_2

    .line 465
    const-string/jumbo v0, "invalid unknown RR encoding: length mismatch"

    invoke-virtual {p5, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 467
    :cond_2
    new-instance v7, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v7, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 468
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 477
    :cond_3
    return-object v0

    .line 470
    :cond_4
    invoke-virtual {p5}, Lorg/xbill/DNS/Tokenizer;->unget()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 471
    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 472
    invoke-virtual {v0, p5, p6}, Lorg/xbill/DNS/Record;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 473
    invoke-virtual {p5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 474
    iget v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eq v2, v6, :cond_3

    iget v1, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eqz v1, :cond_3

    .line 475
    const-string/jumbo v0, "unexpected tokens at end of record"

    invoke-virtual {p5, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;I)Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;
    .locals 8

    .prologue
    .line 183
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 184
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    .line 185
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v3

    .line 187
    if-nez p1, :cond_0

    .line 188
    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v4

    .line 191
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v6

    .line 192
    if-nez v6, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 194
    :cond_1
    invoke-static {v1, v2, v3, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v7, p0

    .line 195
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromWire([BI)Lorg/xbill/DNS/Record;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private static final getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 56
    if-eqz p5, :cond_1

    .line 57
    invoke-static {p1}, Lorg/xbill/DNS/Type;->getProto(I)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 64
    :goto_0
    iput-object p0, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 65
    iput p1, v0, Lorg/xbill/DNS/Record;->type:I

    .line 66
    iput p2, v0, Lorg/xbill/DNS/Record;->dclass:I

    .line 67
    iput-wide p3, v0, Lorg/xbill/DNS/Record;->ttl:J

    .line 68
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lorg/xbill/DNS/UNKRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/UNKRecord;-><init>()V

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    goto :goto_0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;
    .locals 2

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;
    .locals 7

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 154
    :cond_0
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 155
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 156
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 158
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private static newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;
    .locals 7

    .prologue
    .line 82
    if-eqz p6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 83
    if-eqz p6, :cond_3

    .line 84
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-ge v1, p5, :cond_1

    .line 85
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "truncated record"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p6, p5}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 88
    invoke-virtual {v0, p6}, Lorg/xbill/DNS/Record;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 90
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 91
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "invalid record length"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->clearActive()V

    .line 94
    :cond_3
    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 111
    :cond_0
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 112
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 113
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 116
    if-eqz p6, :cond_1

    .line 117
    new-instance v7, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v7, p6}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    .line 121
    :try_start_0
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_1
    return-object v0

    :cond_1
    move-object v7, v0

    .line 119
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;
    .locals 9

    .prologue
    .line 139
    array-length v6, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 240
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 241
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 242
    if-eqz p2, :cond_0

    .line 243
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 247
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 248
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 249
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 250
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 251
    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 252
    return-void

    .line 245
    :cond_0
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    goto :goto_0
.end method

.method private toWireCanonical(Z)[B
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 261
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Record;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V

    .line 262
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected static unknownToString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 427
    const-string/jumbo v1, "\\# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 429
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-static {p0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method cloneRecord()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 601
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 651
    check-cast p1, Lorg/xbill/DNS/Record;

    .line 653
    if-ne p0, p1, :cond_0

    .line 672
    :goto_0
    return v0

    .line 656
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v2, p1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 657
    if-eqz v1, :cond_1

    move v0, v1

    .line 658
    goto :goto_0

    .line 659
    :cond_1
    iget v1, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v2, p1, Lorg/xbill/DNS/Record;->dclass:I

    sub-int/2addr v1, v2

    .line 660
    if-eqz v1, :cond_2

    move v0, v1

    .line 661
    goto :goto_0

    .line 662
    :cond_2
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    iget v2, p1, Lorg/xbill/DNS/Record;->type:I

    sub-int/2addr v1, v2

    .line 663
    if-eqz v1, :cond_3

    move v0, v1

    .line 664
    goto :goto_0

    .line 665
    :cond_3
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v2

    .line 666
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v3

    .line 667
    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_5

    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 668
    aget-byte v1, v2, v0

    and-int/lit16 v1, v1, 0xff

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v1, v4

    .line 669
    if-eqz v1, :cond_4

    move v0, v1

    .line 670
    goto :goto_0

    .line 667
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 672
    :cond_5
    array-length v0, v2

    array-length v1, v3

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 576
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/xbill/DNS/Record;

    if-nez v1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v0

    .line 578
    :cond_1
    check-cast p1, Lorg/xbill/DNS/Record;

    .line 579
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    iget v2, p1, Lorg/xbill/DNS/Record;->type:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v2, p1, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v2, p1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v0

    .line 582
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v1

    .line 583
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method abstract getObject()Lorg/xbill/DNS/Record;
.end method

.method public getRRsetType()I
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 528
    check-cast p0, Lorg/xbill/DNS/RRSIGRecord;

    .line 529
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getTypeCovered()I

    move-result v0

    .line 531
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    goto :goto_0
.end method

.method public getTTL()J
    .locals 2

    .prologue
    .line 547
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 591
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v2

    move v1, v0

    .line 593
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 594
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_0
    return v1
.end method

.method abstract rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
.end method

.method public rdataToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rdataToWireCanonical()[B
    .locals 3

    .prologue
    .line 280
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 281
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 282
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method abstract rrFromWire(Lorg/xbill/DNS/DNSInput;)V
.end method

.method abstract rrToString()Ljava/lang/String;
.end method

.method abstract rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
.end method

.method public sameRRset(Lorg/xbill/DNS/Record;)Z
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v1, p1, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v1, p1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 565
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setTTL(J)V
    .locals 1

    .prologue
    .line 636
    iput-wide p1, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 637
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    iget-object v1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 306
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 308
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_1
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string/jumbo v1, "BINDTTL"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-static {v2, v3}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :goto_0
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    iget v1, p0, Lorg/xbill/DNS/Record;->dclass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "noPrintIN"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 316
    :cond_2
    iget v1, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :cond_3
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 322
    const-string/jumbo v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_5
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 215
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 216
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 217
    if-nez p2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 220
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 221
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 222
    invoke-virtual {p0, p1, p3, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 223
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 224
    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    goto :goto_0
.end method

.method public toWire(I)[B
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 233
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 234
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWireCanonical()[B
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v0

    return-object v0
.end method

.method withDClass(IJ)Lorg/xbill/DNS/Record;
    .locals 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 628
    iput p1, v0, Lorg/xbill/DNS/Record;->dclass:I

    .line 629
    iput-wide p2, v0, Lorg/xbill/DNS/Record;->ttl:J

    .line 630
    return-object v0
.end method

.method public withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 616
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 617
    iput-object p1, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 618
    return-object v0
.end method
