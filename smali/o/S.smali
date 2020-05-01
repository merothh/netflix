.class public Lo/S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/B;


# instance fields
.field private b:Ljava/io/InputStream;

.field private d:Lo/Y;


# direct methods
.method public constructor <init>(Lorg/chromium/net/ExperimentalCronetEngine;Ljava/lang/String;Lcom/android/volley/Request$Priority;Ljava/util/Map;Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/ExperimentalCronetEngine;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request$Priority;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lo/Y;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lo/Y;-><init>(Ljava/net/URL;Lorg/chromium/net/CronetEngine;)V

    iput-object v0, p0, Lo/S;->d:Lo/Y;

    .line 38
    iget-object p1, p0, Lo/S;->d:Lo/Y;

    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Lo/Y;->setChunkedStreamingMode(I)V

    .line 39
    iget-object p1, p0, Lo/S;->d:Lo/Y;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/Y;->setDoOutput(Z)V

    if-eqz p4, :cond_0

    .line 41
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 42
    iget-object p4, p0, Lo/S;->d:Lo/Y;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p4, v0, p2}, Lo/Y;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 47
    iget-object p1, p0, Lo/S;->d:Lo/Y;

    invoke-virtual {p1, p5}, Lo/Y;->a(Ljava/lang/Object;)V

    :cond_1
    if-eqz p6, :cond_2

    .line 50
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 51
    iget-object p4, p0, Lo/S;->d:Lo/Y;

    invoke-virtual {p4, p2}, Lo/Y;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 54
    :cond_2
    iget-object p1, p0, Lo/S;->d:Lo/Y;

    invoke-static {p3}, Lo/C;->e(Lcom/android/volley/Request$Priority;)I

    move-result p2

    invoke-virtual {p1, p2}, Lo/Y;->a(I)V

    return-void
.end method

.method static synthetic d(Lo/S;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 29
    iput-object p1, p0, Lo/S;->b:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic d(Lo/S;)Lo/Y;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/S;->d:Lo/Y;

    return-object p0
.end method

.method static synthetic e(Lo/S;)Ljava/io/InputStream;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/S;->b:Ljava/io/InputStream;

    return-object p0
.end method

.method private e(Z)V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/S;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 122
    :goto_0
    :try_start_0
    iget-object p1, p0, Lo/S;->b:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/S;->d:Lo/Y;

    invoke-virtual {v0}, Lo/Y;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lo/S;->e(Z)V

    .line 101
    iget-object v0, p0, Lo/S;->d:Lo/Y;

    invoke-virtual {v0}, Lo/Y;->disconnect()V

    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, v0}, Lo/S;->e(Z)V

    return-void
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    .line 59
    new-instance v0, Lo/S$1;

    invoke-direct {v0, p0}, Lo/S$1;-><init>(Lo/S;)V

    return-object v0
.end method
