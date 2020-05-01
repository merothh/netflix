.class public Lo/mm;
.super Lo/mh;
.source ""


# instance fields
.field private k:Z

.field private l:Lcom/netflix/dial/DialDevice;

.field private o:Lo/kx;


# direct methods
.method public constructor <init>(Lcom/netflix/dial/DialDevice;Lo/lf;)V
    .locals 3

    .line 26
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/ssdp/SsdpDevice;->d()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-direct {p0, v0, v1, v2, p2}, Lo/mh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    .line 29
    iput-object p1, p0, Lo/mm;->l:Lcom/netflix/dial/DialDevice;

    return-void
.end method


# virtual methods
.method public b(Lo/ku;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    if-eqz v10, :cond_3

    .line 64
    iget-boolean v1, v0, Lo/mm;->c:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lo/mm;->a:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, v0, Lo/mm;->a:Z

    .line 67
    invoke-virtual/range {p1 .. p1}, Lo/ku;->a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v2

    .line 69
    sget-object v3, Lo/mm$1;->d:[I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_0

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    .line 75
    iget-object v1, v0, Lo/mm;->j:Lo/kH;

    invoke-virtual/range {p0 .. p0}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lo/ku;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v2, v4, v5}, Lo/kH;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, v0, Lo/mm;->j:Lo/kH;

    invoke-virtual/range {p0 .. p0}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lo/mm;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v2, v4, v5}, Lo/kH;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    iget-object v1, v0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, v0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v1, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object v1, v0, Lo/mm;->h:Lo/kO;

    invoke-virtual {v1}, Lo/kO;->d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lo/mm;->n()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual/range {p0 .. p0}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lo/mm;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/upnp/UpnpDevice;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netflix/upnp/UpnpDevice;->i()Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-virtual/range {p0 .. p0}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netflix/upnp/UpnpDevice;->h()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 86
    invoke-virtual/range {p0 .. p0}, Lo/mm;->q()Lcom/netflix/dial/DialDevice;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netflix/dial/DialDevice;->f()Z

    move-result v13

    iget-boolean v14, v0, Lo/mm;->k:Z

    move-object/from16 v10, p1

    const/4 v15, 0x0

    .line 81
    invoke-virtual/range {v1 .. v14}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ku;Ljava/lang/String;ZZZ)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v15, 0x0

    .line 91
    :goto_2
    iget-object v1, v0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v1, :cond_5

    .line 92
    iget-object v1, v0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    .line 93
    iput-object v15, v0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    const/4 v1, 0x0

    .line 94
    iput v1, v0, Lo/mm;->b:I

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 97
    iget-object v1, v0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-nez v1, :cond_4

    const-string v1, "DialMdxTarget"

    const-string v2, "launch successful, but no session target. BUG!!!"

    .line 98
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 101
    :cond_4
    iget-object v1, v0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iget-boolean v2, v0, Lo/mm;->c:Z

    iget-object v3, v0, Lo/mm;->o:Lo/kx;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(ZLo/kx;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lo/mm;->m()Lo/ly;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 105
    iget-object v2, v0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Lo/ly;)V

    .line 109
    :cond_5
    :goto_3
    iput-object v15, v0, Lo/mm;->o:Lo/kx;

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, v0, Lo/mm;->d:Z

    return-void
.end method

.method public c(Lcom/netflix/dial/DialDevice;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ssdp/SsdpDevice;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lo/mh;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lo/mm;->l:Lcom/netflix/dial/DialDevice;

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .line 34
    invoke-super {p0}, Lo/mh;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 35
    :cond_0
    iget-object v0, p0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(ZLo/kx;)Z
    .locals 2

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/mm;->a:Z

    .line 45
    iput-boolean p1, p0, Lo/mm;->c:Z

    .line 47
    invoke-virtual {p0}, Lo/mm;->a()Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "DialMdxTarget"

    if-eqz p1, :cond_0

    const-string p1, "launchTarget, already launched"

    .line 48
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iget-boolean v1, p0, Lo/mm;->c:Z

    invoke-virtual {p1, v1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(ZLo/kx;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-boolean p1, p0, Lo/mm;->d:Z

    if-nez p1, :cond_1

    const-string p1, "launchTarget, will launch"

    .line 51
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-boolean v0, p0, Lo/mm;->d:Z

    .line 54
    iput-object p2, p0, Lo/mm;->o:Lo/kx;

    .line 55
    iget-object p1, p0, Lo/mm;->f:Lo/lc;

    invoke-virtual {p0}, Lo/mm;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/lc;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public d(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lo/mm;->c(ZLo/kx;)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lo/mm;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lo/mm;->k:Z

    return-void
.end method

.method public q()Lcom/netflix/dial/DialDevice;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/mm;->l:Lcom/netflix/dial/DialDevice;

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lo/mm;->k:Z

    return v0
.end method
