.class public abstract Lo/aie;
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

.field private final b:Lo/aib;


# direct methods
.method protected constructor <init>(Lo/aib;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aie;->a:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lo/aie;->b:Lo/aib;

    return-void
.end method

.method public static a(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahp;)Lo/aie;
    .locals 3

    :try_start_0
    const-string v0, "scheme"

    .line 89
    invoke-virtual {p2, v0}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/netflix/msl/util/MslContext;->d(Ljava/lang/String;)Lo/aib;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p0, v1}, Lcom/netflix/msl/util/MslContext;->d(Lo/aib;)Lo/aif;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->h()Lo/aho;

    move-result-object v1

    const-string v2, "authdata"

    .line 99
    invoke-virtual {p2, v2, v1}, Lo/ahp;->d(Ljava/lang/String;Lo/aho;)Lo/ahp;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lo/aif;->d(Lcom/netflix/msl/util/MslContext;Lo/ahS;Lo/ahp;)Lo/aie;

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    new-instance p0, Lcom/netflix/msl/MslUserAuthException;

    sget-object p1, Lo/agz;->bC:Lo/agz;

    invoke-virtual {v1}, Lo/aib;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_1
    new-instance p0, Lcom/netflix/msl/MslUserAuthException;

    sget-object p1, Lo/agz;->bx:Lo/agz;

    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lo/agz;Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 101
    new-instance p1, Lcom/netflix/msl/MslEncodingException;

    sget-object v0, Lo/agz;->e:Lo/agz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userauthdata "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a(Lo/aho;Lo/ahn;)[B
    .locals 3

    .line 136
    iget-object v0, p0, Lo/aie;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p1, p0, Lo/aie;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 140
    :cond_0
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lo/aie;->b:Lo/aib;

    invoke-virtual {v1}, Lo/aib;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scheme"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 142
    invoke-virtual {p0, p1, p2}, Lo/aie;->b(Lo/aho;Lo/ahn;)Lo/ahp;

    move-result-object v1

    const-string v2, "authdata"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 143
    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p1

    .line 146
    iget-object v0, p0, Lo/aie;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public abstract b(Lo/aho;Lo/ahn;)Lo/ahp;
.end method

.method public b()Lo/aib;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/aie;->b:Lo/aib;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 156
    :cond_0
    instance-of v0, p1, Lo/aie;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 157
    :cond_1
    check-cast p1, Lo/aie;

    .line 158
    iget-object v0, p0, Lo/aie;->b:Lo/aib;

    iget-object p1, p1, Lo/aie;->b:Lo/aib;

    invoke-virtual {v0, p1}, Lo/aib;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 166
    iget-object v0, p0, Lo/aie;->b:Lo/aib;

    invoke-virtual {v0}, Lo/aib;->hashCode()I

    move-result v0

    return v0
.end method
