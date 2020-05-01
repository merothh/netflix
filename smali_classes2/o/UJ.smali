.class public Lo/UJ;
.super Lo/UM;
.source ""


# instance fields
.field private final a:Lo/WS;

.field private final b:Lo/Xm;

.field private final c:Lo/Xg;

.field private final d:Lo/Xq;

.field private final e:Lo/Vt;

.field private final f:Lo/WJ;

.field private final g:Lo/WR;

.field private final h:Lo/Xn;

.field private final i:Lo/WP;

.field private final j:Lo/WV;

.field private final k:Lo/XF;

.field private final l:Lo/Xi;

.field private final m:Lo/Xa;

.field private final n:Lo/Xc;

.field private final o:Lo/XG;

.field private final p:Lo/Xd;

.field private final q:Lo/WW;

.field private final r:Lo/WX;

.field private final s:Lo/Vu;

.field private final t:Lo/XD;


# direct methods
.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/UK;)V
    .locals 3
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
            ")V"
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

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lo/UM;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 63
    new-instance v0, Lo/Xq;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lo/Xq;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->d:Lo/Xq;

    .line 64
    new-instance v0, Lo/Vt;

    invoke-direct {v0, v1}, Lo/Vt;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->e:Lo/Vt;

    .line 65
    new-instance v0, Lo/Xm;

    invoke-direct {v0, v1}, Lo/Xm;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->b:Lo/Xm;

    .line 66
    new-instance v0, Lo/Xg;

    invoke-direct {v0, v1}, Lo/Xg;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->c:Lo/Xg;

    .line 67
    new-instance v0, Lo/WS;

    invoke-direct {v0, v1}, Lo/WS;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->a:Lo/WS;

    .line 68
    new-instance v0, Lo/Xn;

    invoke-direct {v0, v1}, Lo/Xn;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->h:Lo/Xn;

    .line 69
    new-instance v0, Lo/WR;

    invoke-direct {v0, v1}, Lo/WR;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->g:Lo/WR;

    .line 70
    new-instance v0, Lo/WV;

    invoke-direct {v0, v1}, Lo/WV;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->j:Lo/WV;

    .line 71
    new-instance v0, Lo/WP;

    invoke-direct {v0, v1}, Lo/WP;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->i:Lo/WP;

    .line 72
    new-instance v0, Lo/WJ;

    invoke-direct {v0, v1}, Lo/WJ;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->f:Lo/WJ;

    .line 73
    new-instance v0, Lo/Xi;

    invoke-direct {v0, v1}, Lo/Xi;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->l:Lo/Xi;

    .line 75
    new-instance v0, Lo/Xa;

    invoke-direct {v0, v1}, Lo/Xa;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->m:Lo/Xa;

    .line 76
    new-instance v0, Lo/Xc;

    invoke-direct {v0, v1}, Lo/Xc;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->n:Lo/Xc;

    .line 77
    new-instance v0, Lo/XF;

    invoke-direct {v0, v1}, Lo/XF;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->k:Lo/XF;

    .line 78
    new-instance v0, Lo/XG;

    invoke-direct {v0, v1}, Lo/XG;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->o:Lo/XG;

    .line 79
    new-instance v0, Lo/XD;

    invoke-direct {v0, v1}, Lo/XD;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->t:Lo/XD;

    .line 80
    new-instance v0, Lo/Xd;

    invoke-direct {v0, v1}, Lo/Xd;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->p:Lo/Xd;

    .line 81
    new-instance v0, Lo/WX;

    invoke-direct {v0, v1}, Lo/WX;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/UJ;->r:Lo/WX;

    .line 82
    new-instance v0, Lo/WW;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/WW;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lo/UJ;->q:Lo/WW;

    .line 83
    new-instance v0, Lo/Vu;

    invoke-direct {v0, p1}, Lo/Vu;-><init>(Lo/MenuInflater;)V

    iput-object v0, p0, Lo/UJ;->s:Lo/Vu;

    .line 88
    new-instance v0, Lo/VZ;

    iget-object v1, p0, Lo/UJ;->d:Lo/Xq;

    check-cast v1, Lo/WK;

    .line 89
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 88
    invoke-direct {v0, v1, v2}, Lo/VZ;-><init>(Lo/WK;Lio/reactivex/Observable;)V

    .line 91
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/UJ;->d:Lo/Xq;

    invoke-virtual {v1}, Lo/Xq;->w()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lo/VK;

    iget-object v1, p0, Lo/UJ;->e:Lo/Vt;

    check-cast v1, Lo/NsdServiceInfo;

    .line 95
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 94
    invoke-direct {v0, v1, v2}, Lo/VK;-><init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V

    .line 99
    new-instance v0, Lo/VQ;

    .line 100
    iget-object v1, p0, Lo/UJ;->b:Lo/Xm;

    check-cast v1, Lo/WH;

    .line 101
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 99
    invoke-direct {v0, v1, v2, p3}, Lo/VQ;-><init>(Lo/WH;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 104
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/UJ;->b:Lo/Xm;

    invoke-virtual {v1}, Lo/Xm;->w()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lo/VC;

    iget-object v1, p0, Lo/UJ;->a:Lo/WS;

    check-cast v1, Lo/Ww;

    .line 108
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 107
    invoke-direct {v0, v1, v2}, Lo/VC;-><init>(Lo/Ww;Lio/reactivex/Observable;)V

    .line 110
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/UJ;->a:Lo/WS;

    invoke-virtual {v1}, Lo/WS;->w()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Lo/VY;

    iget-object v1, p0, Lo/UJ;->h:Lo/Xn;

    check-cast v1, Lo/WM;

    .line 114
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 113
    invoke-direct {v0, v1, v2}, Lo/VY;-><init>(Lo/WM;Lio/reactivex/Observable;)V

    .line 116
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/UJ;->h:Lo/Xn;

    invoke-virtual {v1}, Lo/Xn;->w()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lo/VS;

    iget-object v1, p0, Lo/UJ;->c:Lo/Xg;

    check-cast v1, Lo/WE;

    .line 121
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 120
    invoke-direct {v0, v1, v2}, Lo/VS;-><init>(Lo/WE;Lio/reactivex/Observable;)V

    .line 123
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/UJ;->c:Lo/Xg;

    invoke-virtual {v1}, Lo/Xg;->w()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lo/VD;

    iget-object v1, p0, Lo/UJ;->g:Lo/WR;

    check-cast v1, Lo/Wy;

    .line 127
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 126
    invoke-direct {v0, v1, v2}, Lo/VD;-><init>(Lo/Wy;Lio/reactivex/Observable;)V

    .line 129
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/UJ;->g:Lo/WR;

    invoke-virtual {v1}, Lo/WR;->w()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lo/VJ;

    .line 133
    iget-object v1, p0, Lo/UJ;->j:Lo/WV;

    check-cast v1, Lo/Wx;

    .line 134
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 132
    invoke-direct {v0, v1, v2, p3}, Lo/VJ;-><init>(Lo/Wx;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 137
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/UJ;->j:Lo/WV;

    invoke-virtual {v1}, Lo/WV;->w()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lo/Wm;

    invoke-virtual {p1}, Lo/MenuInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, p1}, Lo/Wm;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 143
    new-instance p1, Lo/VE;

    .line 144
    iget-object v1, p0, Lo/UJ;->i:Lo/WP;

    check-cast v1, Lo/Wu;

    .line 145
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v2

    .line 146
    check-cast v0, Lo/UserManager;

    .line 143
    invoke-direct {p1, v1, v2, v0}, Lo/VE;-><init>(Lo/Wu;Lio/reactivex/Observable;Lo/UserManager;)V

    .line 148
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/UJ;->i:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->w()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Lo/Vx;

    iget-object v0, p0, Lo/UJ;->f:Lo/WJ;

    .line 152
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 151
    invoke-direct {p1, v0, v1}, Lo/Vx;-><init>(Lo/WJ;Lio/reactivex/Observable;)V

    .line 154
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/UJ;->f:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->w()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance p1, Lo/VV;

    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    check-cast v0, Lo/WF;

    .line 158
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 157
    invoke-direct {p1, v0, v1}, Lo/VV;-><init>(Lo/WF;Lio/reactivex/Observable;)V

    .line 160
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->w()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance p1, Lo/VL;

    .line 164
    iget-object v0, p0, Lo/UJ;->m:Lo/Xa;

    check-cast v0, Lo/WB;

    .line 165
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object v1

    .line 163
    invoke-direct {p1, v0, v1, p3}, Lo/VL;-><init>(Lo/WB;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 168
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lo/UJ;->m:Lo/Xa;

    invoke-virtual {v0}, Lo/Xa;->w()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance p1, Lo/VM;

    .line 172
    iget-object v0, p0, Lo/UJ;->n:Lo/Xc;

    check-cast v0, Lo/WC;

    .line 171
    invoke-direct {p1, v0, p2, p4, p3}, Lo/VM;-><init>(Lo/WC;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;)V

    .line 177
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UJ;->n:Lo/Xc;

    invoke-virtual {p2}, Lo/Xc;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance p1, Lo/We;

    .line 181
    iget-object p2, p0, Lo/UJ;->k:Lo/XF;

    check-cast p2, Lo/Xv;

    .line 182
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object p4

    .line 180
    invoke-direct {p1, p2, p4}, Lo/We;-><init>(Lo/Xv;Lio/reactivex/Observable;)V

    .line 184
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UJ;->k:Lo/XF;

    invoke-virtual {p2}, Lo/XF;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;

    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object p2

    iget-object p4, p0, Lo/UJ;->o:Lo/XG;

    iget-object v0, p0, Lo/UJ;->t:Lo/XD;

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter;-><init>(Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/XG;Lo/XD;)V

    .line 188
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UJ;->o:Lo/XG;

    invoke-virtual {p2}, Lo/XG;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UJ;->t:Lo/XD;

    invoke-virtual {p2}, Lo/XD;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance p1, Lo/VR;

    iget-object p2, p0, Lo/UJ;->p:Lo/Xd;

    check-cast p2, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    .line 194
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object p4

    .line 193
    invoke-direct {p1, p2, p4}, Lo/VR;-><init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;Lio/reactivex/Observable;)V

    .line 196
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UJ;->p:Lo/Xd;

    invoke-virtual {p2}, Lo/Xd;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance p1, Lo/VT;

    iget-object p2, p0, Lo/UJ;->r:Lo/WX;

    check-cast p2, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;

    .line 200
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object p4

    .line 199
    invoke-direct {p1, p2, p4}, Lo/VT;-><init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView;Lio/reactivex/Observable;)V

    .line 202
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UJ;->r:Lo/WX;

    invoke-virtual {p2}, Lo/WX;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance p1, Lo/Wc;

    iget-object p2, p0, Lo/UJ;->s:Lo/Vu;

    check-cast p2, Lo/Vh;

    .line 205
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object p4

    .line 204
    invoke-direct {p1, p2, p4}, Lo/Wc;-><init>(Lo/Vh;Lio/reactivex/Observable;)V

    .line 207
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UJ;->s:Lo/Vu;

    invoke-virtual {p2}, Lo/Vu;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance p1, Lo/VH;

    .line 211
    iget-object p2, p0, Lo/UJ;->q:Lo/WW;

    check-cast p2, Lo/WA;

    .line 212
    invoke-virtual {p0}, Lo/UJ;->e()Lio/reactivex/Observable;

    move-result-object p4

    .line 210
    invoke-direct {p1, p2, p4, p3}, Lo/VH;-><init>(Lo/WA;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 215
    invoke-virtual {p0}, Lo/UJ;->a()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/UJ;->q:Lo/WW;

    invoke-virtual {p2}, Lo/WW;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object p1, p0, Lo/UJ;->q:Lo/WW;

    invoke-virtual {p1}, Lo/WW;->w()Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lio/reactivex/subjects/Subject;

    invoke-virtual {p0, p1}, Lo/UJ;->e(Lio/reactivex/subjects/Subject;)V

    const/4 p1, 0x1

    .line 218
    invoke-virtual {p0, p1}, Lo/UJ;->b(Z)V

    return-void

    .line 216
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type io.reactivex.subjects.Subject<com.netflix.mediaclient.ui.player.v2.PlayerUIEvent>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(Z)V
    .locals 1

    .line 227
    new-instance p1, Lo/Factory2;

    invoke-direct {p1}, Lo/Factory2;-><init>()V

    .line 228
    invoke-virtual {p0}, Lo/UJ;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 233
    invoke-virtual {p0, p1}, Lo/UJ;->c(Lo/Factory2;)V

    .line 236
    invoke-virtual {p0}, Lo/UJ;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method public c(Lo/Factory2;)V
    .locals 12

    const-string v0, "mainContainerConstraintSet"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lo/UJ;->c:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->a()I

    move-result v0

    .line 244
    iget-object v1, p0, Lo/UJ;->f:Lo/WJ;

    invoke-virtual {v1}, Lo/WJ;->a()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    .line 241
    invoke-virtual {p1, v0, v3, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 248
    iget-object v0, p0, Lo/UJ;->c:Lo/Xg;

    invoke-virtual {v0}, Lo/Xg;->a()I

    move-result v0

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 256
    iget-object v0, p0, Lo/UJ;->a:Lo/WS;

    invoke-virtual {v0}, Lo/WS;->a()I

    move-result v0

    .line 255
    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 262
    iget-object v0, p0, Lo/UJ;->a:Lo/WS;

    invoke-virtual {v0}, Lo/WS;->a()I

    move-result v0

    .line 261
    invoke-virtual {p1, v0, v2, v1, v2}, Lo/Factory2;->e(IIII)V

    .line 270
    iget-object v0, p0, Lo/UJ;->h:Lo/Xn;

    invoke-virtual {v0}, Lo/Xn;->a()I

    move-result v0

    .line 272
    iget-object v4, p0, Lo/UJ;->f:Lo/WJ;

    invoke-virtual {v4}, Lo/WJ;->a()I

    move-result v4

    .line 269
    invoke-virtual {p1, v0, v3, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 276
    iget-object v0, p0, Lo/UJ;->h:Lo/Xn;

    invoke-virtual {v0}, Lo/Xn;->a()I

    move-result v0

    .line 278
    iget-object v4, p0, Lo/UJ;->d:Lo/Xq;

    invoke-virtual {v4}, Lo/Xq;->n()I

    move-result v4

    .line 275
    invoke-virtual {p1, v0, v2, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 283
    iget-object v0, p0, Lo/UJ;->n:Lo/Xc;

    invoke-virtual {v0}, Lo/Xc;->a()I

    move-result v0

    .line 282
    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 287
    iget-object v0, p0, Lo/UJ;->n:Lo/Xc;

    invoke-virtual {v0}, Lo/Xc;->a()I

    move-result v5

    .line 291
    invoke-virtual {p0}, Lo/UJ;->c()Lo/MenuInflater;

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

    .line 286
    invoke-virtual/range {v4 .. v9}, Lo/Factory2;->b(IIIII)V

    .line 295
    iget-object v0, p0, Lo/UJ;->n:Lo/Xc;

    invoke-virtual {v0}, Lo/Xc;->a()I

    move-result v0

    .line 297
    iget-object v4, p0, Lo/UJ;->k:Lo/XF;

    invoke-virtual {v4}, Lo/XF;->a()I

    move-result v4

    .line 294
    invoke-virtual {p1, v0, v3, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 301
    iget-object v0, p0, Lo/UJ;->m:Lo/Xa;

    invoke-virtual {v0}, Lo/Xa;->a()I

    move-result v0

    .line 303
    iget-object v4, p0, Lo/UJ;->k:Lo/XF;

    invoke-virtual {v4}, Lo/XF;->a()I

    move-result v4

    .line 300
    invoke-virtual {p1, v0, v2, v4, v3}, Lo/Factory2;->e(IIII)V

    .line 307
    iget-object v0, p0, Lo/UJ;->m:Lo/Xa;

    invoke-virtual {v0}, Lo/Xa;->a()I

    move-result v0

    .line 309
    iget-object v4, p0, Lo/UJ;->f:Lo/WJ;

    invoke-virtual {v4}, Lo/WJ;->a()I

    move-result v4

    .line 306
    invoke-virtual {p1, v0, v3, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 313
    iget-object v0, p0, Lo/UJ;->k:Lo/XF;

    invoke-virtual {v0}, Lo/XF;->a()I

    move-result v0

    .line 315
    iget-object v4, p0, Lo/UJ;->n:Lo/Xc;

    invoke-virtual {v4}, Lo/Xc;->a()I

    move-result v4

    .line 312
    invoke-virtual {p1, v0, v2, v4, v3}, Lo/Factory2;->e(IIII)V

    .line 319
    iget-object v0, p0, Lo/UJ;->k:Lo/XF;

    invoke-virtual {v0}, Lo/XF;->a()I

    move-result v0

    .line 321
    iget-object v4, p0, Lo/UJ;->m:Lo/Xa;

    invoke-virtual {v4}, Lo/Xa;->a()I

    move-result v4

    .line 318
    invoke-virtual {p1, v0, v3, v4, v2}, Lo/Factory2;->e(IIII)V

    .line 325
    iget-object v0, p0, Lo/UJ;->k:Lo/XF;

    invoke-virtual {v0}, Lo/XF;->a()I

    move-result v0

    const/4 v4, 0x6

    .line 324
    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 331
    iget-object v0, p0, Lo/UJ;->k:Lo/XF;

    invoke-virtual {v0}, Lo/XF;->a()I

    move-result v0

    const/4 v5, 0x7

    .line 330
    invoke-virtual {p1, v0, v5, v1, v5}, Lo/Factory2;->e(IIII)V

    .line 338
    iget-object v0, p0, Lo/UJ;->p:Lo/Xd;

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 340
    iget-object v0, p0, Lo/UJ;->p:Lo/Xd;

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v0

    .line 342
    iget-object v6, p0, Lo/UJ;->k:Lo/XF;

    invoke-virtual {v6}, Lo/XF;->a()I

    move-result v6

    .line 339
    invoke-virtual {p1, v0, v2, v6, v3}, Lo/Factory2;->e(IIII)V

    .line 346
    iget-object v0, p0, Lo/UJ;->p:Lo/Xd;

    invoke-virtual {v0}, Lo/Xd;->a()I

    move-result v7

    .line 350
    invoke-virtual {p0}, Lo/UJ;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x7

    move-object v6, p1

    .line 345
    invoke-virtual/range {v6 .. v11}, Lo/Factory2;->b(IIIII)V

    .line 355
    iget-object v0, p0, Lo/UJ;->r:Lo/WX;

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v0

    .line 354
    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 359
    iget-object v0, p0, Lo/UJ;->r:Lo/WX;

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v0

    .line 361
    iget-object v6, p0, Lo/UJ;->f:Lo/WJ;

    invoke-virtual {v6}, Lo/WJ;->a()I

    move-result v6

    .line 358
    invoke-virtual {p1, v0, v3, v6, v2}, Lo/Factory2;->e(IIII)V

    .line 365
    iget-object v0, p0, Lo/UJ;->r:Lo/WX;

    invoke-virtual {v0}, Lo/WX;->a()I

    move-result v7

    .line 369
    invoke-virtual {p0}, Lo/UJ;->c()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object v6, p1

    .line 364
    invoke-virtual/range {v6 .. v11}, Lo/Factory2;->b(IIIII)V

    .line 373
    iget-object v0, p0, Lo/UJ;->f:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->a()I

    move-result v0

    .line 372
    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 379
    iget-object v0, p0, Lo/UJ;->f:Lo/WJ;

    invoke-virtual {v0}, Lo/WJ;->a()I

    move-result v0

    .line 378
    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 385
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lo/Factory2;->d(II)V

    .line 386
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lo/Factory2;->d(II)V

    .line 387
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v4}, Lo/Factory2;->d(II)V

    .line 388
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    invoke-virtual {p1, v0, v5}, Lo/Factory2;->d(II)V

    .line 390
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    .line 389
    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 396
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    .line 398
    iget-object v6, p0, Lo/UJ;->f:Lo/WJ;

    invoke-virtual {v6}, Lo/WJ;->a()I

    move-result v6

    .line 395
    invoke-virtual {p1, v0, v2, v6, v2}, Lo/Factory2;->e(IIII)V

    .line 402
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    .line 401
    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 408
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    .line 407
    invoke-virtual {p1, v0, v5, v1, v5}, Lo/Factory2;->e(IIII)V

    .line 414
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    .line 416
    invoke-virtual {p0}, Lo/UJ;->c()Lo/MenuInflater;

    move-result-object v2

    invoke-virtual {v2}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ai:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 413
    invoke-virtual {p1, v0, v4, v2}, Lo/Factory2;->b(III)V

    .line 419
    iget-object v0, p0, Lo/UJ;->l:Lo/Xi;

    invoke-virtual {v0}, Lo/Xi;->a()I

    move-result v0

    .line 421
    invoke-virtual {p0}, Lo/UJ;->c()Lo/MenuInflater;

    move-result-object v2

    invoke-virtual {v2}, Lo/MenuInflater;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ai:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 418
    invoke-virtual {p1, v0, v5, v2}, Lo/Factory2;->b(III)V

    .line 425
    iget-object v0, p0, Lo/UJ;->i:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->a()I

    move-result v0

    .line 424
    invoke-virtual {p1, v0, v3, v1, v3}, Lo/Factory2;->e(IIII)V

    .line 431
    iget-object v0, p0, Lo/UJ;->i:Lo/WP;

    invoke-virtual {v0}, Lo/WP;->a()I

    move-result v0

    .line 430
    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 438
    iget-object v0, p0, Lo/UJ;->o:Lo/XG;

    invoke-virtual {v0}, Lo/XG;->a()I

    move-result v0

    .line 437
    invoke-virtual {p1, v0, v4, v1, v4}, Lo/Factory2;->e(IIII)V

    .line 444
    iget-object v0, p0, Lo/UJ;->o:Lo/XG;

    invoke-virtual {v0}, Lo/XG;->a()I

    move-result v0

    .line 443
    invoke-virtual {p1, v0, v5, v1, v5}, Lo/Factory2;->e(IIII)V

    return-void
.end method
