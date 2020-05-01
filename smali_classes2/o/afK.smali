.class public final Lo/afK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/afR;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lo/afK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/afK;->a:Ljava/lang/String;

    const-string v0, "nfvdid"

    .line 27
    iput-object v0, p0, Lo/afK;->c:Ljava/lang/String;

    const-string v1, "flwssn"

    .line 28
    iput-object v1, p0, Lo/afK;->e:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lo/afK;->g:Landroid/content/Context;

    .line 35
    iget-object p1, p0, Lo/afK;->g:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lo/afK;->g:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/afP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/afP;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    iput-object p1, p0, Lo/afK;->d:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lo/afK;->b:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lo/afK;->d()V

    .line 45
    invoke-direct {p0}, Lo/afK;->i()V

    .line 46
    iget-object p1, p0, Lo/afK;->d:Ljava/lang/String;

    invoke-static {p1}, Lo/afP;->b(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lo/afK;->b:Ljava/lang/String;

    invoke-static {p1}, Lo/afP;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    iput-object v1, p0, Lo/afK;->d:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lo/afK;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 105
    iget-object v0, p0, Lo/afK;->g:Landroid/content/Context;

    const-string v1, "nfvdid"

    invoke-static {v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 109
    iget-object v0, p0, Lo/afK;->g:Landroid/content/Context;

    const-string v1, "flwssn"

    invoke-static {v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/afK;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lo/afK;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iput-object p1, p0, Lo/afK;->d:Ljava/lang/String;

    .line 72
    iget-object p1, p0, Lo/afK;->d:Ljava/lang/String;

    invoke-static {p1}, Lo/afP;->b(Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/VisitorDeviceId;

    iget-object v1, p0, Lo/afK;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/VisitorDeviceId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "nfvdid"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "flwssn"

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/afK;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iput-object p1, p0, Lo/afK;->b:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lo/afK;->b:Ljava/lang/String;

    invoke-static {p1}, Lo/afP;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/afK;->d:Ljava/lang/String;

    return-object v0
.end method
