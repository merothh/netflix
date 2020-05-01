.class public Lo/UN;
.super Lo/UM;
.source ""


# instance fields
.field private final a:Lo/WS;

.field private final b:Lo/NsdServiceInfo;

.field private final c:Lo/Xq;

.field private final d:Lo/Xn;

.field private final e:Lo/WH;

.field private final f:Lo/WP;

.field private final g:Lo/WV;

.field private final h:Lo/WJ;

.field private final i:Lo/Xg;

.field private final j:Lo/WR;

.field private final k:Lo/Xe;

.field private final l:Lo/Xc;

.field private final m:Lo/WO;

.field private final n:Lo/Xa;

.field private final o:Lo/Xi;

.field private final p:Lo/WX;

.field private final q:Lo/WQ;

.field private final r:Lo/Xd;

.field private final s:Lo/Xf;

.field private final t:Lo/WW;

.field private x:Lo/WL;

.field private y:Lo/WU;


# direct methods
.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MenuInflater;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Lo/UK;",
            "Z)V"
        }
    .end annotation

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerRepository"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lo/UM;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 83
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lo/UN;->d(Landroid/view/ViewGroup;)Lo/Xq;

    move-result-object v0

    iput-object v0, p0, Lo/UN;->c:Lo/Xq;

    .line 84
    invoke-virtual {p0, p2}, Lo/UN;->b(Landroid/view/ViewGroup;)Lo/NsdServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lo/UN;->b:Lo/NsdServiceInfo;

    .line 85
    invoke-virtual {p0, p2}, Lo/UN;->f(Landroid/view/ViewGroup;)Lo/WH;

    move-result-object v0

    iput-object v0, p0, Lo/UN;->e:Lo/WH;

    .line 86
    new-instance v0, Lo/WS;

    invoke-direct {v0, p2}, Lo/WS;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->a:Lo/WS;

    .line 87
    new-instance v0, Lo/Xn;

    invoke-direct {v0, p2}, Lo/Xn;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->d:Lo/Xn;

    .line 88
    new-instance v0, Lo/Xg;

    invoke-direct {v0, p2}, Lo/Xg;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->i:Lo/Xg;

    .line 89
    new-instance v0, Lo/WR;

    invoke-direct {v0, p2}, Lo/WR;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->j:Lo/WR;

    .line 90
    new-instance v0, Lo/WV;

    invoke-direct {v0, p2}, Lo/WV;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->g:Lo/WV;

    .line 91
    new-instance v0, Lo/WP;

    invoke-direct {v0, p2}, Lo/WP;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->f:Lo/WP;

    .line 92
    new-instance v0, Lo/WJ;

    invoke-direct {v0, p2}, Lo/WJ;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->h:Lo/WJ;

    .line 93
    invoke-virtual {p0, p2}, Lo/UN;->c(Landroid/view/ViewGroup;)Lo/Xi;

    move-result-object v0

    iput-object v0, p0, Lo/UN;->o:Lo/Xi;

    .line 94
    new-instance v0, Lo/WO;

    invoke-direct {v0, p2}, Lo/WO;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->m:Lo/WO;

    .line 95
    new-instance v0, Lo/Xa;

    invoke-direct {v0, p2}, Lo/Xa;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->n:Lo/Xa;

    .line 96
    invoke-virtual {p0, p2}, Lo/UN;->a(Landroid/view/ViewGroup;)Lo/Xc;

    move-result-object v0

    iput-object v0, p0, Lo/UN;->l:Lo/Xc;

    .line 97
    invoke-virtual {p0, p2}, Lo/UN;->j(Landroid/view/ViewGroup;)Lo/Xe;

    move-result-object v0

    iput-object v0, p0, Lo/UN;->k:Lo/Xe;

    .line 98
    invoke-virtual {p0, p2}, Lo/UN;->e(Landroid/view/ViewGroup;)Lo/WQ;

    move-result-object v0

    iput-object v0, p0, Lo/UN;->q:Lo/WQ;

    .line 99
    new-instance v0, Lo/Xf;

    invoke-direct {v0, p2}, Lo/Xf;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->s:Lo/Xf;

    .line 100
    new-instance v0, Lo/Xd;

    invoke-direct {v0, p2}, Lo/Xd;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->r:Lo/Xd;

    .line 101
    new-instance v0, Lo/WX;

    invoke-direct {v0, p2}, Lo/WX;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UN;->p:Lo/WX;

    .line 102
    new-instance v0, Lo/WW;

    invoke-direct {v0, p2, p5}, Lo/WW;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lo/UN;->t:Lo/WW;

    .line 109
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lo/UN;->b(Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 110
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->c:Lo/Xq;

    invoke-virtual {p5}, Lo/Xq;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lo/UN;->a(Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 116
    new-instance p2, Lo/VQ;

    iget-object p5, p0, Lo/UN;->e:Lo/WH;

    .line 117
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 116
    invoke-direct {p2, p5, v0, p3}, Lo/VQ;-><init>(Lo/WH;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 118
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->e:Lo/WH;

    invoke-interface {p5}, Lo/WH;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance p2, Lo/VC;

    iget-object p5, p0, Lo/UN;->a:Lo/WS;

    check-cast p5, Lo/Ww;

    .line 122
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 121
    invoke-direct {p2, p5, v0}, Lo/VC;-><init>(Lo/Ww;Lio/reactivex/Observable;)V

    .line 124
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->a:Lo/WS;

    invoke-virtual {p5}, Lo/WS;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p2, Lo/VY;

    iget-object p5, p0, Lo/UN;->d:Lo/Xn;

    check-cast p5, Lo/WM;

    .line 128
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 127
    invoke-direct {p2, p5, v0}, Lo/VY;-><init>(Lo/WM;Lio/reactivex/Observable;)V

    .line 130
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->d:Lo/Xn;

    invoke-virtual {p5}, Lo/Xn;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p2, Lo/VS;

    iget-object p5, p0, Lo/UN;->i:Lo/Xg;

    check-cast p5, Lo/WE;

    .line 135
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 134
    invoke-direct {p2, p5, v0}, Lo/VS;-><init>(Lo/WE;Lio/reactivex/Observable;)V

    .line 137
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->i:Lo/Xg;

    invoke-virtual {p5}, Lo/Xg;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p2, Lo/VD;

    iget-object p5, p0, Lo/UN;->j:Lo/WR;

    check-cast p5, Lo/Wy;

    .line 141
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 140
    invoke-direct {p2, p5, v0}, Lo/VD;-><init>(Lo/Wy;Lio/reactivex/Observable;)V

    .line 143
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->j:Lo/WR;

    invoke-virtual {p5}, Lo/WR;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance p2, Lo/VJ;

    iget-object p5, p0, Lo/UN;->g:Lo/WV;

    check-cast p5, Lo/Wx;

    .line 147
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 146
    invoke-direct {p2, p5, v0, p3}, Lo/VJ;-><init>(Lo/Wx;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 148
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->g:Lo/WV;

    invoke-virtual {p5}, Lo/WV;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p2, Lo/Wm;

    invoke-virtual {p1}, Lo/MenuInflater;->getContext()Landroid/content/Context;

    move-result-object p5

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p5, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p2, p5}, Lo/Wm;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 152
    new-instance p5, Lo/VE;

    .line 153
    iget-object v0, p0, Lo/UN;->f:Lo/WP;

    check-cast v0, Lo/Wu;

    .line 154
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 155
    check-cast p2, Lo/UserManager;

    .line 152
    invoke-direct {p5, v0, v1, p2}, Lo/VE;-><init>(Lo/Wu;Lio/reactivex/Observable;Lo/UserManager;)V

    .line 157
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->f:Lo/WP;

    invoke-virtual {p5}, Lo/WP;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p2, p0, Lo/UN;->h:Lo/WJ;

    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p0, p2, p5}, Lo/UN;->e(Lo/WJ;Lio/reactivex/Observable;)Lo/Vx;

    .line 161
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->h:Lo/WJ;

    invoke-virtual {p5}, Lo/WJ;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p2, Lo/VV;

    iget-object p5, p0, Lo/UN;->o:Lo/Xi;

    check-cast p5, Lo/WF;

    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p2, p5, v0}, Lo/VV;-><init>(Lo/WF;Lio/reactivex/Observable;)V

    .line 165
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {p5}, Lo/Xi;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance p2, Lo/Vy;

    iget-object p5, p0, Lo/UN;->m:Lo/WO;

    check-cast p5, Lo/WI;

    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p2, p5, v0}, Lo/Vy;-><init>(Lo/WI;Lio/reactivex/Observable;)V

    .line 169
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->m:Lo/WO;

    invoke-virtual {p5}, Lo/WO;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance p2, Lo/VL;

    .line 173
    iget-object p5, p0, Lo/UN;->n:Lo/Xa;

    check-cast p5, Lo/WB;

    .line 174
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 172
    invoke-direct {p2, p5, v0, p3}, Lo/VL;-><init>(Lo/WB;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 176
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p5, p0, Lo/UN;->n:Lo/Xa;

    invoke-virtual {p5}, Lo/Xa;->w()Lio/reactivex/Observable;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0, p2, p4, p3}, Lo/UN;->e(Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V

    .line 180
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p4, p0, Lo/UN;->l:Lo/Xc;

    invoke-virtual {p4}, Lo/Xc;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance p2, Lo/VU;

    .line 184
    iget-object p4, p0, Lo/UN;->k:Lo/Xe;

    check-cast p4, Lo/WG;

    .line 185
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p5

    .line 183
    invoke-direct {p2, p4, p5, p3}, Lo/VU;-><init>(Lo/WG;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 187
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p4, p0, Lo/UN;->k:Lo/Xe;

    invoke-virtual {p4}, Lo/Xe;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance p2, Lo/VO;

    iget-object p4, p0, Lo/UN;->s:Lo/Xf;

    check-cast p4, Lo/WD;

    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p5

    invoke-direct {p2, p4, p5}, Lo/VO;-><init>(Lo/WD;Lio/reactivex/Observable;)V

    .line 191
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p4, p0, Lo/UN;->s:Lo/Xf;

    invoke-virtual {p4}, Lo/Xf;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance p2, Lo/VR;

    iget-object p4, p0, Lo/UN;->r:Lo/Xd;

    check-cast p4, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    .line 195
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p5

    .line 194
    invoke-direct {p2, p4, p5}, Lo/VR;-><init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;Lio/reactivex/Observable;)V

    .line 197
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p4, p0, Lo/UN;->r:Lo/Xd;

    invoke-virtual {p4}, Lo/Xd;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance p2, Lo/VT;

    iget-object p4, p0, Lo/UN;->p:Lo/WX;

    check-cast p4, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    .line 201
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p5

    .line 200
    invoke-direct {p2, p4, p5}, Lo/VT;-><init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;Lio/reactivex/Observable;)V

    .line 203
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p4, p0, Lo/UN;->p:Lo/WX;

    invoke-virtual {p4}, Lo/WX;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lo/UN;->e(Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 209
    sget-object p2, Lo/gP;->e:Lo/gP$Application;

    invoke-virtual {p2}, Lo/gP$Application;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lo/adq;->e()Z

    move-result p2

    if-nez p2, :cond_0

    .line 210
    new-instance p2, Lo/WL;

    move-object p4, p1

    check-cast p4, Landroid/view/ViewGroup;

    invoke-direct {p2, p4}, Lo/WL;-><init>(Landroid/view/ViewGroup;)V

    .line 211
    iput-object p2, p0, Lo/UN;->x:Lo/WL;

    .line 212
    new-instance p4, Lo/Vz;

    .line 214
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p5

    .line 212
    invoke-direct {p4, p2, p5, p3}, Lo/Vz;-><init>(Lo/WL;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 217
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Lo/WL;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    sget-object p2, Lo/gO;->d:Lo/gO$Activity;

    invoke-virtual {p2}, Lo/gO$Activity;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 222
    new-instance p2, Lo/WU;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p2, p1}, Lo/WU;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lo/UN;->y:Lo/WU;

    .line 223
    iget-object p1, p0, Lo/UN;->y:Lo/WU;

    if-eqz p1, :cond_1

    .line 224
    new-instance p2, Lo/VI;

    .line 226
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p4

    .line 224
    invoke-direct {p2, p1, p4, p3}, Lo/VI;-><init>(Lo/WU;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 229
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lo/WU;->w()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    invoke-virtual {p0}, Lo/UN;->e()Lio/reactivex/Observable;

    move-result-object p1

    .line 234
    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string p1, "this.safeManagedStateObs\u2026eUntil(destroyObservable)"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/PlayerUIComponents$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/PlayerUIComponents$3;-><init>(Lo/UN;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v2, 0x0

    .line 241
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/PlayerUIComponents$4;->e:Lcom/netflix/mediaclient/ui/player/v2/PlayerUIComponents$4;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 235
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lo/Xc;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    sget-object v0, Lo/gO;->d:Lo/gO$Activity;

    invoke-virtual {v0}, Lo/gO$Activity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    new-instance p1, Lo/WY;

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lo/WY;-><init>(Landroid/view/ViewGroup;)V

    check-cast p1, Lo/Xc;

    return-object p1

    .line 397
    :cond_0
    new-instance v0, Lo/Xc;

    invoke-direct {v0, p1}, Lo/Xc;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public a(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    new-instance p2, Lo/VK;

    iget-object v0, p0, Lo/UN;->b:Lo/NsdServiceInfo;

    invoke-direct {p2, v0, p1}, Lo/VK;-><init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 253
    new-instance p1, Lo/Factory2;

    invoke-direct {p1}, Lo/Factory2;-><init>()V

    .line 254
    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 259
    invoke-virtual {p0, p1}, Lo/UN;->b(Lo/Factory2;)V

    .line 262
    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Lo/NsdServiceInfo;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lo/fd;->d:Lo/fd$StateListAnimator;

    invoke-virtual {v0}, Lo/fd$StateListAnimator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Lo/DnsSdTxtRecord;

    invoke-direct {v0, p1}, Lo/DnsSdTxtRecord;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/NsdServiceInfo;

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Lo/IpUtils;

    invoke-direct {v0, p1}, Lo/IpUtils;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/NsdServiceInfo;

    :goto_0
    return-object v0
.end method

.method public b(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    new-instance p2, Lo/VZ;

    iget-object v0, p0, Lo/UN;->c:Lo/Xq;

    check-cast v0, Lo/WK;

    invoke-direct {p2, v0, p1}, Lo/VZ;-><init>(Lo/WK;Lio/reactivex/Observable;)V

    return-void
.end method

.method public b(Lo/Factory2;)V
    .locals 12

    const-string v0, "mainContainerConstraintSet"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, p1}, Lo/UN;->e(Lo/Factory2;)V

    .line 270
    iget-object v0, p0, Lo/UN;->a:Lo/WS;

    invoke-virtual {v0}, Lo/WS;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 271
    iget-object v0, p0, Lo/UN;->a:Lo/WS;

    invoke-virtual {v0}, Lo/WS;->a()I

    move-result v0

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 274
    iget-object v0, p0, Lo/UN;->d:Lo/Xn;

    invoke-virtual {v0}, Lo/Xn;->a()I

    move-result v0

    iget-object v4, p0, Lo/UN;->h:Lo/WJ;

    invoke-virtual {v4}, Lo/WJ;->a()I

    move-result v4

    invoke-virtual {p1, v0, v2, v4, v3}, Lo/Factory2;->e(IIII)V

    .line 275
    iget-object v0, p0, Lo/UN;->d:Lo/Xn;

    invoke-virtual {v0}, Lo/Xn;->a()I

    move-result v0

    iget-object v4, p0, Lo/UN;->c:Lo/Xq;

    invoke-virtual {v4}, Lo/Xq;->n()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4, v3}, Lo/Factory2;->e(IIII)V

    .line 277
    iget-object v0, p0, Lo/UN;->l:Lo/Xc;

    invoke-virtual {v0}, Lo/Xc;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lo/Factory2;->d(II)V

    .line 278
    iget-object v0, p0, Lo/UN;->l:Lo/Xc;

    invoke-virtual {v0}, Lo/Xc;->a()I

    move-result v5

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->W:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 281
    iget-object v0, p0, Lo/UN;->k:Lo/Xe;

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v0

    iget-object v4, p0, Lo/UN;->l:Lo/Xc;

    invoke-virtual {v4}, Lo/Xc;->a()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 282
    iget-object v0, p0, Lo/UN;->k:Lo/Xe;

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v5

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->az:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 283
    iget-object v0, p0, Lo/UN;->k:Lo/Xe;

    invoke-virtual {v0}, Lo/Xe;->a()I

    move-result v5

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->az:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v6, 0x2

    const/4 v8, 0x2

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 284
    iget-object v0, p0, Lo/UN;->n:Lo/Xa;

    invoke-virtual {v0}, Lo/Xa;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 285
    iget-object v0, p0, Lo/UN;->n:Lo/Xa;

    invoke-virtual {v0}, Lo/Xa;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 288
    iget-object v0, p0, Lo/UN;->s:Lo/Xf;

    invoke-virtual {v0}, Lo/Xf;->a()I

    move-result v0

    iget-object v4, p0, Lo/UN;->k:Lo/Xe;

    invoke-virtual {v4}, Lo/Xe;->a()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 289
    iget-object v0, p0, Lo/UN;->s:Lo/Xf;

    invoke-virtual {v0}, Lo/Xf;->a()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 290
    iget-object v0, p0, Lo/UN;->s:Lo/Xf;

    invoke-virtual {v0}, Lo/Xf;->a()I

    move-result v0

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 293
    iget-object v0, p0, Lo/UN;->r:Lo/Xd;

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lo/Factory2;->d(II)V

    .line 294
    iget-object v0, p0, Lo/UN;->r:Lo/Xd;

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v5

    iget-object v0, p0, Lo/UN;->m:Lo/WO;

    invoke-virtual {v0}, Lo/WO;->a()I

    move-result v7

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v6, 0x3

    const/4 v8, 0x4

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 295
    iget-object v0, p0, Lo/UN;->r:Lo/Xd;

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v5

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x7

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 298
    iget-object v0, p0, Lo/UN;->p:Lo/WX;

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lo/Factory2;->d(II)V

    .line 299
    iget-object v0, p0, Lo/UN;->p:Lo/WX;

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v5

    iget-object v0, p0, Lo/UN;->m:Lo/WO;

    invoke-virtual {v0}, Lo/WO;->a()I

    move-result v7

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v6, 0x3

    const/4 v8, 0x4

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 300
    iget-object v0, p0, Lo/UN;->p:Lo/WX;

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v5

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x7

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 302
    iget-object v0, p0, Lo/UN;->h:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 303
    iget-object v0, p0, Lo/UN;->h:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->a()I

    move-result v0

    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 305
    iget-object v0, p0, Lo/UN;->m:Lo/WO;

    invoke-virtual {v0}, Lo/WO;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 306
    iget-object v0, p0, Lo/UN;->m:Lo/WO;

    invoke-virtual {v0}, Lo/WO;->a()I

    move-result v0

    const/4 v5, 0x7

    invoke-virtual {p1, v0, v5, v1, v5}, Lo/Factory2;->e(IIII)V

    .line 308
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lo/Factory2;->d(II)V

    .line 309
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 310
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v4}, Lo/Factory2;->d(II)V

    .line 311
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v5}, Lo/Factory2;->d(II)V

    .line 312
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 313
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    iget-object v6, p0, Lo/UN;->h:Lo/WJ;

    invoke-virtual {v6}, Lo/WJ;->a()I

    move-result v6

    invoke-virtual {p1, v0, v3, v6, v3}, Lo/Factory2;->e(IIII)V

    .line 314
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    iget-object v6, p0, Lo/UN;->h:Lo/WJ;

    invoke-virtual {v6}, Lo/WJ;->a()I

    move-result v6

    invoke-virtual {p1, v0, v4, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 315
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    iget-object v6, p0, Lo/UN;->m:Lo/WO;

    invoke-virtual {v6}, Lo/WO;->a()I

    move-result v6

    invoke-virtual {p1, v0, v5, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 316
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v6

    invoke-virtual {v6}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ai:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p1, v0, v4, v6}, Lo/Factory2;->b(III)V

    .line 317
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v6

    invoke-virtual {v6}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ai:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p1, v0, v5, v6}, Lo/Factory2;->b(III)V

    .line 319
    iget-object v0, p0, Lo/UN;->f:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 320
    iget-object v0, p0, Lo/UN;->f:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->a()I

    move-result v0

    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 321
    sget-object v0, Lo/gP;->e:Lo/gP$Application;

    invoke-virtual {v0}, Lo/gP$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lo/UN;->x:Lo/WL;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lo/WL;->a()I

    move-result v6

    .line 323
    invoke-virtual {p1, v6, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 330
    invoke-virtual {v0}, Lo/WL;->a()I

    move-result v6

    .line 329
    invoke-virtual {p1, v6, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 336
    invoke-virtual {v0}, Lo/WL;->a()I

    move-result v0

    .line 335
    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 344
    :cond_0
    sget-object v0, Lo/gO;->d:Lo/gO$Activity;

    invoke-virtual {v0}, Lo/gO$Activity;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lo/UN;->y:Lo/WU;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Lo/WU;->a()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Lo/Factory2;->d(II)V

    .line 348
    invoke-virtual {v0}, Lo/WU;->a()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x4

    .line 352
    invoke-virtual {p0}, Lo/UN;->c()Lo/MenuInflater;

    move-result-object v2

    invoke-virtual {v2}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->X:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object v6, p1

    .line 347
    invoke-virtual/range {v6 .. v11}, Lo/Factory2;->b(IIIII)V

    .line 355
    invoke-virtual {v0}, Lo/WU;->a()I

    move-result v2

    .line 354
    invoke-virtual {p1, v2, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 361
    invoke-virtual {v0}, Lo/WU;->a()I

    move-result v0

    .line 360
    invoke-virtual {p1, v0, v5, v1, v5}, Lo/Factory2;->e(IIII)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/ViewGroup;)Lo/Xi;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    new-instance v0, Lo/Xi;

    invoke-direct {v0, p1}, Lo/Xi;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public d(Landroid/view/ViewGroup;)Lo/Xq;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lo/Xq;

    invoke-direct {v0, p1}, Lo/Xq;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public e(Lo/WJ;Lio/reactivex/Observable;)Lo/Vx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WJ;",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;)",
            "Lo/Vx;"
        }
    .end annotation

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedStateObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    new-instance v0, Lo/Vx;

    invoke-direct {v0, p1, p2}, Lo/Vx;-><init>(Lo/WJ;Lio/reactivex/Observable;)V

    return-object v0
.end method

.method public e(Landroid/view/ViewGroup;)Lo/WQ;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lio/reactivex/Observable;Lio/reactivex/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    new-instance v0, Lo/VH;

    iget-object v1, p0, Lo/UN;->t:Lo/WW;

    check-cast v1, Lo/WA;

    invoke-direct {v0, v1, p1, p2}, Lo/VH;-><init>(Lo/WA;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 431
    invoke-virtual {p0}, Lo/UN;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UN;->t:Lo/WW;

    invoke-virtual {p2}, Lo/WW;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object p1, p0, Lo/UN;->t:Lo/WW;

    invoke-virtual {p1}, Lo/WW;->w()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lio/reactivex/subjects/Subject;

    invoke-virtual {p0, p1}, Lo/UN;->e(Lio/reactivex/subjects/Subject;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type io.reactivex.subjects.Subject<com.netflix.mediaclient.ui.player.v2.PlayerUIEvent>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/UP;",
            ">;",
            "Lo/UK;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerStateEventObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerRepository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    new-instance v0, Lo/VM;

    iget-object v1, p0, Lo/UN;->l:Lo/Xc;

    check-cast v1, Lo/WC;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/VM;-><init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V

    return-void
.end method

.method public e(Lo/Factory2;)V
    .locals 4

    const-string v0, "mainContainerConstraintSet"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lo/UN;->i:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->a()I

    move-result v0

    iget-object v1, p0, Lo/UN;->h:Lo/WJ;

    invoke-virtual {v1}, Lo/WJ;->a()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v3, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 374
    iget-object v0, p0, Lo/UN;->i:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->a()I

    move-result v0

    iget-object v1, p0, Lo/UN;->k:Lo/Xe;

    invoke-virtual {v1}, Lo/Xe;->a()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v3}, Lo/Factory2;->e(IIII)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;)Lo/WH;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    new-instance v0, Lo/Xm;

    invoke-direct {v0, p1}, Lo/Xm;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/WH;

    return-object v0
.end method

.method public final f()Lo/Xq;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/UN;->c:Lo/Xq;

    return-object v0
.end method

.method public final g()Lo/WS;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/UN;->a:Lo/WS;

    return-object v0
.end method

.method public final h()Lo/WP;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/UN;->f:Lo/WP;

    return-object v0
.end method

.method public final i()Lo/Xg;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/UN;->i:Lo/Xg;

    return-object v0
.end method

.method public j(Landroid/view/ViewGroup;)Lo/Xe;
    .locals 1

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    new-instance v0, Lo/Xe;

    invoke-direct {v0, p1}, Lo/Xe;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public final j()Lo/Xn;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/UN;->d:Lo/Xn;

    return-object v0
.end method

.method public final k()Lo/Xe;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/UN;->k:Lo/Xe;

    return-object v0
.end method

.method public final l()Lo/Xi;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/UN;->o:Lo/Xi;

    return-object v0
.end method

.method public final m()Lo/WO;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/UN;->m:Lo/WO;

    return-object v0
.end method

.method public final n()Lo/WJ;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/UN;->h:Lo/WJ;

    return-object v0
.end method

.method public final o()Lo/Xc;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/UN;->l:Lo/Xc;

    return-object v0
.end method

.method public final p()Lo/WQ;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/UN;->q:Lo/WQ;

    return-object v0
.end method

.method public final r()Lo/WX;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/UN;->p:Lo/WX;

    return-object v0
.end method

.method public final s()Lo/Xf;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/UN;->s:Lo/Xf;

    return-object v0
.end method

.method public final t()Lo/Xd;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/UN;->r:Lo/Xd;

    return-object v0
.end method
