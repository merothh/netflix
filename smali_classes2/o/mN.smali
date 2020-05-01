.class public Lo/mN;
.super Lo/aho;
.source ""


# instance fields
.field private c:Lo/agZ;

.field private d:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

.field e:Lo/ahs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lo/aho;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lo/mN;->d:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    return-void
.end method

.method private a()V
    .locals 3

    .line 37
    iget-object v0, p0, Lo/mN;->d:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->b(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;Z)Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    move-result-object v0

    iput-object v0, p0, Lo/mN;->d:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    .line 39
    new-instance v0, Lo/ahs;

    invoke-direct {v0}, Lo/ahs;-><init>()V

    iput-object v0, p0, Lo/mN;->e:Lo/ahs;

    .line 40
    new-instance v0, Lo/agZ;

    iget-object v1, p0, Lo/mN;->d:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    iget-object v2, p0, Lo/mN;->e:Lo/ahs;

    invoke-direct {v0, p0, v1, v2}, Lo/agZ;-><init>(Lo/aho;Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;)V

    iput-object v0, p0, Lo/mN;->c:Lo/agZ;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lo/ahp;)[B
    .locals 0

    .line 127
    invoke-static {p0, p1}, Lo/mT;->e(Lo/aho;Lo/ahp;)[B

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/io/InputStream;Lo/ahn;)Lo/aht;
    .locals 2

    .line 61
    sget-object v0, Lo/ahn;->a:Lo/ahn;

    invoke-virtual {v0, p2}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lo/mN;->c(Ljava/io/InputStream;)Lo/aht;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    sget-object v0, Lo/ahn;->b:Lo/ahn;

    invoke-virtual {v0, p2}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lo/mN;->a()V

    .line 67
    new-instance p2, Lo/ahg;

    iget-object v0, p0, Lo/mN;->d:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    iget-object v1, p0, Lo/mN;->e:Lo/ahs;

    invoke-direct {p2, v0, v1}, Lo/ahg;-><init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;)V

    .line 68
    invoke-virtual {p2, p1}, Lo/ahg;->d(Ljava/io/InputStream;)V

    return-object p2

    .line 73
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported encoder format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)Lo/ahp;
    .locals 3

    .line 79
    invoke-virtual {p0, p1}, Lo/mN;->a([B)Lo/ahn;

    move-result-object v0

    .line 82
    sget-object v1, Lo/ahn;->a:Lo/ahn;

    invoke-virtual {v1, v0}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lo/mN;->d([B)Lo/ahp;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    sget-object v1, Lo/ahn;->b:Lo/ahn;

    invoke-virtual {v1, v0}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-direct {p0}, Lo/mN;->a()V

    .line 89
    new-instance v0, Lo/ahe;

    iget-object v1, p0, Lo/mN;->d:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    iget-object v2, p0, Lo/mN;->e:Lo/ahs;

    invoke-direct {v0, v1, v2, p1}, Lo/ahe;-><init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;[B)V

    .line 90
    :try_start_0
    invoke-virtual {v0}, Lo/ahe;->b()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 93
    invoke-virtual {v0}, Lo/ahe;->close()V

    return-object p1

    .line 92
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lo/ahe;->d()Lo/ahp;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-virtual {v0}, Lo/ahe;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 89
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 93
    :try_start_3
    invoke-virtual {v0}, Lo/ahe;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 97
    :cond_2
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoder format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c(Ljava/io/InputStream;)Lo/aht;
    .locals 1

    .line 119
    new-instance v0, Lo/mP;

    invoke-direct {v0, p0, p1}, Lo/mP;-><init>(Lo/aho;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public c(Lo/ahp;Lo/ahn;)[B
    .locals 2

    .line 103
    sget-object v0, Lo/ahn;->a:Lo/ahn;

    invoke-virtual {v0, p2}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lo/mN;->a(Lo/ahp;)[B

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    sget-object v0, Lo/ahn;->b:Lo/ahn;

    invoke-virtual {v0, p2}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0}, Lo/mN;->a()V

    .line 109
    iget-object p2, p0, Lo/mN;->c:Lo/agZ;

    invoke-virtual {p2, p1}, Lo/agZ;->d(Lo/ahp;)[B

    move-result-object p1

    return-object p1

    .line 113
    :cond_1
    new-instance p1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported encoder format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected d([B)Lo/ahp;
    .locals 1

    .line 123
    new-instance v0, Lo/mT;

    invoke-direct {v0, p0, p1}, Lo/mT;-><init>(Lo/aho;[B)V

    return-object v0
.end method

.method public e(Ljava/util/Set;)Lo/ahn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/ahn;",
            ">;)",
            "Lo/ahn;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 47
    sget-object p1, Lo/ahn;->a:Lo/ahn;

    return-object p1

    .line 49
    :cond_0
    sget-object v0, Lo/ahn;->b:Lo/ahn;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object p1, Lo/ahn;->b:Lo/ahn;

    return-object p1

    .line 51
    :cond_1
    sget-object v0, Lo/ahn;->a:Lo/ahn;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    sget-object p1, Lo/ahn;->a:Lo/ahn;

    return-object p1

    .line 54
    :cond_2
    sget-object p1, Lo/ahn;->a:Lo/ahn;

    return-object p1
.end method
