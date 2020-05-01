.class Lo/S$1;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/S;->c()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/io/IOException;

.field final synthetic b:Lo/S;


# direct methods
.method constructor <init>(Lo/S;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lo/S$1;->b:Lo/S;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 75
    iget-object v0, p0, Lo/S$1;->b:Lo/S;

    invoke-static {v0}, Lo/S;->e(Lo/S;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/S$1;->a:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 77
    :try_start_0
    iget-object v0, p0, Lo/S$1;->b:Lo/S;

    iget-object v1, p0, Lo/S$1;->b:Lo/S;

    invoke-static {v1}, Lo/S;->d(Lo/S;)Lo/Y;

    move-result-object v1

    invoke-virtual {v1}, Lo/Y;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lo/S;->d(Lo/S;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lo/S$1;->b:Lo/S;

    invoke-static {v1}, Lo/S;->d(Lo/S;)Lo/Y;

    move-result-object v1

    invoke-virtual {v1}, Lo/Y;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/net/WrappedVolleyIOException;

    new-instance v1, Lcom/android/volley/ServerError;

    iget-object v2, p0, Lo/S$1;->b:Lo/S;

    invoke-static {v2}, Lo/S;->d(Lo/S;)Lo/Y;

    move-result-object v2

    invoke-virtual {v2}, Lo/Y;->a()Lo/ExitTransitionCoordinator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/volley/ServerError;-><init>(Lo/ExitTransitionCoordinator;)V

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/net/WrappedVolleyIOException;-><init>(Lcom/android/volley/VolleyError;)V

    iput-object v0, p0, Lo/S$1;->a:Ljava/io/IOException;

    goto :goto_0

    .line 82
    :cond_0
    iput-object v0, p0, Lo/S$1;->a:Ljava/io/IOException;

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/S$1;->a:Ljava/io/IOException;

    if-nez v0, :cond_2

    return-void

    .line 87
    :cond_2
    throw v0
.end method


# virtual methods
.method public read()I
    .locals 1

    .line 64
    invoke-direct {p0}, Lo/S$1;->c()V

    .line 65
    iget-object v0, p0, Lo/S$1;->b:Lo/S;

    invoke-static {v0}, Lo/S;->e(Lo/S;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 70
    invoke-direct {p0}, Lo/S$1;->c()V

    .line 71
    iget-object v0, p0, Lo/S$1;->b:Lo/S;

    invoke-static {v0}, Lo/S;->e(Lo/S;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
