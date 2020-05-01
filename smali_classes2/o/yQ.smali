.class public Lo/yQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private c:Lo/cz;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cz;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/yQ;->e:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lo/yQ;->c:Lo/cz;

    return-void
.end method

.method private c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/yQ;->c:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->a:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    return-object v0

    .line 39
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->c:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 145
    new-instance v0, Lo/yI;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/yI;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 146
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 140
    new-instance v0, Lo/yJ;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/yJ;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 129
    new-instance v0, Lo/yK;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lo/yK;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 11

    .line 84
    new-instance v9, Lo/yw;

    move-object v10, p0

    iget-object v1, v10, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    move-object v0, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lo/yw;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lo/yq;)V

    .line 85
    invoke-virtual {v9}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 111
    new-instance v0, Lo/yB;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/yB;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V

    .line 112
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/yq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 2

    .line 193
    iget-object v0, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lo/yM;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lo/yq;)Lo/yM;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/yq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 9

    .line 203
    new-instance v8, Lo/yM;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    move-object v0, v8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lo/yM;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/yq;)V

    .line 204
    invoke-virtual {v8}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/yq;Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/yq;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;"
        }
    .end annotation

    .line 155
    new-instance v0, Lo/yr;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lo/yr;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;Ljava/util/List;)V

    .line 156
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lo/yq;)Lo/yA;
    .locals 1

    .line 106
    new-instance v0, Lo/yA;

    invoke-direct {v0, p1, p2}, Lo/yA;-><init>(Ljava/lang/String;Lo/yq;)V

    return-object v0
.end method

.method public b()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 123
    new-instance v0, Lo/yE;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/yE;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 124
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 2

    .line 171
    new-instance p1, Lo/yG;

    iget-object v0, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v1

    invoke-direct {p1, v0, v1, p2, p3}, Lo/yG;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1

    .line 79
    new-instance v0, Lo/yy;

    invoke-direct {v0, p1}, Lo/yy;-><init>(Lo/yq;)V

    return-object v0
.end method

.method public c(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 160
    new-instance v0, Lo/yO;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/yO;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V

    .line 161
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lo/yq;)Lo/yC;
    .locals 1

    .line 102
    new-instance v0, Lo/yC;

    invoke-direct {v0, p1, p2}, Lo/yC;-><init>(Ljava/lang/String;Lo/yq;)V

    return-object v0
.end method

.method public d(JLo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 7

    .line 68
    new-instance v6, Lo/yz;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    move-object v0, v6

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/yz;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;JLo/yq;)V

    .line 69
    invoke-virtual {v6}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$PinType;Ljava/lang/String;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 8

    .line 183
    new-instance v7, Lo/yU;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lo/yU;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$PinType;Ljava/lang/String;Lo/yq;)V

    .line 184
    invoke-virtual {v7}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 135
    new-instance v0, Lo/yH;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lo/yH;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 62
    new-instance v0, Lo/yt;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lo/yt;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lo/yq;)V

    .line 63
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 9

    .line 44
    new-instance v8, Lo/yu;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    move-object v0, v8

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lo/yu;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Lo/yq;)V

    .line 45
    invoke-virtual {v8}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 90
    new-instance v0, Lo/yx;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/yx;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V

    .line 91
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 177
    new-instance v0, Lo/yL;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lo/yL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lo/yq;)V

    .line 178
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 117
    new-instance v0, Lo/yF;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/yF;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V

    .line 118
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/yq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 150
    new-instance v0, Lo/yN;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lo/yN;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public h(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 188
    new-instance v0, Lo/yD;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/yD;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V

    .line 189
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public i(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .line 165
    new-instance v0, Lo/yP;

    iget-object v1, p0, Lo/yQ;->e:Landroid/content/Context;

    invoke-direct {p0}, Lo/yQ;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lo/yP;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V

    .line 166
    invoke-virtual {v0}, Lo/hN;->c()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    return-object p1
.end method
