.class public Lo/agZ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/ahs;

.field private final c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

.field private final e:Lo/aho;


# direct methods
.method public constructor <init>(Lo/aho;Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/agZ;->e:Lo/aho;

    .line 18
    iput-object p2, p0, Lo/agZ;->c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    .line 19
    iput-object p3, p0, Lo/agZ;->a:Lo/ahs;

    return-void
.end method

.method private a(Ljava/lang/Double;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e(D)V

    return-void
.end method

.method private a(Lo/ahm;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Lo/ahm;->c()I

    move-result v0

    .line 94
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 96
    invoke-virtual {p1, v1}, Lo/ahm;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 97
    invoke-direct {p0, v2, p2}, Lo/agZ;->d(Ljava/lang/Object;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c()V

    return-void
.end method

.method private a(Lo/ahr;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 2

    .line 104
    :try_start_0
    iget-object v0, p0, Lo/agZ;->e:Lo/aho;

    sget-object v1, Lo/ahn;->b:Lo/ahn;

    invoke-interface {p1, v0, v1}, Lo/ahr;->a(Lo/aho;Lo/ahn;)[B

    move-result-object p1

    .line 105
    iget-object v0, p0, Lo/agZ;->e:Lo/aho;

    invoke-virtual {v0, p1}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    .line 106
    invoke-direct {p0, p1, p2}, Lo/agZ;->e(Lo/ahp;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 108
    new-instance p2, Ljava/io/IOException;

    const-string v0, "MSL Encoder error"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private b(Ljava/lang/Integer;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 0

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b(I)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 0

    .line 113
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/Boolean;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e(Z)V

    return-void
.end method

.method private c(Ljava/lang/Object;)[B
    .locals 2

    .line 39
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    iget-object v1, p0, Lo/agZ;->c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->d(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;

    move-result-object v1

    .line 41
    invoke-direct {p0, p1, v1}, Lo/agZ;->d(Ljava/lang/Object;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    .line 42
    invoke-virtual {v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->close()V

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    const-string v1, "Jackson threw IOException during CBOR encoding"

    invoke-direct {v0, v1, p1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private d(Ljava/lang/Long;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 2

    .line 125
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->d(J)V

    return-void
.end method

.method private d(Ljava/lang/Object;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 1

    .line 51
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lo/agZ;->b(Ljava/lang/String;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lo/agZ;->c(Ljava/lang/Boolean;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 55
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 56
    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1, p2}, Lo/agZ;->b(Ljava/lang/Integer;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 57
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 58
    check-cast p1, Ljava/lang/Long;

    invoke-direct {p0, p1, p2}, Lo/agZ;->d(Ljava/lang/Long;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 59
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 60
    check-cast p1, Ljava/lang/Double;

    invoke-direct {p0, p1, p2}, Lo/agZ;->a(Ljava/lang/Double;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 61
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 62
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {p0, p1, p2}, Lo/agZ;->e([BLcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 63
    :cond_5
    instance-of v0, p1, Lo/ahp;

    if-eqz v0, :cond_6

    .line 64
    check-cast p1, Lo/ahp;

    invoke-direct {p0, p1, p2}, Lo/agZ;->e(Lo/ahp;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 65
    :cond_6
    instance-of v0, p1, Lo/ahm;

    if-eqz v0, :cond_7

    .line 66
    check-cast p1, Lo/ahm;

    invoke-direct {p0, p1, p2}, Lo/agZ;->a(Lo/ahm;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 67
    :cond_7
    instance-of v0, p1, Lo/ahr;

    if-eqz v0, :cond_8

    .line 68
    check-cast p1, Lo/ahr;

    invoke-direct {p0, p1, p2}, Lo/agZ;->a(Lo/ahr;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    .line 70
    invoke-direct {p0, p2}, Lo/agZ;->e(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    :goto_0
    return-void

    .line 72
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Illegal type found during CBOR encoding"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 0

    .line 137
    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->j()V

    return-void
.end method

.method private e(Lo/ahp;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 4

    .line 76
    invoke-virtual {p1}, Lo/ahp;->a()Ljava/util/Set;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e(I)V

    .line 78
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lo/agZ;->a:Lo/ahs;

    invoke-virtual {v2, v1}, Lo/ahs;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->c(J)V

    .line 86
    :goto_1
    invoke-virtual {p1, v1}, Lo/ahp;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-direct {p0, v1, p2}, Lo/agZ;->d(Ljava/lang/Object;Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b()V

    return-void
.end method

.method private e([BLcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;)V
    .locals 0

    .line 133
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator;->b([B)V

    return-void
.end method


# virtual methods
.method public d(Lo/ahp;)[B
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lo/agZ;->c(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
