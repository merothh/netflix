.class public Lo/bX;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private c:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->b:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    iput-object v0, p0, Lo/bX;->c:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lo/bX;->a:I

    .line 18
    iput v0, p0, Lo/bX;->d:I

    .line 19
    iput-boolean v0, p0, Lo/bX;->e:Z

    .line 28
    iput-object p1, p0, Lo/bX;->b:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lo/bX;->c:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 53
    iget v0, p0, Lo/bX;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/bX;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/bX;->c:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lo/bX;->e:Z

    return-void
.end method

.method public c()Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/bX;->c:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 45
    iget v0, p0, Lo/bX;->a:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 57
    iput p1, p0, Lo/bX;->d:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 49
    iput p1, p0, Lo/bX;->a:I

    return-void
.end method

.method public e()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lo/bX;->e:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lo/bX;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "netflix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 3

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    iget-object v1, p0, Lo/bX;->b:Ljava/lang/String;

    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget v1, p0, Lo/bX;->d:I

    const-string v2, "errorgroup"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    iget v1, p0, Lo/bX;->a:I

    const-string v2, "errorcode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    iget-boolean v1, p0, Lo/bX;->e:Z

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {p0}, Lo/bX;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NETFLIX"

    goto :goto_0

    :cond_0
    const-string v1, "INTERNET"

    :goto_0
    const-string v2, "urlType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
