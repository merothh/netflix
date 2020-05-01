.class public Lo/agF$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Lo/ahJ;

.field private f:Lo/aie;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/agM;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/agH;

.field private i:Ljava/lang/String;

.field private j:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/agF$Activity;
    .locals 0

    .line 62
    iput-object p1, p0, Lo/agF$Activity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lo/agH;)Lo/agF$Activity;
    .locals 0

    .line 62
    iput-object p1, p0, Lo/agF$Activity;->h:Lo/agH;

    return-object p0
.end method

.method public b(Lo/ahJ;)Lo/agF$Activity;
    .locals 0

    .line 62
    iput-object p1, p0, Lo/agF$Activity;->e:Lo/ahJ;

    return-object p0
.end method

.method public b(Lo/aie;)Lo/agF$Activity;
    .locals 0

    .line 62
    iput-object p1, p0, Lo/agF$Activity;->f:Lo/aie;

    return-object p0
.end method

.method public c([B)Lo/agF$Activity;
    .locals 0

    .line 62
    iput-object p1, p0, Lo/agF$Activity;->j:[B

    return-object p0
.end method

.method public d(Ljava/lang/Boolean;)Lo/agF$Activity;
    .locals 0

    .line 62
    iput-object p1, p0, Lo/agF$Activity;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d()Lo/agF;
    .locals 13

    .line 62
    new-instance v12, Lo/agF;

    iget-object v1, p0, Lo/agF$Activity;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Lo/agF$Activity;->b:Ljava/lang/Boolean;

    iget-object v3, p0, Lo/agF$Activity;->d:Ljava/lang/Boolean;

    iget-object v4, p0, Lo/agF$Activity;->c:Ljava/lang/String;

    iget-object v5, p0, Lo/agF$Activity;->e:Lo/ahJ;

    iget-object v6, p0, Lo/agF$Activity;->f:Lo/aie;

    iget-object v7, p0, Lo/agF$Activity;->j:[B

    iget-object v8, p0, Lo/agF$Activity;->i:Ljava/lang/String;

    iget-object v9, p0, Lo/agF$Activity;->h:Lo/agH;

    iget-object v10, p0, Lo/agF$Activity;->g:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/agF;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lo/ahJ;Lo/aie;[BLjava/lang/String;Lo/agH;Ljava/util/Map;Lo/agF$5;)V

    return-object v12
.end method

.method public e(Ljava/lang/Boolean;)Lo/agF$Activity;
    .locals 0

    .line 62
    iput-object p1, p0, Lo/agF$Activity;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientRequestMessageContext.ClientRequestMessageContextBuilder(encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", integrityProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonReplayable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", debugContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->e:Lo/ahJ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userAuthData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->f:Lo/aie;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->j:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteEntityIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyRequestDataProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->h:Lo/agH;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceTokenCryptoContexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agF$Activity;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
