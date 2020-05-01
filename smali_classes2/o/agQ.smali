.class public abstract Lo/agQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahr;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/ahn;",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Lo/agT;


# direct methods
.method protected constructor <init>(Lo/agT;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/agQ;->a:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lo/agQ;->e:Lo/agT;

    return-void
.end method

.method public static e(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/agQ;
    .locals 4

    :try_start_0
    const-string v0, "scheme"

    .line 85
    invoke-virtual {p1, v0}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/netflix/msl/util/MslContext;->b(Ljava/lang/String;)Lo/agT;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v0

    const-string v2, "authdata"

    .line 90
    invoke-virtual {p1, v2, v0}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->c(Lo/agT;)Lo/agO;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v2, p0, v0}, Lo/agO;->b(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/agQ;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    new-instance p0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v0, Lo/agz;->bb:Lo/agz;

    invoke-virtual {v1}, Lo/agT;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_1
    new-instance p0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v1, Lo/agz;->be:Lo/agz;

    invoke-direct {p0, v1, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 98
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lo/agz;->e:Lo/agz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entityauthdata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lo/aho;Lo/ahn;)[B
    .locals 3

    .line 131
    iget-object v0, p0, Lo/agQ;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lo/agQ;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lo/agQ;->e:Lo/agT;

    invoke-virtual {v1}, Lo/agT;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scheme"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 137
    invoke-virtual {p0, p1, p2}, Lo/agQ;->d(Lo/aho;Lo/ahn;)Lo/ahp;

    move-result-object v1

    const-string v2, "authdata"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 138
    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    .line 141
    iget-object v0, p0, Lo/agQ;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public b()Lo/agT;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/agQ;->e:Lo/agT;

    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d(Lo/aho;Lo/ahn;)Lo/ahp;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 151
    :cond_0
    instance-of v0, p1, Lo/agQ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 152
    :cond_1
    check-cast p1, Lo/agQ;

    .line 153
    iget-object v0, p0, Lo/agQ;->e:Lo/agT;

    iget-object p1, p1, Lo/agQ;->e:Lo/agT;

    invoke-virtual {v0, p1}, Lo/agT;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 161
    iget-object v0, p0, Lo/agQ;->e:Lo/agT;

    invoke-virtual {v0}, Lo/agT;->hashCode()I

    move-result v0

    return v0
.end method
