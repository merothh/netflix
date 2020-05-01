.class public Lo/FG;
.super Lo/FF;
.source ""


# instance fields
.field private final a:Lo/Fs;

.field private final b:Lo/Ff;

.field private final c:Lo/Fu;

.field private final d:Lo/FA;

.field private final e:Lo/Fo;

.field private final f:Lo/Fk;

.field private final g:Lo/Fc;

.field private final h:Lo/Ft;

.field private final i:Lo/Fl;

.field private final j:Lo/Fz;

.field private final k:Lo/Fc;

.field private final l:Lo/Fm;

.field private final m:Lo/Fe;

.field private final n:Lo/Fd;

.field private final o:Lo/FB;


# direct methods
.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MenuInflater;",
            "Lio/reactivex/Observable<",
            "Lo/DC;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")V"
        }
    .end annotation

    const-string v0, "mainContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeManagedDetailsPageEventObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lo/FF;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;)V

    .line 53
    invoke-virtual {p0, p1}, Lo/FG;->c(Lo/MenuInflater;)Lo/FA;

    move-result-object v0

    iput-object v0, p0, Lo/FG;->d:Lo/FA;

    .line 55
    new-instance v0, Lo/Fo;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lo/Fo;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/FG;->e:Lo/Fo;

    .line 57
    new-instance v0, Lo/Fu;

    invoke-direct {v0, v1}, Lo/Fu;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/FG;->c:Lo/Fu;

    .line 59
    new-instance v0, Lo/Ff;

    invoke-direct {v0, v1}, Lo/Ff;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/FG;->b:Lo/Ff;

    .line 61
    new-instance v0, Lo/Fs;

    invoke-direct {v0, v1}, Lo/Fs;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/FG;->a:Lo/Fs;

    .line 63
    new-instance v0, Lo/Fl;

    invoke-direct {v0, v1}, Lo/Fl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/FG;->i:Lo/Fl;

    .line 65
    new-instance v0, Lo/Fc;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p4}, Lo/Fc;-><init>(Landroid/view/ViewGroup;ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    iput-object v0, p0, Lo/FG;->g:Lo/Fc;

    .line 67
    new-instance v0, Lo/Ft;

    invoke-direct {v0, v1}, Lo/Ft;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/FG;->h:Lo/Ft;

    .line 69
    invoke-direct {p0, p1}, Lo/FG;->d(Lo/MenuInflater;)Lo/Fz;

    move-result-object p1

    iput-object p1, p0, Lo/FG;->j:Lo/Fz;

    .line 71
    new-instance p1, Lo/Fk;

    invoke-direct {p1, v1}, Lo/Fk;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lo/FG;->f:Lo/Fk;

    .line 73
    new-instance p1, Lo/Fm;

    invoke-direct {p1, v1}, Lo/Fm;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lo/FG;->l:Lo/Fm;

    .line 75
    new-instance p1, Lo/Fd;

    invoke-direct {p1, v1, p3}, Lo/Fd;-><init>(Landroid/view/ViewGroup;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/FG;->n:Lo/Fd;

    .line 80
    new-instance p1, Lo/Fe;

    invoke-direct {p1, v1}, Lo/Fe;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lo/FG;->m:Lo/Fe;

    .line 82
    new-instance p1, Lo/FB;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v1, v0, v2, v0}, Lo/FB;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;ILo/amc;)V

    iput-object p1, p0, Lo/FG;->o:Lo/FB;

    .line 84
    new-instance p1, Lo/Fc;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0, p4}, Lo/Fc;-><init>(Landroid/view/ViewGroup;ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    iput-object p1, p0, Lo/FG;->k:Lo/Fc;

    .line 87
    new-instance p1, Lo/EH;

    iget-object p4, p0, Lo/FG;->d:Lo/FA;

    invoke-direct {p1, p4, p2}, Lo/EH;-><init>(Lo/FA;Lio/reactivex/Observable;)V

    .line 88
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {p4}, Lo/FA;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance p1, Lo/EL;

    iget-object p4, p0, Lo/FG;->e:Lo/Fo;

    invoke-direct {p1, p4, p2}, Lo/EL;-><init>(Lo/Fo;Lio/reactivex/Observable;)V

    .line 91
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->e:Lo/Fo;

    invoke-virtual {p4}, Lo/Fo;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance p1, Lo/EJ;

    iget-object p4, p0, Lo/FG;->c:Lo/Fu;

    invoke-direct {p1, p4, p2}, Lo/EJ;-><init>(Lo/Fu;Lio/reactivex/Observable;)V

    .line 94
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->c:Lo/Fu;

    invoke-virtual {p4}, Lo/Fu;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance p1, Lo/Ev;

    iget-object p4, p0, Lo/FG;->b:Lo/Ff;

    invoke-direct {p1, p4, p2}, Lo/Ev;-><init>(Lo/Ff;Lio/reactivex/Observable;)V

    .line 97
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->b:Lo/Ff;

    invoke-virtual {p4}, Lo/Ff;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance p1, Lo/EK;

    iget-object p4, p0, Lo/FG;->a:Lo/Fs;

    invoke-direct {p1, p4, p2}, Lo/EK;-><init>(Lo/Fs;Lio/reactivex/Observable;)V

    .line 100
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->a:Lo/Fs;

    invoke-virtual {p4}, Lo/Fs;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance p1, Lo/EI;

    iget-object p4, p0, Lo/FG;->i:Lo/Fl;

    invoke-direct {p1, p4, p2}, Lo/EI;-><init>(Lo/Fl;Lio/reactivex/Observable;)V

    .line 103
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->i:Lo/Fl;

    invoke-virtual {p4}, Lo/Fl;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance p1, Lo/Ey;

    iget-object p4, p0, Lo/FG;->g:Lo/Fc;

    invoke-direct {p1, p4, p2}, Lo/Ey;-><init>(Lo/Fc;Lio/reactivex/Observable;)V

    .line 106
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->g:Lo/Fc;

    invoke-virtual {p4}, Lo/Fc;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance p1, Lo/EN;

    iget-object p4, p0, Lo/FG;->h:Lo/Ft;

    invoke-direct {p1, p4, p2}, Lo/EN;-><init>(Lo/Ft;Lio/reactivex/Observable;)V

    .line 109
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->h:Lo/Ft;

    invoke-virtual {p4}, Lo/Ft;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance p1, Lo/EG;

    iget-object p4, p0, Lo/FG;->j:Lo/Fz;

    invoke-direct {p1, p4, p2}, Lo/EG;-><init>(Lo/Fz;Lio/reactivex/Observable;)V

    .line 112
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->j:Lo/Fz;

    invoke-interface {p4}, Lo/Fz;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance p1, Lo/EB;

    iget-object p4, p0, Lo/FG;->f:Lo/Fk;

    invoke-direct {p1, p4, p2}, Lo/EB;-><init>(Lo/Fk;Lio/reactivex/Observable;)V

    .line 115
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->f:Lo/Fk;

    invoke-virtual {p4}, Lo/Fk;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance p1, Lo/ED;

    iget-object p4, p0, Lo/FG;->l:Lo/Fm;

    invoke-direct {p1, p4, p2}, Lo/ED;-><init>(Lo/Fm;Lio/reactivex/Observable;)V

    .line 118
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->l:Lo/Fm;

    invoke-virtual {p4}, Lo/Fm;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p1, Lo/EA;

    iget-object p4, p0, Lo/FG;->n:Lo/Fd;

    invoke-direct {p1, p4, p2}, Lo/EA;-><init>(Lo/Fd;Lio/reactivex/Observable;)V

    .line 121
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->n:Lo/Fd;

    invoke-virtual {p4}, Lo/Fd;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance p1, Lo/Ex;

    iget-object p4, p0, Lo/FG;->m:Lo/Fe;

    invoke-direct {p1, p4, p2}, Lo/Ex;-><init>(Lo/Fe;Lio/reactivex/Observable;)V

    .line 124
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lo/FG;->m:Lo/Fe;

    invoke-virtual {p4}, Lo/Fe;->w()Lio/reactivex/Observable;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lo/EP;

    iget-object p1, p0, Lo/FG;->o:Lo/FB;

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lo/EP;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;ILo/amc;)V

    .line 127
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p3, p0, Lo/FG;->o:Lo/FB;

    invoke-virtual {p3}, Lo/FB;->w()Lio/reactivex/Observable;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p1, Lo/Ey;

    iget-object p3, p0, Lo/FG;->k:Lo/Fc;

    invoke-direct {p1, p3, p2}, Lo/Ey;-><init>(Lo/Fc;Lio/reactivex/Observable;)V

    .line 130
    invoke-virtual {p0}, Lo/FG;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/FG;->k:Lo/Fc;

    invoke-virtual {p2}, Lo/Fc;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final d(Lo/MenuInflater;)Lo/Fz;
    .locals 2

    .line 471
    new-instance v0, Landroid/view/ViewStub;

    invoke-virtual {p1}, Lo/MenuInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    const-string v1, "DetailsPageVideoCreditsUIView"

    .line 472
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 473
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Lo/MenuInflater;->addView(Landroid/view/View;)V

    .line 475
    new-instance p1, Lo/Fj;

    invoke-direct {p1, v0}, Lo/Fj;-><init>(Landroid/view/ViewStub;)V

    check-cast p1, Lo/Fz;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 134
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 135
    invoke-virtual {p0}, Lo/FG;->f()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 139
    iget-object v1, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {v1}, Lo/FA;->a()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v0, v1, v2, v3, v2}, Lo/Factory2;->e(IIII)V

    .line 145
    iget-object v1, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {v1}, Lo/FA;->a()I

    move-result v1

    const/4 v4, 0x6

    .line 144
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 151
    iget-object v1, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {v1}, Lo/FA;->a()I

    move-result v1

    const/4 v5, 0x7

    .line 150
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 159
    iget-object v1, p0, Lo/FG;->e:Lo/Fo;

    invoke-virtual {v1}, Lo/Fo;->a()I

    move-result v1

    .line 161
    iget-object v6, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {v6}, Lo/FA;->a()I

    move-result v6

    .line 158
    invoke-virtual {v0, v1, v2, v6, v2}, Lo/Factory2;->e(IIII)V

    .line 165
    iget-object v1, p0, Lo/FG;->e:Lo/Fo;

    invoke-virtual {v1}, Lo/Fo;->a()I

    move-result v1

    .line 164
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 171
    iget-object v1, p0, Lo/FG;->e:Lo/Fo;

    invoke-virtual {v1}, Lo/Fo;->a()I

    move-result v1

    .line 170
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 177
    iget-object v1, p0, Lo/FG;->e:Lo/Fo;

    invoke-virtual {v1}, Lo/Fo;->a()I

    move-result v1

    .line 179
    iget-object v6, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {v6}, Lo/FA;->a()I

    move-result v6

    const/4 v7, 0x4

    .line 176
    invoke-virtual {v0, v1, v7, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 185
    iget-object v1, p0, Lo/FG;->c:Lo/Fu;

    invoke-virtual {v1}, Lo/Fu;->a()I

    move-result v1

    .line 187
    iget-object v6, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {v6}, Lo/FA;->a()I

    move-result v6

    .line 184
    invoke-virtual {v0, v1, v7, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 191
    iget-object v1, p0, Lo/FG;->c:Lo/Fu;

    invoke-virtual {v1}, Lo/Fu;->a()I

    move-result v1

    .line 190
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 197
    iget-object v1, p0, Lo/FG;->c:Lo/Fu;

    invoke-virtual {v1}, Lo/Fu;->a()I

    move-result v1

    .line 196
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 205
    iget-object v1, p0, Lo/FG;->b:Lo/Ff;

    invoke-virtual {v1}, Lo/Ff;->a()I

    move-result v1

    .line 207
    iget-object v6, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {v6}, Lo/FA;->a()I

    move-result v6

    .line 204
    invoke-virtual {v0, v1, v2, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 211
    iget-object v1, p0, Lo/FG;->b:Lo/Ff;

    invoke-virtual {v1}, Lo/Ff;->a()I

    move-result v1

    .line 210
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 217
    iget-object v1, p0, Lo/FG;->b:Lo/Ff;

    invoke-virtual {v1}, Lo/Ff;->a()I

    move-result v1

    .line 216
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 225
    iget-object v1, p0, Lo/FG;->a:Lo/Fs;

    invoke-virtual {v1}, Lo/Fs;->a()I

    move-result v1

    .line 227
    iget-object v6, p0, Lo/FG;->b:Lo/Ff;

    invoke-virtual {v6}, Lo/Ff;->a()I

    move-result v6

    .line 224
    invoke-virtual {v0, v1, v2, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 231
    iget-object v1, p0, Lo/FG;->a:Lo/Fs;

    invoke-virtual {v1}, Lo/Fs;->a()I

    move-result v1

    .line 230
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 237
    iget-object v1, p0, Lo/FG;->a:Lo/Fs;

    invoke-virtual {v1}, Lo/Fs;->a()I

    move-result v1

    .line 236
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 245
    iget-object v1, p0, Lo/FG;->i:Lo/Fl;

    invoke-virtual {v1}, Lo/Fl;->a()I

    move-result v1

    .line 247
    iget-object v6, p0, Lo/FG;->a:Lo/Fs;

    invoke-virtual {v6}, Lo/Fs;->a()I

    move-result v6

    .line 244
    invoke-virtual {v0, v1, v2, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 251
    iget-object v1, p0, Lo/FG;->i:Lo/Fl;

    invoke-virtual {v1}, Lo/Fl;->a()I

    move-result v1

    .line 250
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 257
    iget-object v1, p0, Lo/FG;->i:Lo/Fl;

    invoke-virtual {v1}, Lo/Fl;->a()I

    move-result v1

    .line 256
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 265
    iget-object v1, p0, Lo/FG;->h:Lo/Ft;

    invoke-virtual {v1}, Lo/Ft;->a()I

    move-result v1

    .line 267
    iget-object v6, p0, Lo/FG;->i:Lo/Fl;

    invoke-virtual {v6}, Lo/Fl;->a()I

    move-result v6

    .line 264
    invoke-virtual {v0, v1, v2, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 271
    iget-object v1, p0, Lo/FG;->h:Lo/Ft;

    invoke-virtual {v1}, Lo/Ft;->a()I

    move-result v1

    .line 270
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 277
    iget-object v1, p0, Lo/FG;->h:Lo/Ft;

    invoke-virtual {v1}, Lo/Ft;->a()I

    move-result v1

    .line 276
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 285
    iget-object v1, p0, Lo/FG;->j:Lo/Fz;

    invoke-interface {v1}, Lo/Fz;->a()I

    move-result v1

    .line 287
    iget-object v6, p0, Lo/FG;->h:Lo/Ft;

    invoke-virtual {v6}, Lo/Ft;->a()I

    move-result v6

    .line 284
    invoke-virtual {v0, v1, v2, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 291
    iget-object v1, p0, Lo/FG;->j:Lo/Fz;

    invoke-interface {v1}, Lo/Fz;->a()I

    move-result v1

    .line 290
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 297
    iget-object v1, p0, Lo/FG;->j:Lo/Fz;

    invoke-interface {v1}, Lo/Fz;->a()I

    move-result v1

    .line 296
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 305
    iget-object v1, p0, Lo/FG;->f:Lo/Fk;

    invoke-virtual {v1}, Lo/Fk;->a()I

    move-result v1

    .line 307
    iget-object v6, p0, Lo/FG;->j:Lo/Fz;

    invoke-interface {v6}, Lo/Fz;->a()I

    move-result v6

    .line 304
    invoke-virtual {v0, v1, v2, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 311
    iget-object v1, p0, Lo/FG;->f:Lo/Fk;

    invoke-virtual {v1}, Lo/Fk;->a()I

    move-result v1

    .line 310
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 317
    iget-object v1, p0, Lo/FG;->f:Lo/Fk;

    invoke-virtual {v1}, Lo/Fk;->a()I

    move-result v1

    .line 316
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 325
    iget-object v1, p0, Lo/FG;->l:Lo/Fm;

    invoke-virtual {v1}, Lo/Fm;->a()I

    move-result v1

    .line 327
    iget-object v6, p0, Lo/FG;->f:Lo/Fk;

    invoke-virtual {v6}, Lo/Fk;->a()I

    move-result v6

    .line 324
    invoke-virtual {v0, v1, v2, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 331
    iget-object v1, p0, Lo/FG;->l:Lo/Fm;

    invoke-virtual {v1}, Lo/Fm;->a()I

    move-result v1

    .line 330
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 337
    iget-object v1, p0, Lo/FG;->l:Lo/Fm;

    invoke-virtual {v1}, Lo/Fm;->a()I

    move-result v1

    .line 336
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 343
    iget-object v1, p0, Lo/FG;->l:Lo/Fm;

    invoke-virtual {v1}, Lo/Fm;->a()I

    move-result v1

    const/4 v6, 0x0

    .line 342
    invoke-virtual {v0, v1, v6}, Lo/Factory2;->b(IF)V

    .line 349
    iget-object v1, p0, Lo/FG;->g:Lo/Fc;

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 351
    iget-object v8, p0, Lo/FG;->h:Lo/Ft;

    invoke-virtual {v8}, Lo/Ft;->a()I

    move-result v8

    .line 348
    invoke-virtual {v0, v1, v2, v8, v2}, Lo/Factory2;->e(IIII)V

    .line 355
    iget-object v1, p0, Lo/FG;->g:Lo/Fc;

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 357
    iget-object v8, p0, Lo/FG;->j:Lo/Fz;

    invoke-interface {v8}, Lo/Fz;->a()I

    move-result v8

    .line 354
    invoke-virtual {v0, v1, v7, v8, v7}, Lo/Factory2;->e(IIII)V

    .line 361
    iget-object v1, p0, Lo/FG;->g:Lo/Fc;

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 360
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 367
    iget-object v1, p0, Lo/FG;->g:Lo/Fc;

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 366
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 375
    iget-object v1, p0, Lo/FG;->n:Lo/Fd;

    invoke-virtual {v1}, Lo/Fd;->a()I

    move-result v1

    .line 377
    iget-object v8, p0, Lo/FG;->l:Lo/Fm;

    invoke-virtual {v8}, Lo/Fm;->a()I

    move-result v8

    .line 374
    invoke-virtual {v0, v1, v2, v8, v7}, Lo/Factory2;->e(IIII)V

    .line 381
    iget-object v1, p0, Lo/FG;->n:Lo/Fd;

    invoke-virtual {v1}, Lo/Fd;->a()I

    move-result v1

    .line 380
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 387
    iget-object v1, p0, Lo/FG;->n:Lo/Fd;

    invoke-virtual {v1}, Lo/Fd;->a()I

    move-result v1

    .line 386
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 395
    iget-object v1, p0, Lo/FG;->m:Lo/Fe;

    invoke-virtual {v1}, Lo/Fe;->a()I

    move-result v1

    .line 397
    iget-object v8, p0, Lo/FG;->n:Lo/Fd;

    invoke-virtual {v8}, Lo/Fd;->a()I

    move-result v8

    .line 394
    invoke-virtual {v0, v1, v2, v8, v7}, Lo/Factory2;->e(IIII)V

    .line 401
    iget-object v1, p0, Lo/FG;->m:Lo/Fe;

    invoke-virtual {v1}, Lo/Fe;->a()I

    move-result v1

    .line 400
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 407
    iget-object v1, p0, Lo/FG;->m:Lo/Fe;

    invoke-virtual {v1}, Lo/Fe;->a()I

    move-result v1

    .line 406
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 415
    iget-object v1, p0, Lo/FG;->o:Lo/FB;

    invoke-virtual {v1}, Lo/FB;->a()I

    move-result v1

    .line 417
    iget-object v8, p0, Lo/FG;->m:Lo/Fe;

    invoke-virtual {v8}, Lo/Fe;->a()I

    move-result v8

    .line 414
    invoke-virtual {v0, v1, v2, v8, v7}, Lo/Factory2;->e(IIII)V

    .line 421
    iget-object v1, p0, Lo/FG;->o:Lo/FB;

    invoke-virtual {v1}, Lo/FB;->a()I

    move-result v1

    .line 420
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 427
    iget-object v1, p0, Lo/FG;->o:Lo/FB;

    invoke-virtual {v1}, Lo/FB;->a()I

    move-result v1

    .line 426
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 433
    iget-object v1, p0, Lo/FG;->o:Lo/FB;

    invoke-virtual {v1}, Lo/FB;->a()I

    move-result v1

    .line 432
    invoke-virtual {v0, v1, v6}, Lo/Factory2;->b(IF)V

    .line 439
    iget-object v1, p0, Lo/FG;->k:Lo/Fc;

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 441
    iget-object v6, p0, Lo/FG;->o:Lo/FB;

    invoke-virtual {v6}, Lo/FB;->a()I

    move-result v6

    .line 438
    invoke-virtual {v0, v1, v2, v6, v7}, Lo/Factory2;->e(IIII)V

    .line 445
    iget-object v1, p0, Lo/FG;->k:Lo/Fc;

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 444
    invoke-virtual {v0, v1, v4, v3, v4}, Lo/Factory2;->e(IIII)V

    .line 451
    iget-object v1, p0, Lo/FG;->k:Lo/Fc;

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 450
    invoke-virtual {v0, v1, v5, v3, v5}, Lo/Factory2;->e(IIII)V

    .line 457
    invoke-virtual {p0}, Lo/FG;->f()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method protected c(Lo/MenuInflater;)Lo/FA;
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    new-instance p1, Lo/Fn;

    invoke-virtual {p0}, Lo/FG;->f()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lo/Fn;-><init>(Landroid/view/ViewGroup;)V

    check-cast p1, Lo/FA;

    return-object p1
.end method

.method public d()Landroid/view/ViewGroup;
    .locals 2

    .line 465
    iget-object v0, p0, Lo/FG;->o:Lo/FB;

    invoke-virtual {v0}, Lo/FB;->h()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 461
    iget-object v0, p0, Lo/FG;->d:Lo/FA;

    invoke-interface {v0}, Lo/FA;->h()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Lo/Fo;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/FG;->e:Lo/Fo;

    return-object v0
.end method

.method protected final h()Lo/FA;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/FG;->d:Lo/FA;

    return-object v0
.end method

.method protected final i()Lo/Ff;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/FG;->b:Lo/Ff;

    return-object v0
.end method

.method protected final j()Lo/Fs;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/FG;->a:Lo/Fs;

    return-object v0
.end method

.method protected final k()Lo/Fz;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/FG;->j:Lo/Fz;

    return-object v0
.end method

.method protected final l()Lo/Ft;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/FG;->h:Lo/Ft;

    return-object v0
.end method

.method protected final m()Lo/Fk;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/FG;->f:Lo/Fk;

    return-object v0
.end method

.method protected final n()Lo/Fl;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/FG;->i:Lo/Fl;

    return-object v0
.end method

.method protected final o()Lo/Fc;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/FG;->g:Lo/Fc;

    return-object v0
.end method

.method protected final p()Lo/Fc;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/FG;->k:Lo/Fc;

    return-object v0
.end method

.method protected final q()Lo/Fm;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/FG;->l:Lo/Fm;

    return-object v0
.end method

.method protected final r()Lo/Fd;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/FG;->n:Lo/Fd;

    return-object v0
.end method

.method protected final s()Lo/FB;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/FG;->o:Lo/FB;

    return-object v0
.end method

.method protected final t()Lo/Fe;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/FG;->m:Lo/Fe;

    return-object v0
.end method
