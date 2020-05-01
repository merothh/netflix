.class public Lo/ahe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final c:Lo/ahs;

.field private e:Lo/ahd;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;Ljava/io/InputStream;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lo/ahe;->c:Lo/ahs;

    .line 37
    new-instance p2, Lo/ahd;

    invoke-direct {p2, p1, p3}, Lo/ahd;-><init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Ljava/io/InputStream;)V

    iput-object p2, p0, Lo/ahe;->e:Lo/ahd;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;[B)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lo/ahe;->c:Lo/ahs;

    .line 31
    new-instance p2, Lo/ahd;

    invoke-direct {p2, p1, p3}, Lo/ahd;-><init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;[B)V

    iput-object p2, p0, Lo/ahe;->e:Lo/ahd;

    .line 32
    invoke-virtual {p0}, Lo/ahe;->c()V

    return-void
.end method

.method private b(I)Lo/ahp;
    .locals 3

    const/16 v0, 0x10

    if-gt p1, v0, :cond_3

    .line 63
    iget-object v0, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v0}, Lo/ahd;->a()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    :goto_0
    iget-object v1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v1}, Lo/ahd;->b()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 67
    iget-object v1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v1}, Lo/ahd;->c()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 69
    iget-object v1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v1}, Lo/ahd;->j()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v2}, Lo/ahd;->b()Lcom/fasterxml/jackson/core/JsonToken;

    .line 72
    iget-object v2, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v2}, Lo/ahd;->c()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lo/ahe;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBOR parse failed, missing token @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v1}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBOR parse failed, unexpected token @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v1}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_2
    iget-object p1, p0, Lo/ahe;->c:Lo/ahs;

    invoke-virtual {p1, v0}, Lo/ahs;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 80
    new-instance v0, Lo/ahp;

    invoke-direct {v0, p1}, Lo/ahp;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 62
    :cond_3
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBOR parse max recursion depth exceeded @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v1}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(I)Ljava/lang/Object;
    .locals 2

    .line 98
    iget-object v0, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v0}, Lo/ahd;->c()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 100
    invoke-direct {p0, p1}, Lo/ahe;->b(I)Lo/ahp;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 102
    invoke-direct {p0, p1}, Lo/ahe;->d(I)Lo/ahm;

    move-result-object p1

    return-object p1

    .line 104
    :cond_1
    iget-object p1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {p1}, Lo/ahd;->i()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private d(I)Lo/ahm;
    .locals 3

    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v0}, Lo/ahd;->d()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :goto_0
    iget-object v1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v1}, Lo/ahd;->b()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lo/ahe;->c(I)Ljava/lang/Object;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lo/ahe;->c:Lo/ahs;

    invoke-virtual {p1, v0}, Lo/ahs;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lo/ahm;

    invoke-direct {v0, p1}, Lo/ahm;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 86
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBOR parse max recursion depth exceeded @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v1}, Lo/ahd;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v0}, Lo/ahd;->c()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v0}, Lo/ahd;->b()Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method

.method public close()V
    .locals 1

    .line 26
    iget-object v0, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v0}, Lo/ahd;->close()V

    return-void
.end method

.method public d()Lo/ahp;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/ahe;->e:Lo/ahd;

    invoke-virtual {v0}, Lo/ahd;->e()V

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, v0}, Lo/ahe;->b(I)Lo/ahp;

    move-result-object v0

    return-object v0
.end method
