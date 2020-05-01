.class public Lo/ahd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final b:[C


# instance fields
.field private final e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lo/ahd;->b:[C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Ljava/io/InputStream;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->d(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    move-result-object p1

    iput-object p1, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 34
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Could not create Jackson CBORParser"

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;[B)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->a([B)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    move-result-object p1

    iput-object p1, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Lcom/netflix/msl/io/MslEncoderException;

    const-string v0, "Could not create Jackson CBORParser"

    invoke-direct {p2, v0, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static e([B)Ljava/lang/String;
    .locals 6

    .line 168
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 169
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 170
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 171
    sget-object v4, Lo/ahd;->b:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 172
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private h()Ljava/lang/Object;
    .locals 4

    .line 140
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->d()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBOR parse failed, IOException thrown from CBORParser.getEmbeddedObject() @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 146
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBOR parse failed, JVM OOM exception during getEmbeddedObject(), probably malformed input @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :cond_0
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBOR parse failed, unexpected token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " @ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 71
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBOR parse failed, expected start object token @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    .line 57
    :try_start_0
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->n()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBOR parse failed, IOException thrown from CBORParser.nextToken() @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 59
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBOR parse failed with JVM OOM exception during nextToken(), probably malformed input @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3

    .line 41
    :try_start_0
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string v2, "Exception thrown closing Jackson CBORParser"

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()V
    .locals 3

    .line 76
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBOR parse failed, expected start array token @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 3

    .line 66
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->m()I

    move-result v0

    const v1, 0xd9f7

    if-ne v0, v1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBOR parse failed, missing CBOR self-describe tag @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    .line 154
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->c()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonLocation;->d()Ljava/lang/Object;

    move-result-object v1

    .line 156
    instance-of v2, v1, [B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 158
    :cond_0
    check-cast v1, [B

    check-cast v1, [B

    .line 159
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonLocation;->c()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 160
    array-length v2, v1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x100

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gez v2, :cond_1

    return-object v3

    :cond_1
    add-int/2addr v2, v0

    .line 162
    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 163
    invoke-static {v0}, Lo/ahd;->e([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 4

    .line 94
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 96
    :try_start_0
    sget-object v1, Lo/ahd$2;->e:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 123
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->q()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->b:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->v()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->c:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->s()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 116
    :cond_1
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBOR parse failed, unsupported float type @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :pswitch_3
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->q()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->a:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_2

    .line 104
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 105
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->d:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_3

    .line 106
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 108
    :cond_3
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBOR parse failed, unsupported int type @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_4
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :pswitch_5
    invoke-direct {p0}, Lo/ahd;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 123
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBOR parse failed, unrecognized token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " @ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBOR parse failed, IOException thrown @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()Ljava/lang/String;
    .locals 4

    .line 86
    :try_start_0
    iget-object v0, p0, Lo/ahd;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;->o()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBOR parse failed, getCurrentName() IOException @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
