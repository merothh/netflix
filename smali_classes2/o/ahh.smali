.class public Lo/ahh;
.super Lo/aho;
.source ""


# instance fields
.field a:Lo/ahs;

.field private b:Lo/agZ;

.field private c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/aho;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lo/ahh;->c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    return-void
.end method

.method private d()V
    .locals 3

    .line 43
    iget-object v0, p0, Lo/ahh;->c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;->e:Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;->b(Lcom/fasterxml/jackson/dataformat/cbor/CBORGenerator$Feature;Z)Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    move-result-object v0

    iput-object v0, p0, Lo/ahh;->c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    .line 45
    new-instance v0, Lo/ahs;

    invoke-direct {v0}, Lo/ahs;-><init>()V

    iput-object v0, p0, Lo/ahh;->a:Lo/ahs;

    .line 46
    new-instance v0, Lo/agZ;

    iget-object v1, p0, Lo/ahh;->c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    iget-object v2, p0, Lo/ahh;->a:Lo/ahs;

    invoke-direct {v0, p0, v1, v2}, Lo/agZ;-><init>(Lo/aho;Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;)V

    iput-object v0, p0, Lo/ahh;->b:Lo/agZ;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Lo/aht;
    .locals 1

    .line 126
    new-instance v0, Lo/ahj;

    invoke-direct {v0, p0, p1}, Lo/ahj;-><init>(Lo/aho;Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected b(Ljava/io/InputStream;Lo/ahn;)Lo/aht;
    .locals 2

    .line 68
    sget-object v0, Lo/ahn;->a:Lo/ahn;

    invoke-virtual {v0, p2}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lo/ahh;->a(Ljava/io/InputStream;)Lo/aht;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    sget-object v0, Lo/ahn;->b:Lo/ahn;

    invoke-virtual {v0, p2}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0}, Lo/ahh;->d()V

    .line 74
    new-instance p2, Lo/ahg;

    iget-object v0, p0, Lo/ahh;->c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    iget-object v1, p0, Lo/ahh;->a:Lo/ahs;

    invoke-direct {p2, v0, v1}, Lo/ahg;-><init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;)V

    .line 75
    invoke-virtual {p2, p1}, Lo/ahg;->d(Ljava/io/InputStream;)V

    return-object p2

    .line 80
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

    .line 86
    invoke-virtual {p0, p1}, Lo/ahh;->a([B)Lo/ahn;

    move-result-object v0

    .line 89
    sget-object v1, Lo/ahn;->a:Lo/ahn;

    invoke-virtual {v1, v0}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lo/ahh;->e([B)Lo/ahp;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    sget-object v1, Lo/ahn;->b:Lo/ahn;

    invoke-virtual {v1, v0}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-direct {p0}, Lo/ahh;->d()V

    .line 96
    new-instance v0, Lo/ahe;

    iget-object v1, p0, Lo/ahh;->c:Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;

    iget-object v2, p0, Lo/ahh;->a:Lo/ahs;

    invoke-direct {v0, v1, v2, p1}, Lo/ahe;-><init>(Lcom/fasterxml/jackson/dataformat/cbor/CBORFactory;Lo/ahs;[B)V

    .line 97
    :try_start_0
    invoke-virtual {v0}, Lo/ahe;->b()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 100
    invoke-virtual {v0}, Lo/ahe;->close()V

    return-object p1

    .line 99
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lo/ahe;->d()Lo/ahp;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-virtual {v0}, Lo/ahe;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 96
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 100
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

    .line 104
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

.method public c(Lo/ahp;Lo/ahn;)[B
    .locals 2

    .line 110
    sget-object v0, Lo/ahn;->a:Lo/ahn;

    invoke-virtual {v0, p2}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lo/ahh;->d(Lo/ahp;)[B

    move-result-object p1

    return-object p1

    .line 114
    :cond_0
    sget-object v0, Lo/ahn;->b:Lo/ahn;

    invoke-virtual {v0, p2}, Lo/ahn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lo/ahh;->d()V

    .line 116
    iget-object p2, p0, Lo/ahh;->b:Lo/agZ;

    invoke-virtual {p2, p1}, Lo/agZ;->d(Lo/ahp;)[B

    move-result-object p1

    return-object p1

    .line 120
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

.method protected d(Lo/ahp;)[B
    .locals 0

    .line 134
    invoke-static {p0, p1}, Lo/ahk;->b(Lo/aho;Lo/ahp;)[B

    move-result-object p1

    return-object p1
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

    .line 54
    sget-object p1, Lo/ahn;->a:Lo/ahn;

    return-object p1

    .line 56
    :cond_0
    sget-object v0, Lo/ahn;->b:Lo/ahn;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object p1, Lo/ahn;->b:Lo/ahn;

    return-object p1

    .line 58
    :cond_1
    sget-object v0, Lo/ahn;->a:Lo/ahn;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 59
    sget-object p1, Lo/ahn;->a:Lo/ahn;

    return-object p1

    .line 61
    :cond_2
    sget-object p1, Lo/ahn;->a:Lo/ahn;

    return-object p1
.end method

.method protected e([B)Lo/ahp;
    .locals 1

    .line 130
    new-instance v0, Lo/ahk;

    invoke-direct {v0, p0, p1}, Lo/ahk;-><init>(Lo/aho;[B)V

    return-object v0
.end method
