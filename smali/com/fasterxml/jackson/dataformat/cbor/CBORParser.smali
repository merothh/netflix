.class public Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
.super Lo/UsbRequest;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;
    }
.end annotation


# static fields
.field static final O:Ljava/math/BigInteger;

.field static final P:Ljava/math/BigInteger;

.field static final Q:Ljava/math/BigInteger;

.field static final S:Ljava/math/BigInteger;

.field static final U:Ljava/math/BigDecimal;

.field static final V:Ljava/math/BigDecimal;

.field static final W:Ljava/math/BigDecimal;

.field static final X:Ljava/math/BigDecimal;

.field private static final ad:D

.field private static final ae:Ljava/nio/charset/Charset;

.field private static final af:D

.field private static final ag:[I

.field private static final aj:Ljava/math/BigInteger;


# instance fields
.field protected A:Lo/LogMaker;

.field protected B:Z

.field protected C:[C

.field protected final D:Lo/KeyboardView;

.field protected E:Ljava/io/InputStream;

.field protected F:I

.field protected G:Z

.field protected H:Z

.field protected I:[B

.field protected J:[I

.field protected K:I

.field protected final L:Lo/ExtractEditText;

.field protected M:I

.field protected N:I

.field protected R:I

.field protected T:I

.field protected Y:Ljava/math/BigInteger;

.field protected Z:F

.field protected aa:J

.field protected ab:I

.field protected ac:D

.field protected ah:Ljava/math/BigDecimal;

.field private ai:I

.field private ak:I

.field protected k:Lo/UsbManager;

.field protected final n:Lo/AbstractInputMethodService;

.field protected p:I

.field protected q:I

.field protected r:J

.field protected s:I

.field protected t:Z

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:J

.field protected y:Lo/Credentials;

.field protected z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "UTF-8"

    .line 58
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ae:Ljava/nio/charset/Charset;

    .line 60
    sget-object v0, Lo/ConnectivityManager;->a:[I

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ag:[I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 63
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sput-wide v2, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->af:D

    const-wide/high16 v2, -0x3fd4000000000000L    # -14.0

    .line 64
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ad:D

    const-wide/32 v0, -0x80000000

    .line 300
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->O:Ljava/math/BigInteger;

    const-wide/32 v0, 0x7fffffff

    .line 301
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Q:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    .line 303
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 304
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S:Ljava/math/BigInteger;

    .line 306
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V:Ljava/math/BigDecimal;

    .line 307
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->X:Ljava/math/BigDecimal;

    .line 309
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->O:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->U:Ljava/math/BigDecimal;

    .line 310
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Q:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->W:Ljava/math/BigDecimal;

    .line 3159
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aj:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lo/AbstractInputMethodService;IILo/UsbManager;Lo/ExtractEditText;Ljava/io/InputStream;[BIIZ)V
    .locals 3

    .line 344
    invoke-direct {p0, p2}, Lo/UsbRequest;-><init>(I)V

    const/4 p3, 0x0

    .line 107
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 112
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r:J

    const/4 v2, 0x1

    .line 130
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->q:I

    .line 138
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->u:I

    .line 154
    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->x:J

    .line 159
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->w:I

    .line 165
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->v:I

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->C:[C

    .line 198
    iput-boolean p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->B:Z

    .line 204
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->A:Lo/LogMaker;

    const/4 v1, -0x1

    .line 217
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    .line 259
    iput-boolean p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    .line 285
    sget-object v2, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c:[I

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J:[I

    .line 319
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    .line 345
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n:Lo/AbstractInputMethodService;

    .line 346
    iput-object p4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->k:Lo/UsbManager;

    .line 347
    iput-object p5, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    .line 349
    iput-object p6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E:Ljava/io/InputStream;

    .line 350
    iput-object p7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    .line 351
    iput p8, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 352
    iput p9, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    .line 353
    iput-boolean p10, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->H:Z

    .line 354
    invoke-virtual {p1}, Lo/AbstractInputMethodService;->b()Lo/KeyboardView;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    .line 355
    sget-object p1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->m:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    invoke-static {p0}, Lo/CompactExtractEditLayout;->b(Lcom/fasterxml/jackson/core/JsonParser;)Lo/CompactExtractEditLayout;

    move-result-object v0

    .line 357
    :cond_0
    invoke-static {v0}, Lo/Credentials;->e(Lo/CompactExtractEditLayout;)Lo/Credentials;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 359
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->w:I

    .line 360
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->v:I

    return-void
.end method

.method private final B(I)I
    .locals 4

    .line 2985
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, v0, 0xff

    .line 2987
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_0
    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2990
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2992
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2995
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_2

    and-int/lit16 v1, v0, 0xff

    .line 2997
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_2
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    const/high16 v0, 0x10000

    sub-int/2addr p1, v0

    return p1
.end method

.method private final J()I
    .locals 3

    .line 2170
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 2171
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-ge v0, v1, :cond_0

    .line 2172
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    aget-byte v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2173
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    return v1

    .line 2176
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2177
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final K()I
    .locals 2

    .line 2181
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 2184
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    if-lt v0, v1, :cond_0

    .line 2185
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->M()I

    move-result v0

    return v0

    .line 2187
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    aget-byte v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2188
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    return v1
.end method

.method private final M()I
    .locals 4

    .line 2197
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 2198
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2199
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    if-lez v0, :cond_1

    .line 2200
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v1, v0

    .line 2201
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-gt v1, v0, :cond_0

    .line 2202
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2203
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 2205
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2206
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    .line 2209
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    return v0

    :cond_1
    const/4 v0, 0x3

    .line 2212
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->w(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 2215
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, ": chunked Text ends with partial UTF-8 character"

    invoke-virtual {p0, v3, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 2218
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v1, v0

    .line 2219
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-gt v1, v0, :cond_3

    .line 2220
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2221
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    goto :goto_1

    :cond_3
    sub-int/2addr v1, v0

    .line 2223
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2224
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    .line 2227
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final N()V
    .locals 10

    .line 2079
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->b()[C

    move-result-object v0

    .line 2081
    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ag:[I

    .line 2082
    array-length v2, v0

    .line 2083
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    .line 2085
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    const/4 v4, 0x0

    .line 2086
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    move v5, v2

    const/4 v2, 0x0

    .line 2090
    :goto_0
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    const/4 v8, 0x3

    if-lt v6, v7, :cond_4

    .line 2092
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    if-nez v6, :cond_2

    .line 2093
    invoke-direct {p0, v8}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->w(I)I

    move-result v6

    if-gez v6, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0, v2}, Lo/KeyboardView;->a(I)V

    return-void

    .line 2097
    :cond_0
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2098
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v7, v6

    .line 2099
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-gt v7, v6, :cond_1

    .line 2100
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2101
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    goto :goto_1

    :cond_1
    sub-int/2addr v7, v6

    .line 2103
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2104
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    .line 2108
    :cond_2
    :goto_1
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v6, v7, :cond_4

    .line 2109
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2110
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    add-int/2addr v6, v7

    .line 2111
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-gt v6, v7, :cond_3

    .line 2112
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2113
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    goto :goto_2

    :cond_3
    sub-int/2addr v6, v7

    .line 2115
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ak:I

    .line 2116
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ai:I

    .line 2120
    :cond_4
    :goto_2
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    .line 2121
    aget v7, v1, v6

    if-nez v7, :cond_5

    if-ge v2, v5, :cond_5

    add-int/lit8 v7, v2, 0x1

    int-to-char v6, v6

    .line 2123
    aput-char v6, v0, v2

    :goto_3
    move v2, v7

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_b

    const/4 v9, 0x1

    if-eq v7, v9, :cond_9

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    if-eq v7, v8, :cond_6

    .line 2155
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->m(I)V

    goto :goto_4

    .line 2142
    :cond_6
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->B(I)I

    move-result v6

    .line 2144
    array-length v7, v0

    if-lt v2, v7, :cond_7

    .line 2145
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->d()[C

    move-result-object v0

    .line 2147
    array-length v2, v0

    move v5, v2

    const/4 v2, 0x0

    :cond_7
    add-int/lit8 v7, v2, 0x1

    const v8, 0xd800

    shr-int/lit8 v9, v6, 0xa

    or-int/2addr v8, v9

    int-to-char v8, v8

    .line 2149
    aput-char v8, v0, v2

    const v2, 0xdc00

    and-int/lit16 v6, v6, 0x3ff

    or-int/2addr v6, v2

    move v2, v7

    goto :goto_4

    .line 2139
    :cond_8
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->x(I)I

    move-result v6

    goto :goto_4

    .line 2131
    :cond_9
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K()I

    move-result v7

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_a

    and-int/lit16 v8, v7, 0xff

    .line 2133
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v8, v9}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_a
    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    :cond_b
    :goto_4
    if-lt v2, v5, :cond_c

    .line 2159
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->d()[C

    move-result-object v0

    .line 2161
    array-length v2, v0

    move v5, v2

    const/4 v2, 0x0

    :cond_c
    add-int/lit8 v7, v2, 0x1

    int-to-char v6, v6

    .line 2164
    aput-char v6, v0, v2

    goto :goto_3
.end method

.method private final O()Ljava/lang/String;
    .locals 1

    .line 2422
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->N()V

    .line 2423
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final P()I
    .locals 3

    .line 2813
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v0, v1, :cond_0

    .line 2814
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2816
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private Q()F
    .locals 10

    .line 2794
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0xf

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    shr-int/lit8 v2, v0, 0xa

    const/16 v3, 0x1f

    and-int/2addr v2, v3

    and-int/lit16 v0, v0, 0x3ff

    if-nez v2, :cond_2

    .line 2801
    sget-wide v2, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ad:D

    int-to-double v4, v0

    sget-wide v6, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->af:D

    div-double/2addr v4, v6

    mul-double v2, v2, v4

    double-to-float v0, v2

    if-eqz v1, :cond_1

    neg-float v0, v0

    :cond_1
    return v0

    :cond_2
    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_3

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    :cond_3
    if-eqz v1, :cond_4

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_1

    :cond_4
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_1
    return v0

    :cond_5
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    add-int/lit8 v2, v2, -0xf

    int-to-double v5, v2

    .line 2808
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v0

    sget-wide v8, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->af:D

    div-double/2addr v6, v8

    add-double/2addr v6, v4

    mul-double v2, v2, v6

    double-to-float v0, v2

    if-eqz v1, :cond_6

    neg-float v0, v0

    :cond_6
    return v0
.end method

.method private final R()I
    .locals 4

    .line 2831
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v0, v1, :cond_0

    .line 2832
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2834
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2835
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_1

    .line 2836
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    .line 2838
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private final S()I
    .locals 4

    .line 2820
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v1, v0, 0x1

    .line 2821
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_0

    .line 2822
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->R()I

    move-result v0

    return v0

    .line 2824
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    .line 2825
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x2

    .line 2826
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    return v3
.end method

.method private final T()I
    .locals 4

    .line 2842
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v1, v0, 0x3

    .line 2843
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_0

    .line 2844
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->W()I

    move-result v0

    return v0

    .line 2846
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    add-int/lit8 v2, v0, 0x1

    .line 2847
    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 2849
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    return v0
.end method

.method private final U()J
    .locals 2

    .line 2887
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result v0

    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->b(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private final V()J
    .locals 5

    .line 2873
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v1, v0, 0x7

    .line 2874
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_0

    .line 2875
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->U()J

    move-result-wide v0

    return-wide v0

    .line 2877
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    add-int/lit8 v2, v0, 0x1

    .line 2878
    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 2880
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v3, v1

    .line 2882
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 2883
    invoke-static {v0, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->b(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private final W()I
    .locals 4

    .line 2854
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v0, v1, :cond_0

    .line 2855
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2857
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    .line 2858
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_1

    .line 2859
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    .line 2861
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 2862
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_2

    .line 2863
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    :cond_2
    shl-int/lit8 v0, v0, 0x8

    .line 2865
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 2866
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_3

    .line 2867
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    :cond_3
    shl-int/lit8 v0, v0, 0x8

    .line 2869
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private final a(III)Ljava/lang/String;
    .locals 6

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    shr-int/2addr v0, v1

    .line 2538
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J:[I

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 2539
    invoke-static {v2, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J:[I

    .line 2542
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J:[I

    const/4 v2, 0x0

    aput p2, v0, v2

    const/4 p2, 0x1

    .line 2543
    aput p3, v0, p2

    .line 2547
    iget p3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, -0x8

    .line 2550
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    move v2, p1

    const/4 p1, 0x2

    :goto_0
    add-int/lit8 v3, p3, 0x1

    .line 2552
    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v4, v3, 0x1

    .line 2553
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr p3, v3

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v3, v4, 0x1

    .line 2554
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v4, v3, 0x1

    .line 2555
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr p3, v3

    .line 2556
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J:[I

    add-int/lit8 v5, p1, 0x1

    aput p3, v3, p1

    add-int/lit8 v2, v2, -0x4

    const/4 p1, 0x3

    if-gt v2, p1, :cond_3

    if-lez v2, :cond_2

    .line 2560
    aget-byte p1, v0, v4

    and-int/lit16 p1, p1, 0xff

    if-le v2, p2, :cond_1

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v4, p2

    .line 2562
    aget-byte p3, v0, v4

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p1, p3

    if-le v2, v1, :cond_1

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v4, p2

    .line 2564
    aget-byte p2, v0, v4

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p1, p2

    .line 2567
    :cond_1
    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J:[I

    add-int/lit8 p3, v5, 0x1

    aput p1, p2, v5

    goto :goto_1

    :cond_2
    move p3, v5

    .line 2569
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    iget-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J:[I

    invoke-virtual {p1, p2, p3}, Lo/ExtractEditText;->e([II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    move p3, v4

    move p1, v5

    goto :goto_0
.end method

.method private final a(J)Ljava/math/BigInteger;
    .locals 0

    .line 3168
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->b(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 3169
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private static a([II)[I
    .locals 0

    add-int/lit8 p1, p1, 0x4

    .line 2587
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method private static final b(II)J
    .locals 3

    int-to-long v0, p0

    int-to-long p0, p1

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    ushr-long/2addr p0, v2

    shl-long/2addr v0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private final b(J)Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x1

    shl-long/2addr p1, v0

    ushr-long/2addr p1, v0

    .line 3162
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 3163
    sget-object p2, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aj:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private final d(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 2574
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->M:I

    invoke-virtual {p1, p2, v0}, Lo/ExtractEditText;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    .line 2577
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->M:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->N:I

    invoke-virtual {p1, p2, v0, v1}, Lo/ExtractEditText;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0xd

    if-ge p1, v0, :cond_2

    .line 2580
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->M:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->N:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->R:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lo/ExtractEditText;->e(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p1, p1, 0x2

    .line 2583
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J:[I

    invoke-virtual {v0, p2, v1, p1}, Lo/ExtractEditText;->e(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final k(I)Ljava/lang/String;
    .locals 9

    .line 1963
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->b()[C

    move-result-object v0

    .line 1964
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0, p1}, Lo/KeyboardView;->e(I)[C

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1969
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int v3, v2, p1

    .line 1970
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 1971
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    add-int/2addr p1, v2

    .line 1977
    :goto_0
    aget-byte v4, v3, v2

    if-ltz v4, :cond_2

    add-int/lit8 v5, v1, 0x1

    int-to-char v4, v4

    .line 1978
    aput-char v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_1

    .line 1980
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1, v5}, Lo/KeyboardView;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    move v1, v5

    goto :goto_0

    .line 1984
    :cond_2
    sget-object v4, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ag:[I

    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 1986
    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    .line 1987
    aget v6, v4, v2

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 2009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid byte "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in Unicode text block"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v6, v5, 0x1

    .line 1999
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v2, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v2, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v2, v5

    const/high16 v5, 0x10000

    sub-int/2addr v2, v5

    add-int/lit8 v5, v1, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    .line 2005
    aput-char v7, v0, v1

    const v1, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v1

    move v1, v5

    goto :goto_2

    :cond_4
    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v6, v5, 0x1

    .line 1994
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v2, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v2, v6

    goto :goto_3

    :cond_5
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v6, v5, 0x1

    .line 1991
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v2, v5

    :goto_2
    move v5, v6

    :cond_6
    :goto_3
    add-int/lit8 v6, v1, 0x1

    int-to-char v2, v2

    .line 2011
    aput-char v2, v0, v1

    if-lt v5, p1, :cond_7

    .line 2013
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1, v6}, Lo/KeyboardView;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    move v2, v5

    move v1, v6

    goto/16 :goto_1
.end method

.method private final p(I)I
    .locals 4

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 v0, p1, -0x18

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2729
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 2731
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Tag value: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    :cond_2
    long-to-int p1, v0

    return p1

    .line 2735
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid low bits for Tag token: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 2725
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result p1

    return p1

    .line 2723
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S()I

    move-result p1

    return p1

    .line 2721
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P()I

    move-result p1

    return p1
.end method

.method private final q(I)Ljava/lang/String;
    .locals 8

    .line 2458
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2459
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g(I)V

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge p1, v0, :cond_2

    .line 2463
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 2464
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    .line 2465
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    if-le p1, v2, :cond_1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v2

    .line 2467
    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    if-le p1, v1, :cond_1

    shl-int/lit8 v1, v4, 0x8

    add-int/2addr v0, v2

    .line 2469
    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v1

    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    shl-int/lit8 p1, v4, 0x8

    add-int/2addr v0, v2

    .line 2471
    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    add-int v4, p1, v0

    .line 2475
    :cond_1
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->M:I

    .line 2476
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    invoke-virtual {p1, v4}, Lo/ExtractEditText;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2479
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    .line 2480
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v5, v4, 0x1

    .line 2483
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    .line 2484
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v6, 0x1

    .line 2485
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    .line 2486
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const/16 v5, 0x9

    if-ge p1, v5, :cond_5

    add-int/lit8 v5, v6, 0x1

    .line 2489
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr p1, v0

    if-lez p1, :cond_4

    shl-int/lit8 v0, v6, 0x8

    add-int/lit8 v6, v5, 0x1

    .line 2492
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    if-le p1, v2, :cond_3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v6, 0x1

    .line 2494
    aget-byte v5, v3, v6

    and-int/lit16 v5, v5, 0xff

    add-int v6, v0, v5

    if-le p1, v1, :cond_4

    shl-int/lit8 p1, v6, 0x8

    .line 2496
    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    add-int v6, p1, v0

    goto :goto_0

    :cond_3
    move v6, v0

    .line 2500
    :cond_4
    :goto_0
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->M:I

    .line 2501
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->N:I

    .line 2502
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    invoke-virtual {p1, v4, v6}, Lo/ExtractEditText;->d(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 v0, v6, 0x1

    .line 2505
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v0, 0x1

    .line 2506
    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v6

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v6, v7, 0x1

    .line 2507
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v6, 0x1

    .line 2508
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    const/16 v6, 0xd

    if-ge p1, v6, :cond_8

    add-int/lit8 v6, v7, 0x1

    .line 2511
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr p1, v5

    if-lez p1, :cond_7

    shl-int/lit8 v5, v7, 0x8

    add-int/lit8 v7, v6, 0x1

    .line 2514
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    if-le p1, v2, :cond_6

    shl-int/lit8 v2, v5, 0x8

    add-int/lit8 v5, v7, 0x1

    .line 2516
    aget-byte v6, v3, v7

    and-int/lit16 v6, v6, 0xff

    add-int v7, v2, v6

    if-le p1, v1, :cond_7

    shl-int/lit8 p1, v7, 0x8

    .line 2518
    aget-byte v1, v3, v5

    and-int/lit16 v1, v1, 0xff

    add-int v7, p1, v1

    goto :goto_1

    :cond_6
    move v7, v5

    .line 2522
    :cond_7
    :goto_1
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->M:I

    .line 2523
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->N:I

    .line 2524
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->R:I

    .line 2525
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    invoke-virtual {p1, v4, v0, v7}, Lo/ExtractEditText;->c(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2527
    :cond_8
    invoke-direct {p0, p1, v4, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->a(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final r(I)Ljava/lang/String;
    .locals 9

    .line 2342
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->b()[C

    move-result-object v0

    .line 2343
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0, p1}, Lo/KeyboardView;->e(I)[C

    move-result-object v0

    .line 2346
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int v2, v1, p1

    .line 2347
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 2348
    sget-object v2, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ag:[I

    .line 2349
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    add-int/2addr p1, v1

    const/4 v4, 0x0

    .line 2354
    :goto_0
    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    .line 2355
    aget v6, v2, v5

    if-eqz v6, :cond_6

    :goto_1
    if-ge v1, p1, :cond_5

    add-int/lit8 v5, v1, 0x1

    .line 2367
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    .line 2368
    aget v6, v2, v1

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 2391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid byte "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in Object name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v6, v5, 0x1

    .line 2381
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v1, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v1, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v1, v5

    const/high16 v5, 0x10000

    sub-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v1, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    .line 2387
    aput-char v7, v0, v4

    const v4, 0xdc00

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v1, v4

    move v4, v5

    goto :goto_2

    :cond_2
    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v6, v5, 0x1

    .line 2376
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v1, v6

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v6, v5, 0x1

    .line 2373
    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v1, v5

    :goto_2
    move v5, v6

    :cond_4
    :goto_3
    add-int/lit8 v6, v4, 0x1

    int-to-char v1, v1

    .line 2394
    aput-char v1, v0, v4

    move v1, v5

    move v4, v6

    goto/16 :goto_1

    .line 2396
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1, v4}, Lo/KeyboardView;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 2359
    aput-char v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_7

    .line 2361
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1, v6}, Lo/KeyboardView;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    move v4, v6

    goto/16 :goto_0
.end method

.method private final s(I)Ljava/lang/String;
    .locals 2

    .line 2402
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_1

    .line 2404
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 2406
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->t(I)V

    .line 2407
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1}, Lo/KeyboardView;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2409
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g(I)V

    .line 2411
    :cond_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->q(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2413
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    return-object v0

    .line 2416
    :cond_2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 2417
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final t(I)V
    .locals 9

    .line 2018
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->b()[C

    move-result-object v0

    .line 2020
    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ag:[I

    .line 2021
    array-length v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_9

    .line 2024
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 2025
    aget v6, v1, v5

    if-nez v6, :cond_0

    if-ge v0, v2, :cond_0

    add-int/lit8 v6, v0, 0x1

    int-to-char v5, v5

    .line 2027
    aput-char v5, v4, v0

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v6

    if-ltz p1, :cond_8

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 2063
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->m(I)V

    goto :goto_2

    .line 2050
    :cond_1
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->u(I)I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v5, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    .line 2052
    aput-char v7, v4, v0

    .line 2053
    array-length v0, v4

    if-lt v6, v0, :cond_2

    .line 2054
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->d()[C

    move-result-object v0

    .line 2056
    array-length v2, v0

    move-object v4, v0

    const/4 v6, 0x0

    :cond_2
    const v0, 0xdc00

    and-int/lit16 v5, v5, 0x3ff

    or-int/2addr v5, v0

    move v0, v6

    goto :goto_2

    .line 2047
    :cond_3
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->v(I)I

    move-result v5

    goto :goto_2

    .line 2039
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J()I

    move-result v6

    and-int/lit16 v7, v6, 0xc0

    const/16 v8, 0x80

    if-eq v7, v8, :cond_5

    and-int/lit16 v7, v6, 0xff

    .line 2041
    iget v8, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v7, v8}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_5
    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    :cond_6
    :goto_2
    if-lt v0, v2, :cond_7

    .line 2067
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->d()[C

    move-result-object v0

    .line 2069
    array-length v2, v0

    move-object v4, v0

    const/4 v0, 0x0

    :cond_7
    add-int/lit8 v6, v0, 0x1

    int-to-char v5, v5

    .line 2072
    aput-char v5, v4, v0

    goto :goto_1

    :cond_8
    const-string p1, "Malformed UTF-8 character at end of long (non-chunked) text segment"

    .line 2031
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 2074
    :cond_9
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1, v0}, Lo/KeyboardView;->a(I)V

    return-void
.end method

.method private final u(I)I
    .locals 4

    .line 2966
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, v0, 0xff

    .line 2968
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_0
    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2971
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2973
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2976
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_2

    and-int/lit16 v1, v0, 0xff

    .line 2978
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_2
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    const/high16 v0, 0x10000

    sub-int/2addr p1, v0

    return p1
.end method

.method private final v(I)I
    .locals 4

    and-int/lit8 p1, p1, 0xf

    .line 2931
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, v0, 0xff

    .line 2933
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2936
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->J()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2938
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1
.end method

.method private w(I)I
    .locals 5

    .line 2773
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v0, v1, :cond_0

    .line 2774
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2776
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    shr-int/lit8 v1, v0, 0x5

    const-string v2, ")"

    if-ne v1, p1, :cond_3

    and-int/lit8 v0, v0, 0x1f

    .line 2785
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result v0

    if-ltz v0, :cond_2

    return v0

    .line 2787
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal chunked-length indicator within chunked-length value (type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 2782
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatched chunk in chunked content: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but encountered "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (byte 0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2783
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2782
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method private final x(I)I
    .locals 4

    and-int/lit8 p1, p1, 0xf

    .line 2947
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    and-int/lit16 v1, v0, 0xff

    .line 2949
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 2952
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v2, :cond_1

    and-int/lit16 v1, v0, 0xff

    .line 2954
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1
.end method

.method private final y(I)I
    .locals 4

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    return p1

    :cond_1
    add-int/lit8 v0, p1, -0x18

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2762
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    long-to-int p1, v0

    return p1

    .line 2764
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal length for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 2768
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid length for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 2760
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result p1

    return p1

    .line 2758
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S()I

    move-result p1

    return p1

    .line 2756
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P()I

    move-result p1

    return p1
.end method


# virtual methods
.method protected A()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 2909
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->n:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected B()V
    .locals 2

    .line 1835
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    .line 1838
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 1840
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 1842
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 1844
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    goto :goto_0

    .line 1846
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 1848
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    return-void
.end method

.method protected C()V
    .locals 3

    const/4 v0, 0x0

    .line 1883
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    .line 1884
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K:I

    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x7

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1891
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->h(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->z:[B

    return-void

    .line 1895
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 1899
    :cond_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result v0

    if-gtz v0, :cond_3

    if-gez v0, :cond_2

    .line 1903
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->N()V

    goto :goto_0

    .line 1905
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->a()V

    :goto_0
    return-void

    .line 1909
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_5

    .line 1911
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 1913
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->t(I)V

    return-void

    .line 1916
    :cond_4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g(I)V

    .line 1919
    :cond_5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->k(I)Ljava/lang/String;

    return-void
.end method

.method protected final D()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    .line 2293
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v0, v1, :cond_0

    .line 2294
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2302
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v1}, Lo/Credentials;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2303
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->i()Lo/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 2304
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2306
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L()V

    .line 2309
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->i(I)V

    .line 2310
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_3
    and-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x17

    if-gt v0, v1, :cond_6

    if-nez v0, :cond_4

    const-string v0, ""

    goto :goto_0

    .line 2318
    :cond_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->q(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2320
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    move-object v0, v1

    goto :goto_0

    .line 2322
    :cond_5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r(I)Ljava/lang/String;

    move-result-object v1

    .line 2323
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2327
    :cond_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result v0

    if-gez v0, :cond_7

    .line 2329
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->O()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2331
    :cond_7
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s(I)Ljava/lang/String;

    move-result-object v0

    .line 2334
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v1, v0}, Lo/Credentials;->e(Ljava/lang/String;)V

    .line 2335
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final E()V
    .locals 1

    .line 3030
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f()V

    :cond_0
    return-void
.end method

.method protected final F()Z
    .locals 6

    .line 3010
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3011
    iget-wide v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r:J

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r:J

    .line 3013
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 3015
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 3016
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    const/4 v0, 0x1

    return v0

    .line 3020
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3023
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected G()V
    .locals 1

    .line 3079
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 3080
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n:Lo/AbstractInputMethodService;

    invoke-virtual {v0}, Lo/AbstractInputMethodService;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->a:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3081
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 3083
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method protected H()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    const/4 v0, -0x1

    .line 3110
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    .line 3111
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->close()V

    const/4 v0, 0x0

    .line 3112
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected I()Lo/LogMaker;
    .locals 1

    .line 3070
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->A:Lo/LogMaker;

    if-nez v0, :cond_0

    .line 3071
    new-instance v0, Lo/LogMaker;

    invoke-direct {v0}, Lo/LogMaker;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->A:Lo/LogMaker;

    goto :goto_0

    .line 3073
    :cond_0
    invoke-virtual {v0}, Lo/LogMaker;->a()V

    .line 3075
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->A:Lo/LogMaker;

    return-object v0
.end method

.method protected L()V
    .locals 2

    .line 3124
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Break (0xFF) token in definite length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 3128
    invoke-virtual {v1}, Lo/Credentials;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 3129
    invoke-virtual {v1}, Lo/Credentials;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Object"

    goto :goto_0

    :cond_0
    const-string v1, "Array"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3127
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "Unexpected Break (0xFF) token in Root context"

    .line 3125
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1927
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x7

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1934
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 1938
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result p1

    if-gtz p1, :cond_2

    if-nez p1, :cond_1

    .line 1942
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1}, Lo/KeyboardView;->a()V

    const-string p1, ""

    return-object p1

    .line 1945
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->N()V

    .line 1946
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1}, Lo/KeyboardView;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1948
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_4

    .line 1950
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 1952
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->t(I)V

    .line 1953
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {p1}, Lo/KeyboardView;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1955
    :cond_3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g(I)V

    .line 1958
    :cond_4
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->k(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(IZ)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 818
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid length indicator for ints ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), token 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 811
    :pswitch_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V()J

    move-result-wide v0

    if-eqz p2, :cond_1

    neg-long p1, v0

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    .line 815
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 807
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result v0

    goto :goto_0

    .line 804
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S()I

    move-result v0

    goto :goto_0

    .line 801
    :pswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P()I

    move-result v0

    :goto_0
    if-eqz p2, :cond_2

    neg-int p1, v0

    add-int/lit8 v0, p1, -0x1

    .line 824
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 12

    .line 462
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r:J

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 463
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n:Lo/AbstractInputMethodService;

    invoke-virtual {v1}, Lo/AbstractInputMethodService;->d()Ljava/lang/Object;

    move-result-object v5

    long-to-int v11, v6

    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method protected c(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 842
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->C()V

    .line 844
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->z:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz p1, :cond_1

    .line 846
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 848
    :cond_1
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    const/4 p1, 0x4

    .line 849
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    const/4 p1, -0x1

    .line 850
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    .line 851
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 838
    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method protected c(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    .line 859
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0, p2}, Lo/Credentials;->e(I)Lo/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 863
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 865
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    .line 869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected array size ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") for tagged \'bigfloat\' value; should have exactly 2 number elements"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    .line 872
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    .line 874
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v0, "Unexpected token ("

    if-eq p1, p2, :cond_2

    .line 875
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") as the first part of \'bigfloat\' value: should get VALUE_NUMBER_INT"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    .line 877
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r()I

    move-result p1

    .line 879
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2

    .line 881
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p2, v1, :cond_3

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") as the second part of \'bigfloat\' value: should get VALUE_NUMBER_INT"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    .line 887
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->q()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object p2

    .line 888
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->e:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p2, v1, :cond_4

    .line 889
    new-instance p2, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_0

    .line 891
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->t()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p2

    .line 893
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    .line 894
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p1, v1, :cond_5

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") after 2 elements of \'bigfloat\' value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    .line 897
    :cond_5
    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    const/16 p1, 0x10

    .line 898
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    .line 899
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->j:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->t:Z

    .line 502
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L:Lo/ExtractEditText;

    invoke-virtual {v0}, Lo/ExtractEditText;->e()V

    .line 504
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->l()V

    .line 509
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    .line 1469
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->C()V

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->z:[B

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected d(II)V
    .locals 0

    .line 3149
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 3150
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->l(I)V

    return-void
.end method

.method protected e(I)V
    .locals 1

    .line 1715
    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->j:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1718
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current token ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not numeric, can not use numeric value accessors"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e(J)V
    .locals 3

    :goto_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    .line 2689
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    .line 2692
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    return-void
.end method

.method protected f(I)V
    .locals 2

    .line 2698
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2699
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    return-void

    .line 2704
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    goto :goto_0
.end method

.method protected final g(I)V
    .locals 8

    .line 3040
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E:Ljava/io/InputStream;

    const-string v1, "Needed to read "

    if-eqz v0, :cond_4

    .line 3044
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-lez v2, :cond_0

    .line 3046
    iget-wide v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r:J

    .line 3048
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    invoke-static {v4, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3049
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    goto :goto_0

    .line 3051
    :cond_0
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    .line 3053
    :goto_0
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    .line 3054
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-ge v2, p1, :cond_3

    .line 3055
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    array-length v5, v4

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 3058
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G()V

    if-nez v2, :cond_1

    .line 3061
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3063
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes, missed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " before end-of-input"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 3065
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    goto :goto_1

    :cond_3
    return-void

    .line 3041
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, reached end-of-input"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1322
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1323
    iget-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    if-eqz v1, :cond_0

    .line 1324
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1325
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K:I

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1328
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 1334
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 1335
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1337
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1338
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->k()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1340
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(I)[B
    .locals 5

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 2236
    sget-object p1, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e:[B

    return-object p1

    .line 2238
    :cond_0
    new-array v0, p1, [B

    .line 2239
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_1

    .line 2240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    :cond_1
    const/4 v1, 0x0

    .line 2244
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2245
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2246
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v1, v2

    sub-int/2addr p1, v2

    if-gtz p1, :cond_2

    return-object v0

    .line 2252
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    goto :goto_0

    .line 2257
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I()Lo/LogMaker;

    move-result-object p1

    .line 2259
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v0, v1, :cond_5

    .line 2260
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2262
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 2288
    invoke-virtual {p1}, Lo/LogMaker;->e()[B

    move-result-object p1

    return-object p1

    :cond_6
    shr-int/lit8 v1, v0, 0x5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    and-int/lit8 v0, v0, 0x1f

    .line 2272
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result v0

    if-ltz v0, :cond_8

    :goto_1
    if-lez v0, :cond_4

    .line 2277
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int v3, v1, v2

    if-lt v2, v1, :cond_7

    .line 2279
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2280
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int v3, v1, v2

    .line 2282
    :cond_7
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2283
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    invoke-virtual {p1, v2, v3, v1}, Lo/LogMaker;->write([BII)V

    .line 2284
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_8
    const-string p1, "Illegal chunked-length indicator within chunked-length value (type 2)"

    .line 2274
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 2269
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mismatched chunk in chunked content: expected 2 but encountered "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method protected final i(I)V
    .locals 2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2435
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->a(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2437
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->a(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    and-int/lit8 p1, p1, 0x1f

    .line 2442
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result p1

    .line 2443
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->h(I)[B

    move-result-object p1

    .line 2446
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ae:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, v0

    .line 2453
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0, p1}, Lo/Credentials;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v1, 0xff

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_3

    .line 2449
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L()V

    .line 2451
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported major type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") for CBOR Objects, not (yet?) supported, only Strings"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method protected j(I)V
    .locals 3

    .line 2643
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v0, v1, :cond_1

    .line 2644
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->E()V

    .line 2646
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    shr-int/lit8 v1, v0, 0x5

    if-ne v1, p1, :cond_5

    and-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x17

    if-gt v0, v1, :cond_3

    if-lez v0, :cond_0

    .line 2661
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x1f

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 2681
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K:I

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n(I)V

    goto :goto_0

    .line 2676
    :pswitch_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(J)V

    goto :goto_0

    .line 2673
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    goto :goto_0

    .line 2670
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    goto :goto_0

    .line 2667
    :pswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    goto :goto_0

    .line 2679
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal chunked-length indicator within chunked-length value (type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 2653
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched chunk in chunked content: expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but encountered "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()Ljava/lang/Number;
    .locals 2

    .line 1553
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1554
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(I)V

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 1558
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 1559
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 1562
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1565
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    return-object v0

    .line 1568
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    return-object v0

    .line 1573
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    .line 1574
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    return-object v0

    :cond_5
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_6

    .line 1577
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_6
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_7

    .line 1580
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 1582
    :cond_7
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected l()V
    .locals 3

    .line 550
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->H:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    if-eqz v0, :cond_0

    .line 553
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    .line 554
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n:Lo/AbstractInputMethodService;

    invoke-virtual {v2, v0}, Lo/AbstractInputMethodService;->a([B)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D:Lo/KeyboardView;

    invoke-virtual {v0}, Lo/KeyboardView;->c()V

    .line 558
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->C:[C

    if-eqz v0, :cond_1

    .line 560
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->C:[C

    .line 561
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n:Lo/AbstractInputMethodService;

    invoke-virtual {v1, v0}, Lo/AbstractInputMethodService;->d([C)V

    :cond_1
    return-void
.end method

.method protected l(I)V
    .locals 2

    .line 3145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    return-void
.end method

.method public m()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    return v0
.end method

.method protected m(I)V
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 3135
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(I)V

    .line 3137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o(I)V

    return-void
.end method

.method public n()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 15

    const/4 v0, 0x0

    .line 574
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    .line 576
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->z()V

    .line 579
    :cond_0
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r:J

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->x:J

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->z:[B

    .line 587
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v1}, Lo/Credentials;->d()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_3

    .line 589
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    .line 591
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->i()Lo/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 593
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 595
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->D()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 598
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v1}, Lo/Credentials;->h()Z

    move-result v1

    if-nez v1, :cond_3

    .line 599
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    .line 600
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->i()Lo/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 601
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 604
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v3, :cond_4

    .line 605
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F()Z

    move-result v1

    if-nez v1, :cond_4

    .line 606
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->H()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 609
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v1, v1, v3

    shr-int/lit8 v3, v1, 0x5

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    and-int/lit8 v1, v1, 0x1f

    .line 614
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    .line 615
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s:I

    if-lt v1, v2, :cond_5

    .line 616
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F()Z

    move-result v1

    if-nez v1, :cond_5

    .line 617
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->H()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 620
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->I:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->p:I

    aget-byte v1, v1, v2

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v3, v2, 0x7

    goto :goto_0

    .line 623
    :cond_6
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    :goto_0
    and-int/lit8 v2, v1, 0x1f

    const/4 v4, 0x4

    const-wide v5, 0xffffffffL

    const-wide/16 v7, 0x0

    const/4 v9, 0x3

    const/16 v10, 0x17

    const/4 v11, 0x2

    const/4 v12, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 747
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple tags not allowed per value (first tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 739
    :pswitch_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    .line 741
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result v0

    .line 742
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v1, v0}, Lo/Credentials;->b(I)Lo/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 744
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 730
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y(I)I

    move-result v0

    .line 731
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    if-ltz v1, :cond_7

    .line 732
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 734
    :cond_7
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v1, v0}, Lo/Credentials;->e(I)Lo/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 736
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 724
    :pswitch_3
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K:I

    .line 725
    iput-boolean v12, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    .line 726
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 716
    :pswitch_4
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K:I

    .line 717
    iput-boolean v12, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    .line 718
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->F:I

    if-ltz v0, :cond_8

    .line 719
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 721
    :cond_8
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 672
    :pswitch_5
    iput v12, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    if-gt v2, v10, :cond_9

    neg-int v0, v2

    sub-int/2addr v0, v12

    .line 674
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v2, -0x18

    if-eqz v2, :cond_f

    if-eq v2, v12, :cond_e

    const-wide/16 v13, 0x1

    if-eq v2, v11, :cond_c

    if-eq v2, v9, :cond_a

    .line 710
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n(I)V

    goto :goto_1

    .line 699
    :cond_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V()J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-ltz v2, :cond_b

    neg-long v0, v0

    sub-long/2addr v0, v13

    .line 701
    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    .line 702
    iput v11, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    goto :goto_1

    .line 704
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->a(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    .line 705
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    goto :goto_1

    .line 686
    :cond_c
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result v0

    if-gez v0, :cond_d

    int-to-long v0, v0

    and-long/2addr v0, v5

    neg-long v0, v0

    sub-long/2addr v0, v13

    .line 689
    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    .line 690
    iput v11, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    goto :goto_1

    :cond_d
    neg-int v0, v0

    sub-int/2addr v0, v12

    .line 692
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_1

    .line 681
    :cond_e
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S()I

    move-result v0

    neg-int v0, v0

    sub-int/2addr v0, v12

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_1

    .line 678
    :cond_f
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P()I

    move-result v0

    neg-int v0, v0

    sub-int/2addr v0, v12

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    .line 713
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 629
    :pswitch_6
    iput v12, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    if-gt v2, v10, :cond_10

    .line 631
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_2

    :cond_10
    add-int/lit8 v2, v2, -0x18

    if-eqz v2, :cond_16

    if-eq v2, v12, :cond_15

    if-eq v2, v11, :cond_13

    if-eq v2, v9, :cond_11

    .line 667
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n(I)V

    goto :goto_2

    .line 656
    :cond_11
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V()J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-ltz v2, :cond_12

    .line 658
    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    .line 659
    iput v11, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    goto :goto_2

    .line 661
    :cond_12
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->b(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    .line 662
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    goto :goto_2

    .line 643
    :cond_13
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result v0

    if-ltz v0, :cond_14

    .line 645
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_2

    :cond_14
    int-to-long v0, v0

    and-long/2addr v0, v5

    .line 648
    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    .line 649
    iput v11, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    goto :goto_2

    .line 638
    :cond_15
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_2

    .line 635
    :cond_16
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    .line 670
    :goto_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :goto_3
    const/16 v3, 0x20

    packed-switch v2, :pswitch_data_1

    :pswitch_7
    goto :goto_4

    .line 778
    :pswitch_8
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v2}, Lo/Credentials;->c()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 779
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v2}, Lo/Credentials;->j()Z

    move-result v2

    if-nez v2, :cond_17

    .line 780
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->i()Lo/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    .line 781
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 785
    :cond_17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->L()V

    goto :goto_4

    .line 774
    :pswitch_9
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    const/16 v0, 0x8

    .line 775
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    .line 776
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->j:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 769
    :pswitch_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    .line 770
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    .line 772
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->j:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 763
    :pswitch_b
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Q()F

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    .line 764
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    .line 766
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->j:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 758
    :pswitch_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->A()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 756
    :pswitch_d
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->n:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 754
    :pswitch_e
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 752
    :pswitch_f
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->o:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 787
    :goto_4
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected n(I)V
    .locals 2

    const/16 v0, 0xff

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const-string p1, "Mismatched BREAK byte (0xFF): encountered where value expected"

    .line 3118
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 3120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CBOR value token (first byte): 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 476
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y:Lo/Credentials;

    invoke-virtual {v0}, Lo/Credentials;->i()Lo/Credentials;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lo/Credentials;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected o(I)V
    .locals 2

    .line 3141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    return-void
.end method

.method public p()Ljava/math/BigInteger;
    .locals 2

    .line 1647
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 1649
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(I)V

    .line 1651
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1652
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->y()V

    .line 1655
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public q()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 2

    .line 1588
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1589
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(I)V

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->g:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 1592
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 1593
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->a:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1596
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->d:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 1598
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->e:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 1607
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    .line 1608
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->h:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 1611
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->b:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 1613
    :cond_5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->c:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public r()I
    .locals 2

    .line 1619
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1621
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(I)V

    .line 1623
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1624
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->x()V

    .line 1627
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    return v0
.end method

.method public s()F
    .locals 2

    .line 1661
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    const/16 v1, 0x20

    if-nez v0, :cond_0

    .line 1663
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(I)V

    .line 1665
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1666
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->u()V

    .line 1675
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    return v0
.end method

.method public t()J
    .locals 2

    .line 1633
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1635
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(I)V

    .line 1637
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1638
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->w()V

    .line 1641
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    return-wide v0
.end method

.method protected u()V
    .locals 2

    .line 1815
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 1820
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    double-to-float v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 1822
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    long-to-float v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 1824
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    goto :goto_0

    .line 1826
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 1828
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    return-void
.end method

.method public v()D
    .locals 2

    .line 1681
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 1683
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(I)V

    .line 1685
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1686
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->B()V

    .line 1689
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    return-wide v0
.end method

.method protected w()V
    .locals 8

    .line 1762
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1763
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    goto/16 :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    .line 1765
    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    .line 1766
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 1767
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->j()V

    .line 1769
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v0, 0x8

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    if-eqz v1, :cond_6

    .line 1771
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    .line 1772
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->j()V

    .line 1774
    :cond_5
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    goto :goto_0

    :cond_6
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_9

    .line 1776
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    float-to-double v6, v0

    cmpg-double v1, v6, v4

    if-ltz v1, :cond_7

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_8

    .line 1777
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->i()V

    .line 1779
    :cond_8
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    goto :goto_0

    :cond_9
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    .line 1781
    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_a

    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->X:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    .line 1782
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_b

    .line 1783
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->j()V

    .line 1785
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    goto :goto_0

    .line 1787
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 1789
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    return-void
.end method

.method protected x()V
    .locals 8

    .line 1724
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1726
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") out of range of int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c(Ljava/lang/String;)V

    .line 1730
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto/16 :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 1732
    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->O:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Q:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    .line 1733
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 1734
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->i()V

    .line 1736
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v0, 0x8

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    if-eqz v1, :cond_7

    .line 1739
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6

    .line 1740
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->i()V

    .line 1742
    :cond_6
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    double-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_0

    :cond_7
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_a

    .line 1744
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    float-to-double v6, v0

    cmpg-double v1, v6, v4

    if-ltz v1, :cond_8

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_9

    .line 1745
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->i()V

    .line 1747
    :cond_9
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    float-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_0

    :cond_a
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 1749
    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->U:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_b

    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->W:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    .line 1750
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_c

    .line 1751
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->i()V

    .line 1753
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    goto :goto_0

    .line 1755
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 1757
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    return-void
.end method

.method protected y()V
    .locals 2

    .line 1794
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ah:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1798
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->aa:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 1800
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ab:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 1802
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->ac:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 1804
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Z:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->Y:Ljava/math/BigInteger;

    goto :goto_0

    .line 1806
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 1808
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T:I

    return-void
.end method

.method protected z()V
    .locals 4

    const/4 v0, 0x0

    .line 2603
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->G:Z

    .line 2604
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K:I

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v1, :cond_0

    .line 2609
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->g()V

    .line 2611
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->K:I

    and-int/lit8 v2, v1, 0x1f

    const/16 v3, 0x17

    if-gt v2, v3, :cond_2

    if-lez v2, :cond_1

    .line 2615
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v3, 0x1f

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    .line 2636
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n(I)V

    goto :goto_0

    .line 2630
    :pswitch_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->V()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e(J)V

    goto :goto_0

    .line 2627
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->T()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    goto :goto_0

    .line 2624
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->S()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    goto :goto_0

    .line 2621
    :pswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->P()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->f(I)V

    goto :goto_0

    .line 2633
    :cond_3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->j(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
