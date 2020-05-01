.class public abstract Lo/mh;
.super Lo/mo;
.source ""

# interfaces
.implements Lo/mn;


# instance fields
.field protected a:Z

.field protected b:I

.field protected d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lo/mo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lo/mh;->b:I

    .line 11
    iput-boolean p1, p0, Lo/mh;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/mh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract b(Lo/ku;)V
.end method

.method public b()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/mh;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public i()V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    .line 49
    iget-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lo/mh;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lo/mh;->b:I

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lo/mh;->b(Lo/ku;)V

    return-void
.end method
