.class public Lo/mJ$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Lo/ahJ;

.field private e:Ljava/lang/Boolean;

.field private f:Lo/agH;

.field private g:Ljava/lang/String;

.field private h:Lo/aie;

.field private i:Ljava/lang/Boolean;

.field private j:[B

.field private k:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lo/mJ$Application;
    .locals 0

    .line 293
    iput-object p1, p0, Lo/mJ$Application;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lo/mJ$Application;
    .locals 0

    .line 338
    iput-object p1, p0, Lo/mJ$Application;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/mJ$Application;
    .locals 0

    .line 308
    iput-object p1, p0, Lo/mJ$Application;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lo/agH;)Lo/mJ$Application;
    .locals 0

    .line 333
    iput-object p1, p0, Lo/mJ$Application;->f:Lo/agH;

    return-object p0
.end method

.method public c(Ljava/lang/Boolean;)Lo/mJ$Application;
    .locals 0

    .line 303
    iput-object p1, p0, Lo/mJ$Application;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c(Lo/ahJ;)Lo/mJ$Application;
    .locals 0

    .line 313
    iput-object p1, p0, Lo/mJ$Application;->d:Lo/ahJ;

    return-object p0
.end method

.method public d(Lo/aie;)Lo/mJ$Application;
    .locals 0

    .line 318
    iput-object p1, p0, Lo/mJ$Application;->h:Lo/aie;

    return-object p0
.end method

.method public e([B)Lo/mJ$Application;
    .locals 0

    .line 323
    iput-object p1, p0, Lo/mJ$Application;->j:[B

    return-object p0
.end method

.method public e()Lo/mJ;
    .locals 13

    .line 343
    new-instance v12, Lo/mJ;

    iget-object v1, p0, Lo/mJ$Application;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Lo/mJ$Application;->c:Ljava/lang/Boolean;

    iget-object v3, p0, Lo/mJ$Application;->e:Ljava/lang/Boolean;

    iget-object v4, p0, Lo/mJ$Application;->b:Ljava/lang/String;

    iget-object v5, p0, Lo/mJ$Application;->d:Lo/ahJ;

    iget-object v6, p0, Lo/mJ$Application;->h:Lo/aie;

    iget-object v7, p0, Lo/mJ$Application;->j:[B

    iget-object v8, p0, Lo/mJ$Application;->g:Ljava/lang/String;

    iget-object v9, p0, Lo/mJ$Application;->f:Lo/agH;

    iget-object v10, p0, Lo/mJ$Application;->i:Ljava/lang/Boolean;

    iget-object v11, p0, Lo/mJ$Application;->k:Ljava/lang/Boolean;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/mJ;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lo/ahJ;Lo/aie;[BLjava/lang/String;Lo/agH;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v12
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidRequestMessageContextBuilder{encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ$Application;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", integrityProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ$Application;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonReplayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ$Application;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ$Application;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", debugContext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mJ$Application;->d:Lo/ahJ;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userAuthData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mJ$Application;->h:Lo/aie;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", payload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mJ$Application;->j:[B

    .line 355
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", remoteEntityIdentity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/mJ$Application;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", keyRequestDataProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ$Application;->f:Lo/agH;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestingTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ$Application;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", excludeServiceTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mJ$Application;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
