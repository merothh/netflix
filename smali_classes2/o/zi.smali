.class public Lo/zi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ze;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lo/ze;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ze;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/zi;->b:Lo/ze;

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lo/ze;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/zi;->a:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lo/ze;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/zi;->d:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lo/ze;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/zi;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/zi;->b:Lo/ze;

    invoke-interface {v0}, Lo/ze;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/zi;->b:Lo/ze;

    invoke-interface {v0}, Lo/ze;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lo/zi;->b:Lo/ze;

    invoke-interface {v0, p1}, Lo/ze;->b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/zi;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/zi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/zi;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/zi;->b:Lo/ze;

    invoke-interface {v0}, Lo/ze;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
