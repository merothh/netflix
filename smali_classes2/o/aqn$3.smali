.class final Lo/aqn$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aqp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aqn;->b(Ljava/io/InputStream;Lo/aqw;)Lo/aqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic c:Lo/aqw;


# direct methods
.method constructor <init>(Lo/aqw;Ljava/io/InputStream;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lo/aqn$3;->c:Lo/aqw;

    iput-object p2, p0, Lo/aqn$3;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/aqk;J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    if-nez v2, :cond_0

    return-wide v0

    .line 137
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/aqn$3;->c:Lo/aqw;

    invoke-virtual {v0}, Lo/aqw;->e()V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, v0}, Lo/aqk;->b(I)Lo/aqs;

    move-result-object v0

    .line 139
    iget v1, v0, Lo/aqs;->e:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 140
    iget-object p2, p0, Lo/aqn$3;->a:Ljava/io/InputStream;

    iget-object v1, v0, Lo/aqs;->a:[B

    iget v2, v0, Lo/aqs;->e:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    .line 142
    :cond_1
    iget p3, v0, Lo/aqs;->e:I

    add-int/2addr p3, p2

    iput p3, v0, Lo/aqs;->e:I

    .line 143
    iget-wide v0, p1, Lo/aqk;->a:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Lo/aqk;->a:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :catch_0
    move-exception p1

    .line 146
    invoke-static {p1}, Lo/aqn;->c(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 147
    :cond_2
    throw p1

    .line 134
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 152
    iget-object v0, p0, Lo/aqn$3;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aqn$3;->a:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
