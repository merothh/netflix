.class public Lo/mp;
.super Lo/mh;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lg;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lo/mh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    return-void
.end method


# virtual methods
.method public b(Lo/ku;)V
    .locals 12

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lo/mp;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "CafMdxTarget"

    const-string v5, "CafMdxTarget notifyLaunchResult - uuid: %s, success: %b"

    invoke-static {v4, v5, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_4

    .line 54
    iget-boolean v1, p0, Lo/mp;->c:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lo/mp;->a:Z

    if-nez v1, :cond_2

    .line 55
    iput-boolean v2, p0, Lo/mp;->a:Z

    .line 57
    invoke-virtual {p1}, Lo/ku;->a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v1

    .line 59
    sget-object v4, Lo/mp$5;->c:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_1

    if-eq v4, v0, :cond_1

    .line 65
    iget-object v0, p0, Lo/mp;->j:Lo/kH;

    invoke-virtual {p0}, Lo/mp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v1

    invoke-virtual {p1}, Lo/ku;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v1, v4, v5}, Lo/kH;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_1
    iget-object v0, p0, Lo/mp;->j:Lo/kH;

    invoke-virtual {p0}, Lo/mp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v1

    invoke-virtual {p0}, Lo/mp;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v1, v4, v5}, Lo/kH;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_1
    iget-object v0, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    .line 73
    :cond_2
    iget-object p1, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz p1, :cond_3

    .line 74
    iget-object p1, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 78
    :cond_3
    iput-boolean v3, p0, Lo/mp;->d:Z

    return-void

    .line 82
    :cond_4
    iget-object p1, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-nez p1, :cond_5

    .line 83
    new-instance p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p0}, Lo/mp;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lo/mp;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lo/mp;->n()Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual {p0}, Lo/mp;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lo/mp;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lo/mp;->g()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lo/mp;->f:Lo/lc;

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    iput-object p1, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 87
    :cond_5
    iget-object p1, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iget-boolean v0, p0, Lo/mp;->c:Z

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Z)V

    .line 88
    iput-boolean v3, p0, Lo/mp;->d:Z

    .line 90
    invoke-virtual {p0}, Lo/mp;->m()Lo/ly;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 93
    iget-object v0, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    :cond_6
    return-void
.end method

.method public d(Z)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lo/mp;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "CafMdxTarget"

    const-string v4, "CafMdxTarget launchTarget - forceLaunch: %b, name: %s"

    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 30
    iput-boolean v2, p0, Lo/mp;->a:Z

    .line 31
    iput-boolean p1, p0, Lo/mp;->c:Z

    .line 33
    invoke-virtual {p0}, Lo/mp;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CafMdxTarget launchTarget, already launched"

    .line 34
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lo/mp;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iget-boolean v0, p0, Lo/mp;->c:Z

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "CafMdxTarget launchTarget, will launch"

    .line 38
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-boolean p1, p0, Lo/mp;->d:Z

    if-nez p1, :cond_1

    .line 41
    iput-boolean v3, p0, Lo/mp;->d:Z

    .line 42
    iget-object p1, p0, Lo/mp;->f:Lo/lc;

    invoke-virtual {p0}, Lo/mp;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/lc;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v3
.end method
