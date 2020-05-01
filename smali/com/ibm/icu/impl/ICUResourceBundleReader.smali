.class public final Lcom/ibm/icu/impl/ICUResourceBundleReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCacheKey;,
        Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static CACHE:Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;

.field private static final EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

.field private static final EMPTY_ARRAY:Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

.field private static final EMPTY_TABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;

.field private static final NULL_READER:Lcom/ibm/icu/impl/ICUResourceBundleReader;

.field private static PUBLIC_TYPES:[I

.field private static final emptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final emptyBytes:[B

.field private static final emptyChars:[C

.field private static final emptyInts:[I


# instance fields
.field private b16BitUnits:Ljava/nio/CharBuffer;

.field private bytes:Ljava/nio/ByteBuffer;

.field private dataVersion:I

.field private isPoolBundle:Z

.field private keyBytes:[B

.field private localKeyLimit:I

.field private noFallback:Z

.field private poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

.field private poolCheckSum:I

.field private poolStringIndex16Limit:I

.field private poolStringIndexLimit:I

.field private resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

.field private rootRes:I

.field private usesPoolBundle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader$1;)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const-string v0, "\u0000"

    .line 113
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    .line 146
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader$1;)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->CACHE:Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;

    .line 147
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->NULL_READER:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 373
    sput-object v1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    .line 374
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    new-array v1, v0, [C

    .line 375
    sput-object v1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    new-array v0, v0, [I

    .line 376
    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    .line 378
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    .line 379
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 779
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x2
        0x2
        0x0
        0x7
        0x8
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->init(Ljava/nio/ByteBuffer;)V

    .line 219
    iget-boolean p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    if-eqz p1, :cond_2

    const-string p1, "pool"

    .line 220
    invoke-static {p2, p1, p4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundleReader;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 221
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz p2, :cond_1

    .line 224
    iget p1, p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    iget p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "pool.res has a different checksum than this bundle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "pool.res is not a pool bundle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundleReader$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static RES_GET_INT(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x4

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static RES_GET_OFFSET(I)I
    .locals 1

    const v0, 0xfffffff

    and-int/2addr p0, v0

    return p0
.end method

.method static RES_GET_TYPE(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x1c

    return p0
.end method

.method static URES_IS_ARRAY(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static URES_IS_TABLE(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic access$1000(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getKey16String(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getKey32String(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->compareKeys(Ljava/lang/CharSequence;C)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->compareKeys32(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ibm/icu/impl/ICUResourceBundleReader;ILcom/ibm/icu/impl/UResource$Key;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->setKeyFromKey16(ILcom/ibm/icu/impl/UResource$Key;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ibm/icu/impl/ICUResourceBundleReader;ILcom/ibm/icu/impl/UResource$Key;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->setKeyFromKey32(ILcom/ibm/icu/impl/UResource$Key;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[C
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTableKeyOffsets(I)[C

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[C
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable16KeyOffsets(I)[C

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable32KeyOffsets(I)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Lcom/ibm/icu/impl/ICUResourceBundleReader;
    .locals 1

    .line 30
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->NULL_READER:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    return-object v0
.end method

.method static synthetic access$2200(I)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 30
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->PUBLIC_TYPES:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isNoInheritanceMarker(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ibm/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ibm/icu/impl/ICUResourceBundleReader;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    return p0
.end method

.method static synthetic access$800(Lcom/ibm/icu/impl/ICUResourceBundleReader;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    return p0
.end method

.method static synthetic access$900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result p0

    return p0
.end method

.method private compareKeys(Ljava/lang/CharSequence;C)I
    .locals 2

    .line 483
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p2, v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result p1

    return p1

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    sub-int/2addr p2, v0

    invoke-static {p1, v1, p2}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result p1

    return p1
.end method

.method private compareKeys32(Ljava/lang/CharSequence;I)I
    .locals 2

    if-ltz p2, :cond_0

    .line 491
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result p1

    return p1

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr p2, v1

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;[BI)I

    move-result p1

    return p1
.end method

.method private getChars(II)[C
    .locals 3

    .line 382
    new-array v0, p2, [C

    const/16 v1, 0x10

    if-gt p2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 385
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p2

    .line 389
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    :cond_1
    return-object v0
.end method

.method public static getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ".res"

    if-eqz p0, :cond_4

    .line 1374
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    .line 1380
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x2f

    if-ne v2, v3, :cond_2

    .line 1381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_1

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1384
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1387
    :cond_2
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1391
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1375
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_5

    .line 1376
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1378
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIndexesInt(I)I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method private getInt(I)I
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method private getInts(II)[I
    .locals 3

    .line 398
    new-array v0, p2, [I

    const/16 v1, 0x10

    if-gt p2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p2

    .line 405
    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 406
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    :cond_1
    return-object v0
.end method

.method private getKey16String(I)Ljava/lang/String;
    .locals 2

    .line 455
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKey32String(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeKeyStringFromBytes([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundleReader;
    .locals 1

    .line 231
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->CACHE:Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;

    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 233
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->NULL_READER:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private getResourceByteOffset(I)I
    .locals 0

    shl-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private getTable16KeyOffsets(I)[C
    .locals 5

    .line 411
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p1

    if-lez p1, :cond_2

    .line 413
    new-array v0, p1, [C

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 416
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    aput-char v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    .line 419
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object p1

    .line 420
    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 421
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    :cond_1
    return-object v0

    .line 425
    :cond_2
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    return-object p1
.end method

.method private getTable32KeyOffsets(I)[I
    .locals 1

    .line 437
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x4

    .line 439
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object p1

    return-object p1

    .line 441
    :cond_0
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    return-object p1
.end method

.method private getTableKeyOffsets(I)[C
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 431
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getChars(II)[C

    move-result-object p1

    return-object p1

    .line 433
    :cond_0
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyChars:[C

    return-object p1
.end method

.method private init(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 241
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;

    const v1, 0x52657342

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->dataVersion:I

    const/16 v0, 0x10

    .line 242
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 243
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    .line 244
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 249
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->rootRes:I

    .line 255
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v2

    and-int/lit16 v4, v2, 0xff

    const/4 v5, 0x4

    if-le v4, v5, :cond_d

    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v6, v5, 0x2

    if-lt p1, v6, :cond_c

    const/4 v7, 0x3

    .line 262
    invoke-direct {p0, v7}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v8

    shl-int/lit8 v9, v8, 0x2

    if-lt p1, v9, :cond_c

    const/4 p1, 0x1

    sub-int/2addr v8, p1

    if-lt v1, v7, :cond_0

    ushr-int/lit8 v1, v2, 0x8

    .line 272
    iput v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    :cond_0
    const/4 v1, 0x5

    if-le v4, v1, :cond_4

    .line 277
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 278
    :goto_0
    iput-boolean v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->noFallback:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 279
    :goto_1
    iput-boolean v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 280
    :goto_2
    iput-boolean v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->usesPoolBundle:Z

    .line 281
    iget v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    const v7, 0xf000

    and-int/2addr v7, v1

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v2, v7

    iput v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    ushr-int/lit8 v0, v1, 0x10

    .line 282
    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndex16Limit:I

    .line 286
    :cond_4
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v0

    if-le v0, v5, :cond_6

    .line 290
    iget-boolean v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v1, :cond_5

    sub-int v1, v0, v5

    shl-int/lit8 v1, v1, 0x2

    .line 295
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    .line 296
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_5
    shl-int/lit8 v1, v0, 0x2

    .line 298
    iput v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    .line 299
    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    .line 301
    :goto_3
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_6
    const/4 v1, 0x6

    if-le v4, v1, :cond_8

    .line 306
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v1

    if-le v1, v0, :cond_7

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 309
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    .line 311
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v1, p1

    or-int/2addr v8, v1

    goto :goto_4

    .line 314
    :cond_7
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    goto :goto_4

    .line 317
    :cond_8
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_16_BIT_UNITS:Ljava/nio/CharBuffer;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    :goto_4
    const/4 v0, 0x7

    if-le v4, v0, :cond_9

    .line 321
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIndexesInt(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolCheckSum:I

    .line 324
    :cond_9
    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isPoolBundle:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    if-le v0, p1, :cond_b

    .line 325
    :cond_a
    new-instance p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-direct {p1, v8}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;-><init>(I)V

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    .line 329
    :cond_b
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 263
    :cond_c
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    const-string v0, "not enough bytes"

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_d
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    const-string v0, "not enough indexes"

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isNoInheritanceMarker(I)Z
    .locals 4

    .line 589
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    .line 593
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p1

    .line 594
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    const/16 v2, 0x2205

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p1, 0x6

    .line 595
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 596
    :cond_2
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 597
    iget p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v0, p1, :cond_3

    .line 598
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-direct {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result p1

    return p1

    :cond_3
    sub-int/2addr v0, p1

    .line 600
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->isStringV2NoInheritanceMarker(I)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private isStringV2NoInheritanceMarker(I)Z
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2205

    if-ne v0, v3, :cond_1

    .line 609
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x2

    .line 610
    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 p1, p1, 0x3

    .line 611
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const v4, 0xdc03

    if-ne v0, v4, :cond_2

    .line 613
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v4, p1, 0x2

    .line 614
    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 p1, p1, 0x3

    .line 615
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static makeKeyStringFromBytes([BI)Ljava/lang/String;
    .locals 2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    :goto_0
    aget-byte v1, p0, p1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    int-to-char v1, v1

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeStringFromBytes(II)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    if-gt p2, v0, :cond_1

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 554
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    .line 555
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setKeyFromKey16(ILcom/ibm/icu/impl/UResource$Key;)V
    .locals 2

    .line 469
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->localKeyLimit:I

    if-ge p1, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/impl/UResource$Key;->setBytes([BI)Lcom/ibm/icu/impl/UResource$Key;

    goto :goto_0

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    sub-int/2addr p1, v0

    invoke-virtual {p2, v1, p1}, Lcom/ibm/icu/impl/UResource$Key;->setBytes([BI)Lcom/ibm/icu/impl/UResource$Key;

    :goto_0
    return-void
.end method

.method private setKeyFromKey32(ILcom/ibm/icu/impl/UResource$Key;)V
    .locals 2

    if-ltz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/impl/UResource$Key;->setBytes([BI)Lcom/ibm/icu/impl/UResource$Key;

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->keyBytes:[B

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/impl/UResource$Key;->setBytes([BI)Lcom/ibm/icu/impl/UResource$Key;

    :goto_0
    return-void
.end method


# virtual methods
.method getAlias(I)Ljava/lang/String;
    .locals 3

    .line 623
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 625
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 631
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 633
    :cond_1
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 634
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 635
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    .line 636
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, p1, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;
    .locals 3

    .line 729
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    .line 730
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 733
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 735
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_ARRAY:Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    return-object p1

    .line 737
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 739
    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    return-object v2

    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 741
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    .line 743
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    return-object p1
.end method

.method getBinary(I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 678
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 680
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    if-nez v0, :cond_0

    .line 685
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 691
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p1

    .line 692
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 694
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 p1, p1, 0x4

    .line 697
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 698
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 699
    invoke-static {v1}, Lcom/ibm/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 700
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 701
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method getBinary(I[B)[B
    .locals 4

    .line 644
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 646
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    if-nez v0, :cond_0

    .line 648
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    return-object p1

    .line 650
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p1

    .line 651
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 653
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyBytes:[B

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 657
    array-length v1, p2

    if-eq v1, v0, :cond_3

    .line 658
    :cond_2
    new-array p2, v0, [B

    :cond_3
    add-int/lit8 p1, p1, 0x4

    const/16 v1, 0x10

    if-gt v0, v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 663
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    aput-byte p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_0

    .line 666
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 667
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 668
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_5
    return-object p2

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method getIntVector(I)[I
    .locals 2

    .line 711
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 713
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p1

    const/16 v1, 0xe

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_0

    .line 715
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->emptyInts:[I

    return-object p1

    .line 719
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result p1

    .line 720
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 721
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInts(II)[I

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getNoFallback()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->noFallback:Z

    return v0
.end method

.method getRootResource()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->rootRes:I

    return v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 3

    .line 560
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 562
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    if-eq p1, v0, :cond_3

    .line 569
    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolStringIndexLimit:I

    if-ge v0, v1, :cond_2

    .line 570
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->poolBundleReader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int/2addr p1, v1

    .line 572
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getStringV2(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 575
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 577
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 579
    :cond_4
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getResourceByteOffset(I)I

    move-result v0

    .line 580
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getInt(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    .line 581
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->makeStringFromBytes(II)Ljava/lang/String;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getStringV2(I)Ljava/lang/String;
    .locals 4

    .line 507
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 511
    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    and-int/lit16 v2, v1, -0x400

    const v3, 0xdc00

    if-eq v2, v3, :cond_3

    if-nez v1, :cond_1

    const-string p1, ""

    return-object p1

    .line 519
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v1, v1

    .line 520
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v2, 0xdfef

    if-ge v1, v2, :cond_4

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const v3, 0xdfff

    if-ge v1, v3, :cond_5

    sub-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    .line 532
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 535
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    .line 540
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->b16BitUnits:Ljava/nio/CharBuffer;

    add-int/2addr v1, v0

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;
    .locals 4

    .line 747
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    .line 748
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 751
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_OFFSET(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 753
    sget-object p1, Lcom/ibm/icu/impl/ICUResourceBundleReader;->EMPTY_TABLE:Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    return-object p1

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 757
    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    return-object v2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 762
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    .line 763
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 765
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    .line 766
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v1

    goto :goto_0

    .line 768
    :cond_4
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V

    .line 769
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 771
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader;->resourceCache:Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    return-object p1
.end method
