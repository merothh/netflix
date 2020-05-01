.class Lo/Rj;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lo/Rj;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lo/BE;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BE;",
            "Ljava/util/List<",
            "Lo/Cd;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lo/BE;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lo/BE;Lo/Cd;)V
    .locals 0

    invoke-static {p0, p1}, Lo/Rj;->e(Lo/BE;Lo/Cd;)V

    return-void
.end method

.method private static c(Lo/Bc;Ljava/lang/String;Ljava/lang/String;I)Lo/BY;
    .locals 5

    .line 98
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    invoke-interface {v0}, Lo/hW;->b()Lo/hZ;

    move-result-object v0

    .line 99
    invoke-interface {p0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    .line 100
    new-instance v2, Lo/BY;

    invoke-direct {v2}, Lo/BY;-><init>()V

    .line 101
    invoke-interface {p0}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lo/BY;->a:Ljava/lang/String;

    .line 102
    iput p3, v2, Lo/BY;->c:I

    .line 103
    invoke-interface {p0}, Lo/Bc;->aH()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lo/BY;->K:Ljava/lang/String;

    .line 105
    :try_start_0
    invoke-interface {p0}, Lo/Bc;->bj()Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Lo/hZ;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lo/BY;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 108
    :goto_0
    invoke-interface {p0}, Lo/Bc;->bb()Lo/AK;

    move-result-object p3

    invoke-interface {p3}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lo/BY;->b:Ljava/lang/String;

    .line 109
    invoke-interface {p0}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lo/BY;->e:Ljava/lang/String;

    .line 110
    invoke-interface {v1}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lo/BY;->d:Ljava/lang/String;

    .line 111
    iput-object p1, v2, Lo/BY;->B:Ljava/lang/String;

    .line 112
    invoke-interface {v1}, Lo/AK;->d()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->i:Z

    .line 113
    invoke-interface {v1}, Lo/AK;->ad()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->ar:Z

    .line 114
    invoke-interface {v1}, Lo/AK;->af()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->h:Z

    .line 115
    invoke-interface {v1}, Lo/AK;->W()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->g:Z

    .line 116
    invoke-interface {v1}, Lo/AK;->ac()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->j:Z

    .line 117
    invoke-interface {v1}, Lo/AK;->Z()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->l:Z

    .line 118
    invoke-interface {v1}, Lo/AK;->ab()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->m:Z

    .line 119
    invoke-interface {v1}, Lo/AK;->aa()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->o:Z

    .line 120
    invoke-interface {v1}, Lo/AK;->ae()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->n:Z

    .line 121
    invoke-interface {v1}, Lo/AK;->ah()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->k:Z

    .line 122
    invoke-interface {v1}, Lo/AK;->ak()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->r:Z

    .line 123
    invoke-interface {v1}, Lo/AK;->S()I

    move-result p1

    iput p1, v2, Lo/BY;->s:I

    .line 124
    invoke-interface {v1}, Lo/AK;->X()I

    move-result p1

    iput p1, v2, Lo/BY;->p:I

    .line 125
    invoke-interface {v1}, Lo/AK;->V()I

    move-result p1

    iput p1, v2, Lo/BY;->q:I

    .line 126
    invoke-interface {v1}, Lo/AK;->T()I

    move-result p1

    iput p1, v2, Lo/BY;->t:I

    .line 127
    invoke-interface {v1}, Lo/AK;->R()I

    move-result p1

    iput p1, v2, Lo/BY;->y:I

    .line 128
    invoke-interface {v1}, Lo/AK;->Y()I

    move-result p1

    iput p1, v2, Lo/BY;->x:I

    .line 129
    invoke-interface {v1}, Lo/AK;->K()J

    move-result-wide v3

    iput-wide v3, v2, Lo/BY;->w:J

    .line 130
    invoke-interface {v1}, Lo/AK;->P()I

    move-result p1

    iput p1, v2, Lo/BY;->u:I

    .line 131
    invoke-interface {v1}, Lo/AK;->am()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->D:Z

    .line 132
    invoke-interface {v1}, Lo/AK;->ai()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->C:Z

    .line 133
    iput-object p2, v2, Lo/BY;->z:Ljava/lang/String;

    const/4 p1, -0x1

    .line 134
    iput p1, v2, Lo/BY;->A:I

    .line 135
    invoke-interface {p0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result p1

    iput p1, v2, Lo/BY;->F:I

    .line 136
    invoke-interface {p0}, Lo/Bc;->aI()I

    move-result p1

    iput p1, v2, Lo/BY;->H:I

    .line 137
    invoke-interface {p0}, Lo/Bc;->aN()I

    move-result p1

    iput p1, v2, Lo/BY;->G:I

    .line 138
    invoke-interface {p0}, Lo/Bc;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->E:Ljava/lang/String;

    .line 139
    invoke-interface {p0}, Lo/Bc;->aK()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->I:Ljava/lang/String;

    .line 140
    invoke-interface {p0}, Lo/Bc;->aH()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->K:Ljava/lang/String;

    .line 141
    invoke-interface {p0}, Lo/Bc;->aO()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->N:Ljava/lang/String;

    .line 142
    invoke-interface {p0}, Lo/Bc;->aQ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->L:Ljava/lang/String;

    .line 143
    invoke-interface {p0}, Lo/Bc;->aP()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->M:Ljava/lang/String;

    .line 144
    invoke-interface {p0}, Lo/Bc;->aR()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->J:Ljava/lang/String;

    .line 145
    invoke-interface {p0}, Lo/Bc;->aU()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->O:Ljava/lang/String;

    .line 146
    invoke-interface {p0}, Lo/Bc;->aY()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->R:Ljava/lang/String;

    .line 147
    invoke-interface {p0}, Lo/Bc;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->Q:Ljava/lang/String;

    .line 148
    invoke-interface {p0}, Lo/Bc;->getBoxartId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->S:Ljava/lang/String;

    .line 149
    instance-of p1, p0, Lo/AS;

    if-eqz p1, :cond_0

    .line 150
    move-object p1, p0

    check-cast p1, Lo/AS;

    invoke-interface {p1}, Lo/AS;->m()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lo/BY;->P:Ljava/lang/String;

    .line 151
    invoke-interface {p1}, Lo/AS;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->ae:Ljava/lang/String;

    goto :goto_1

    .line 153
    :cond_0
    invoke-interface {p0}, Lo/Bc;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->P:Ljava/lang/String;

    .line 155
    :goto_1
    invoke-interface {p0}, Lo/Bc;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->U:Ljava/lang/String;

    .line 156
    invoke-interface {p0}, Lo/Bc;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->V:Ljava/lang/String;

    .line 157
    invoke-interface {p0}, Lo/Bc;->aZ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->T:Ljava/lang/String;

    .line 158
    invoke-interface {p0}, Lo/Bc;->aX()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->W:Ljava/lang/String;

    .line 159
    invoke-interface {p0}, Lo/Bc;->bd()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->X:Ljava/lang/String;

    .line 160
    invoke-interface {p0}, Lo/Bc;->ba()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->ab:Ljava/lang/String;

    .line 161
    invoke-interface {p0}, Lo/Bc;->bf()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->Y:Ljava/lang/String;

    .line 162
    invoke-interface {p0}, Lo/Bc;->bc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->aa:Ljava/lang/String;

    .line 163
    invoke-interface {p0}, Lo/Bc;->be()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->Z:Ljava/lang/String;

    .line 164
    invoke-interface {p0}, Lo/Bc;->bh()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->ac:Ljava/lang/String;

    .line 165
    invoke-interface {p0}, Lo/Bc;->bg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->ah:Ljava/lang/String;

    .line 166
    invoke-interface {p0}, Lo/Bc;->isOriginal()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->ag:Z

    .line 167
    invoke-interface {p0}, Lo/Bc;->isPreRelease()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->af:Z

    .line 168
    invoke-interface {p0}, Lo/Bc;->aT()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->ad:Z

    .line 169
    invoke-interface {p0}, Lo/Bc;->aV()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->ai:Z

    .line 170
    invoke-interface {p0}, Lo/Bc;->aW()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->aj:Z

    .line 171
    invoke-interface {p0}, Lo/Bc;->I()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->am:Z

    .line 172
    invoke-interface {p0}, Lo/Bc;->H()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->al:Z

    .line 173
    invoke-interface {p0}, Lo/Bc;->L()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->ak:Z

    .line 174
    invoke-interface {p0}, Lo/Bc;->J()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->an:Z

    .line 175
    invoke-interface {p0}, Lo/Bc;->M()Z

    move-result p1

    iput-boolean p1, v2, Lo/BY;->aq:Z

    .line 176
    invoke-interface {p0}, Lo/Bc;->bn()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/hZ;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->ao:Ljava/lang/String;

    .line 178
    :try_start_1
    invoke-interface {v1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/hZ;->b(Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lo/BY;->ap:Ljava/lang/String;

    .line 179
    invoke-interface {p0}, Lo/Bc;->aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/hZ;->b(Lcom/netflix/model/leafs/VideoInfo$TimeCodes;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lo/BY;->at:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v2
.end method

.method static c(Landroid/os/Handler;Lo/BY;Lo/BY;Lo/BE;)V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance p1, Lo/Rh;

    invoke-direct {p1, p3, v0}, Lo/Rh;-><init>(Lo/BE;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic c(Lo/BE;Ljava/util/List;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lo/BE;->c(Ljava/util/List;)V

    return-void
.end method

.method static d(Landroid/os/Handler;Lo/BC;Lo/BE;)V
    .locals 2

    .line 75
    new-instance v0, Lo/Cd;

    invoke-direct {v0}, Lo/Cd;-><init>()V

    .line 76
    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/Cd;->d:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/Cd;->c:Ljava/lang/String;

    .line 78
    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result v1

    iput-boolean v1, v0, Lo/Cd;->e:Z

    .line 79
    invoke-interface {p1}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lo/Cd;->b:Ljava/lang/String;

    .line 80
    new-instance p1, Lo/Rl;

    invoke-direct {p1, p2, v0}, Lo/Rl;-><init>(Lo/BE;Lo/Cd;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static d(Landroid/os/Handler;Lo/Bc;Ljava/util/List;Ljava/lang/String;ILo/BE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lo/Bc;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lo/BE;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-static {p1, p2, p3, p4}, Lo/Rj;->e(Lo/Bc;Ljava/util/List;Ljava/lang/String;I)Lo/BY;

    move-result-object p1

    .line 71
    new-instance p2, Lo/Rg;

    invoke-direct {p2, p5, p1}, Lo/Rg;-><init>(Lo/BE;Lo/BY;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static d(Lo/BE;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BE;",
            "Ljava/util/List<",
            "Lo/BY;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lo/BE;->e(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Lo/BE;Lo/BY;)V
    .locals 0

    invoke-static {p0, p1}, Lo/Rj;->e(Lo/BE;Lo/BY;)V

    return-void
.end method

.method static e(Lo/Bc;Ljava/util/List;Ljava/lang/String;I)Lo/BY;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bc;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lo/BY;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Ba;

    .line 42
    new-instance v2, Lo/Cb;

    invoke-interface {v1}, Lo/Ba;->X()I

    move-result v3

    invoke-interface {v1}, Lo/Ba;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lo/Ba;->as()I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lo/Cb;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    :try_start_0
    sget-object p1, Lo/Rj;->a:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lo/Rj;->c(Lo/Bc;Ljava/lang/String;Ljava/lang/String;I)Lo/BY;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lo/BE;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lo/Rj;->c(Lo/BE;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic e(Lo/BE;Lo/BY;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lo/BE;->d(Lo/BY;)V

    return-void
.end method

.method private static synthetic e(Lo/BE;Lo/Cd;)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lo/BE;->e(Lo/Cd;)V

    return-void
.end method
