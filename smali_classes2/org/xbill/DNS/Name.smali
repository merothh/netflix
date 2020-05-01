.class public Lorg/xbill/DNS/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final LABEL_COMPRESSION:I = 0xc0

.field private static final LABEL_MASK:I = 0xc0

.field private static final LABEL_NORMAL:I = 0x0

.field private static final MAXLABEL:I = 0x3f

.field private static final MAXLABELS:I = 0x80

.field private static final MAXNAME:I = 0xff

.field private static final MAXOFFSETS:I = 0x7

.field private static final byteFormat:Ljava/text/DecimalFormat;

.field public static final empty:Lorg/xbill/DNS/Name;

.field private static final emptyLabel:[B

.field private static final lowercase:[B

.field public static final root:Lorg/xbill/DNS/Name;

.field private static final serialVersionUID:J = -0x64b61d2fdd88b60cL

.field private static final wild:Lorg/xbill/DNS/Name;

.field private static final wildLabel:[B


# instance fields
.field private hashcode:I

.field private name:[B

.field private offsets:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 35
    new-array v0, v4, [B

    aput-byte v1, v0, v1

    sput-object v0, Lorg/xbill/DNS/Name;->emptyLabel:[B

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/xbill/DNS/Name;->wildLabel:[B

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    .line 60
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lorg/xbill/DNS/Name;->lowercase:[B

    .line 66
    sget-object v0, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    move v0, v1

    .line 67
    :goto_0
    sget-object v2, Lorg/xbill/DNS/Name;->lowercase:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 68
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1

    .line 69
    :cond_0
    sget-object v2, Lorg/xbill/DNS/Name;->lowercase:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    sget-object v2, Lorg/xbill/DNS/Name;->lowercase:[B

    add-int/lit8 v3, v0, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_1

    .line 73
    :cond_2
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 74
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {v0, v2, v1, v4}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 75
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    .line 76
    sget-object v0, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    new-array v2, v1, [B

    iput-object v2, v0, Lorg/xbill/DNS/Name;->name:[B

    .line 77
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    .line 78
    sget-object v0, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->wildLabel:[B

    invoke-direct {v0, v2, v1, v4}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 79
    return-void

    .line 36
    nop

    :array_0
    .array-data 1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 11

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "empty name"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 208
    :cond_0
    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    if-nez p2, :cond_2

    .line 210
    sget-object v0, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    invoke-static {v0, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 278
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    invoke-static {p2, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 214
    :cond_3
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v0, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 218
    :cond_4
    const/4 v5, -0x1

    .line 219
    const/4 v4, 0x1

    .line 220
    const/16 v0, 0x40

    new-array v9, v0, [B

    .line 221
    const/4 v3, 0x0

    .line 222
    const/4 v2, 0x0

    .line 223
    const/4 v1, 0x0

    .line 224
    const/4 v7, 0x0

    .line 225
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_e

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v8, v6

    .line 227
    if-eqz v3, :cond_9

    .line 228
    const/16 v6, 0x30

    if-lt v8, v6, :cond_7

    const/16 v6, 0x39

    if-gt v8, v6, :cond_7

    const/4 v6, 0x3

    if-ge v2, v6, :cond_7

    .line 229
    add-int/lit8 v2, v2, 0x1

    .line 230
    mul-int/lit8 v1, v1, 0xa

    .line 231
    add-int/lit8 v6, v8, -0x30

    add-int/2addr v1, v6

    .line 232
    const/16 v6, 0xff

    if-le v1, v6, :cond_5

    .line 233
    const-string/jumbo v0, "bad escape"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 234
    :cond_5
    const/4 v6, 0x3

    if-ge v2, v6, :cond_6

    .line 225
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_6
    int-to-byte v3, v1

    .line 240
    :goto_3
    const/16 v5, 0x3f

    if-le v4, v5, :cond_8

    .line 241
    const-string/jumbo v0, "label too long"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 238
    :cond_7
    if-lez v2, :cond_13

    const/4 v3, 0x3

    if-ge v2, v3, :cond_13

    .line 239
    const-string/jumbo v0, "bad escape"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 243
    :cond_8
    add-int/lit8 v5, v4, 0x1

    aput-byte v3, v9, v4

    .line 244
    const/4 v3, 0x0

    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_2

    .line 245
    :cond_9
    const/16 v6, 0x5c

    if-ne v8, v6, :cond_a

    .line 246
    const/4 v3, 0x1

    .line 247
    const/4 v2, 0x0

    .line 248
    const/4 v1, 0x0

    goto :goto_2

    .line 249
    :cond_a
    const/16 v6, 0x2e

    if-ne v8, v6, :cond_c

    .line 250
    const/4 v6, -0x1

    if-ne v5, v6, :cond_b

    .line 251
    const-string/jumbo v0, "invalid empty label"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 252
    :cond_b
    const/4 v5, 0x0

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v9, v5

    .line 253
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, v9, v4, v5}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 254
    const/4 v5, -0x1

    .line 255
    const/4 v4, 0x1

    goto :goto_2

    .line 257
    :cond_c
    const/4 v6, -0x1

    if-ne v5, v6, :cond_12

    move v6, v0

    .line 259
    :goto_4
    const/16 v5, 0x3f

    if-le v4, v5, :cond_d

    .line 260
    const-string/jumbo v0, "label too long"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 261
    :cond_d
    add-int/lit8 v5, v4, 0x1

    aput-byte v8, v9, v4

    move v4, v5

    move v5, v6

    goto :goto_2

    .line 264
    :cond_e
    if-lez v2, :cond_f

    const/4 v0, 0x3

    if-ge v2, v0, :cond_f

    .line 265
    const-string/jumbo v0, "bad escape"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 266
    :cond_f
    if-eqz v3, :cond_10

    .line 267
    const-string/jumbo v0, "bad escape"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 268
    :cond_10
    const/4 v0, -0x1

    if-ne v5, v0, :cond_11

    .line 269
    sget-object v0, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 270
    const/4 v0, 0x1

    .line 275
    :goto_5
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p2, Lorg/xbill/DNS/Name;->name:[B

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .line 277
    invoke-direct {p2}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v2

    .line 276
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    goto/16 :goto_0

    .line 272
    :cond_11
    const/4 v0, 0x0

    add-int/lit8 v1, v4, -0x1

    int-to-byte v1, v1

    aput-byte v1, v9, v0

    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v9, v0, v1}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    move v0, v7

    goto :goto_5

    :cond_12
    move v6, v5

    goto :goto_4

    :cond_13
    move v3, v8

    goto/16 :goto_3
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const/16 v0, 0x40

    new-array v4, v0, [B

    move v0, v2

    move v3, v2

    .line 351
    :cond_0
    :goto_0
    if-nez v3, :cond_6

    .line 352
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 353
    and-int/lit16 v6, v5, 0xc0

    sparse-switch v6, :sswitch_data_0

    .line 385
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "bad label type"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :sswitch_0
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v6

    const/16 v7, 0x80

    if-lt v6, v7, :cond_1

    .line 356
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "too many labels"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    if-nez v5, :cond_2

    .line 358
    sget-object v3, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {p0, v3, v2, v1}, Lorg/xbill/DNS/Name;->append([BII)V

    move v3, v1

    .line 359
    goto :goto_0

    .line 361
    :cond_2
    int-to-byte v6, v5

    aput-byte v6, v4, v2

    .line 362
    invoke-virtual {p1, v4, v1, v5}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 363
    invoke-direct {p0, v4, v2, v1}, Lorg/xbill/DNS/Name;->append([BII)V

    goto :goto_0

    .line 367
    :sswitch_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 368
    and-int/lit16 v5, v5, -0xc1

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    .line 369
    const-string/jumbo v6, "verbosecompression"

    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 370
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "currently "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", pointer to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-lt v5, v6, :cond_4

    .line 374
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string/jumbo v1, "bad compression"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_4
    if-nez v0, :cond_5

    .line 376
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->save()V

    move v0, v1

    .line 379
    :cond_5
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 380
    const-string/jumbo v6, "verbosecompression"

    invoke-static {v6}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 381
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\', seeking to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    :cond_6
    if-eqz v0, :cond_7

    .line 389
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->restore()V

    .line 391
    :cond_7
    return-void

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc0 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 3

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 410
    if-le p2, v1, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "attempted to remove too many labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    iput-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 414
    sub-int v0, v1, p2

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 415
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    sub-int v2, v1, p2

    if-ge v0, v2, :cond_1

    .line 416
    add-int v2, v0, p2

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 400
    return-void
.end method

.method private final append([BII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    move v2, p2

    move v3, v1

    move v4, v1

    .line 143
    :goto_1
    if-ge v3, p3, :cond_2

    .line 144
    aget-byte v5, p1, v2

    .line 145
    const/16 v6, 0x3f

    if-le v5, v6, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 147
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 148
    add-int/2addr v2, v5

    .line 149
    add-int/2addr v4, v5

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    :cond_2
    add-int v2, v0, v4

    .line 152
    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    .line 153
    new-instance v0, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v0}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v0

    .line 154
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    .line 155
    add-int v5, v3, p3

    .line 156
    const/16 v6, 0x80

    if-le v5, v6, :cond_4

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "too many labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_4
    new-array v2, v2, [B

    .line 159
    if-eqz v0, :cond_5

    .line 160
    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v7

    invoke-static {v6, v7, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_5
    invoke-static {p1, p2, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 163
    :goto_2
    if-ge v1, p3, :cond_6

    .line 164
    add-int v4, v3, v1

    invoke-direct {p0, v4, v0}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 165
    aget-byte v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    :cond_6
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 168
    return-void
.end method

.method private final appendFromString(Ljava/lang/String;[BII)V
    .locals 1

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string/jumbo v0, "Name too long"

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private final appendSafe([BII)V
    .locals 1

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private byteString([BI)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x5c

    .line 592
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 593
    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    move v0, v1

    .line 594
    :goto_0
    add-int v4, v1, v3

    if-ge v0, v4, :cond_4

    .line 595
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    .line 596
    const/16 v5, 0x20

    if-le v4, v5, :cond_0

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_1

    .line 597
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 598
    sget-object v5, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_1
    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    const/16 v5, 0x28

    if-eq v4, v5, :cond_2

    const/16 v5, 0x29

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_2

    if-eq v4, v8, :cond_2

    const/16 v5, 0x40

    if-eq v4, v5, :cond_2

    const/16 v5, 0x24

    if-ne v4, v5, :cond_3

    .line 603
    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 604
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 607
    :cond_3
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 609
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 4

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-object p0

    .line 430
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 431
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 432
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p1}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V

    move-object p0, v0

    .line 433
    goto :goto_0
.end method

.method private static final copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    iput-object v0, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 126
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v0, p1, Lorg/xbill/DNS/Name;->offsets:J

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .line 129
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 130
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 131
    new-array v4, v2, [B

    iput-object v4, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 132
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v5, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :goto_1
    if-ge v0, v3, :cond_1

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 134
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p1, v0, v2}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_1
    invoke-direct {p1, v3}, Lorg/xbill/DNS/Name;->setlabels(I)V

    goto :goto_0
.end method

.method private final equals([BI)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v6

    .line 773
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_4

    .line 774
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v1, v1, v2

    aget-byte v3, p1, p2

    if-eq v1, v3, :cond_1

    .line 785
    :cond_0
    :goto_1
    return v0

    .line 776
    :cond_1
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v1, v2, 0x1

    aget-byte v7, v3, v2

    .line 777
    add-int/lit8 v2, p2, 0x1

    .line 778
    const/16 v3, 0x3f

    if-le v7, v3, :cond_2

    .line 779
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v4, v2

    move v2, v1

    move v1, v0

    .line 780
    :goto_2
    if-ge v1, v7, :cond_3

    .line 781
    sget-object v8, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v8, v8, v2

    sget-object v9, Lorg/xbill/DNS/Name;->lowercase:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v9, v4

    if-ne v8, v4, :cond_0

    .line 780
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    move v2, v3

    goto :goto_2

    .line 773
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move p2, v4

    goto :goto_0

    .line 785
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 302
    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    :goto_0
    return-object p1

    .line 304
    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    sget-object p1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 307
    :cond_1
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private final getlabels()I
    .locals 4

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final offset(I)I
    .locals 5

    .prologue
    const/4 v0, 0x6

    .line 96
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    if-ltz p1, :cond_2

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "label out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    const/4 v1, 0x7

    if-ge p1, v1, :cond_4

    .line 101
    rsub-int/lit8 v0, p1, 0x7

    mul-int/lit8 v0, v0, 0x8

    .line 102
    iget-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    ushr-long v0, v2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 104
    :cond_4
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    move v4, v0

    move v0, v1

    move v1, v4

    .line 105
    :goto_1
    if-ge v1, p1, :cond_0

    .line 106
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1
.end method

.method private static parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final setlabels(I)V
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 114
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 115
    return-void
.end method

.method private final setoffset(II)V
    .locals 8

    .prologue
    .line 87
    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    rsub-int/lit8 v0, p1, 0x7

    mul-int/lit8 v0, v0, 0x8

    .line 90
    iget-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v4, 0xff

    shl-long/2addr v4, v0

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 91
    iget-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    int-to-long v4, p2

    shl-long v0, v4, v0

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    goto :goto_0
.end method


# virtual methods
.method public canonicalize()Lorg/xbill/DNS/Name;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 483
    const/4 v2, 0x1

    move v0, v1

    .line 484
    :goto_0
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 485
    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 490
    :goto_1
    if-eqz v0, :cond_1

    .line 498
    :goto_2
    return-object p0

    .line 484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_1
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 494
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 495
    :goto_3
    iget-object v2, v0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 496
    iget-object v2, v0, Lorg/xbill/DNS/Name;->name:[B

    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v4, v0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move-object p0, v0

    .line 498
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 834
    check-cast p1, Lorg/xbill/DNS/Name;

    .line 836
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 857
    :goto_0
    return v0

    .line 839
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    .line 840
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 841
    if-le v2, v1, :cond_1

    move v0, v1

    .line 843
    :goto_1
    const/4 v4, 0x1

    move v6, v4

    :goto_2
    if-gt v6, v0, :cond_5

    .line 844
    sub-int v4, v2, v6

    invoke-direct {p0, v4}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v7

    .line 845
    sub-int v4, v1, v6

    invoke-direct {p1, v4}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v8

    .line 846
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v9, v4, v7

    .line 847
    iget-object v4, p1, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v10, v4, v8

    move v5, v3

    .line 848
    :goto_3
    if-ge v5, v9, :cond_3

    if-ge v5, v10, :cond_3

    .line 849
    sget-object v4, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v11, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aget-byte v4, v4, v11

    sget-object v11, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v12, p1, Lorg/xbill/DNS/Name;->name:[B

    add-int v13, v5, v8

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    aget-byte v11, v11, v12

    sub-int/2addr v4, v11

    .line 851
    if-eqz v4, :cond_2

    move v0, v4

    .line 852
    goto :goto_0

    :cond_1
    move v0, v2

    .line 841
    goto :goto_1

    .line 848
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 854
    :cond_3
    if-eq v9, v10, :cond_4

    .line 855
    sub-int v0, v9, v10

    goto :goto_0

    .line 843
    :cond_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    .line 857
    :cond_5
    sub-int v0, v2, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 793
    if-ne p1, p0, :cond_1

    .line 794
    const/4 v0, 0x1

    .line 806
    :cond_0
    :goto_0
    return v0

    .line 795
    :cond_1
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/xbill/DNS/Name;

    if-eqz v1, :cond_0

    .line 797
    check-cast p1, Lorg/xbill/DNS/Name;

    .line 798
    iget v1, p1, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v1, :cond_2

    .line 799
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 800
    :cond_2
    iget v1, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v1, :cond_3

    .line 801
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 802
    :cond_3
    iget v1, p1, Lorg/xbill/DNS/Name;->hashcode:I

    iget v2, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-ne v1, v2, :cond_0

    .line 804
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 806
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p1, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v0

    goto :goto_0
.end method

.method public fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 509
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 510
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 511
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 512
    const/4 v0, 0x0

    .line 534
    :cond_0
    return-object v0

    .line 514
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v4

    sub-int/2addr v3, v4

    .line 515
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v4

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    sub-int/2addr v4, v0

    .line 516
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    .line 518
    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v6

    .line 519
    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->length()S

    move-result v7

    .line 521
    add-int v0, v4, v7

    const/16 v8, 0xff

    if-le v0, v8, :cond_2

    .line 522
    new-instance v0, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v0}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v0

    .line 524
    :cond_2
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 525
    add-int v8, v3, v6

    invoke-direct {v0, v8}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 526
    add-int v8, v4, v7

    new-array v8, v8, [B

    iput-object v8, v0, Lorg/xbill/DNS/Name;->name:[B

    .line 527
    iget-object v8, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v9, v0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v8, v5, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    iget-object v2, v2, Lorg/xbill/DNS/Name;->name:[B

    iget-object v5, v0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v2, v1, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v1

    .line 530
    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    add-int v4, v3, v6

    if-ge v2, v4, :cond_0

    .line 531
    invoke-direct {v0, v2, v1}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 532
    iget-object v4, v0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getLabel(I)[B
    .locals 5

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 659
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v1, v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 660
    new-array v2, v1, [B

    .line 661
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    return-object v2
.end method

.method public getLabelString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 673
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 814
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eqz v0, :cond_0

    .line 815
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    .line 820
    :goto_0
    return v0

    .line 817
    :cond_0
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 818
    shl-int/lit8 v2, v1, 0x3

    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 819
    :cond_1
    iput v1, p0, Lorg/xbill/DNS/Name;->hashcode:I

    .line 820
    iget v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 553
    if-nez v1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    aget-byte v1, v2, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWild()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 542
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    if-nez v2, :cond_0

    .line 544
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v2, v1

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v2, v0

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public labels()I
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    return v0
.end method

.method public length()S
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 563
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v1

    if-nez v1, :cond_0

    .line 565
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v1, v1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    sub-int v0, v1, v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 444
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-object p0

    .line 446
    :cond_1
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 447
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 448
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->length()S

    move-result v2

    sub-int/2addr v1, v2

    .line 449
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    sub-int/2addr v2, v3

    .line 450
    invoke-direct {v0, v2}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 451
    new-array v2, v1, [B

    iput-object v2, v0, Lorg/xbill/DNS/Name;->name:[B

    .line 452
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    iget-object v4, v0, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 453
    goto :goto_0
.end method

.method public subdomain(Lorg/xbill/DNS/Name;)Z
    .locals 3

    .prologue
    .line 581
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 582
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 583
    if-le v1, v0, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 587
    :goto_0
    return v0

    .line 585
    :cond_0
    if-ne v1, v0, :cond_1

    .line 586
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 587
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    invoke-direct {p1, v2, v0}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2e

    const/4 v1, 0x0

    .line 619
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    .line 620
    if-nez v2, :cond_0

    .line 621
    const-string/jumbo v0, "@"

    .line 639
    :goto_0
    return-object v0

    .line 622
    :cond_0
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    aget-byte v0, v0, v3

    if-nez v0, :cond_1

    .line 623
    const-string/jumbo v0, "."

    goto :goto_0

    .line 624
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 626
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v0

    .line 627
    const/16 v5, 0x3f

    if-le v4, v5, :cond_2

    .line 628
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_2
    if-nez v4, :cond_4

    .line 630
    if-nez p1, :cond_3

    .line 631
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 639
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_4
    if-lez v1, :cond_5

    .line 635
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 636
    :cond_5
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v5, v0}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 684
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toWire() called on non-absolute name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v4

    move v2, v3

    .line 689
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_5

    .line 691
    if-nez v2, :cond_2

    move-object v1, p0

    .line 695
    :goto_1
    const/4 v0, -0x1

    .line 696
    if-eqz p2, :cond_1

    .line 697
    invoke-virtual {p2, v1}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v0

    .line 698
    :cond_1
    if-ltz v0, :cond_3

    .line 699
    const v1, 0xc000

    or-int/2addr v0, v1

    .line 700
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 710
    :goto_2
    return-void

    .line 694
    :cond_2
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object v1, v0

    goto :goto_1

    .line 703
    :cond_3
    if-eqz p2, :cond_4

    .line 704
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    invoke-virtual {p2, v0, v1}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 705
    :cond_4
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    .line 706
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v1, v0, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 689
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 709
    :cond_5
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_2
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0

    .prologue
    .line 764
    if-eqz p3, :cond_0

    .line 765
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 768
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    goto :goto_0
.end method

.method public toWire()[B
    .locals 2

    .prologue
    .line 718
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 719
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 720
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v0

    .line 730
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 731
    return-void
.end method

.method public toWireCanonical()[B
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 739
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v8

    .line 740
    if-nez v8, :cond_1

    .line 741
    new-array v0, v2, [B

    .line 751
    :cond_0
    return-object v0

    .line 742
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v0, v0

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 743
    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    move v4, v2

    move v7, v2

    :goto_0
    if-ge v7, v8, :cond_0

    .line 744
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v9, v1, v5

    .line 745
    const/16 v1, 0x3f

    if-le v9, v1, :cond_2

    .line 746
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_2
    add-int/lit8 v1, v4, 0x1

    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v3, v5, 0x1

    aget-byte v5, v6, v5

    aput-byte v5, v0, v4

    move v5, v3

    move v3, v1

    move v1, v2

    .line 748
    :goto_1
    if-ge v1, v9, :cond_3

    .line 749
    add-int/lit8 v4, v3, 0x1

    sget-object v10, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v11, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v10, v5

    aput-byte v5, v0, v3

    .line 748
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    move v5, v6

    goto :goto_1

    .line 743
    :cond_3
    add-int/lit8 v1, v7, 0x1

    move v4, v3

    move v7, v1

    goto :goto_0
.end method

.method public wild(I)Lorg/xbill/DNS/Name;
    .locals 4

    .prologue
    .line 462
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must replace 1 or more labels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 467
    sget-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 468
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-object v0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Name.wild: concatenate failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
