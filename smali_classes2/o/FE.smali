.class public final Lo/FE;
.super Lo/FG;
.source ""


# instance fields
.field private final a:Lo/aka;

.field private final b:Lo/aka;

.field private final e:Lo/Fg;


# direct methods
.method public constructor <init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1
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

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lo/FG;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 31
    new-instance p4, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$downloadUIView$2;

    invoke-direct {p4, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$downloadUIView$2;-><init>(Lo/MenuInflater;)V

    check-cast p4, Lo/alB;

    invoke-static {p4}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p4

    iput-object p4, p0, Lo/FE;->b:Lo/aka;

    .line 33
    new-instance p4, Lo/Fg;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p4, v0}, Lo/Fg;-><init>(Landroid/view/ViewGroup;)V

    iput-object p4, p0, Lo/FE;->e:Lo/Fg;

    .line 35
    new-instance p4, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$blurBackgroundUIView$2;

    invoke-direct {p4, p1, p3}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPagePrimaryUIComponents_Ab18255_NewDesign$blurBackgroundUIView$2;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;)V

    check-cast p4, Lo/alB;

    invoke-static {p4}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/FE;->a:Lo/aka;

    .line 43
    sget-object p1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {p1}, Lo/eG$Application;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lo/aek;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lo/EC;

    invoke-direct {p0}, Lo/FE;->x()Lo/Fh;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lo/EC;-><init>(Lo/Fh;Lio/reactivex/Observable;)V

    .line 45
    invoke-virtual {p0}, Lo/FE;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0}, Lo/FE;->x()Lo/Fh;

    move-result-object p3

    invoke-virtual {p3}, Lo/Fh;->w()Lio/reactivex/Observable;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    sget-object p1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {p1}, Lo/eG$Application;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    new-instance p1, Lo/EE;

    .line 50
    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object p3

    .line 49
    invoke-direct {p1, p3, p2}, Lo/EE;-><init>(Lo/Fp;Lio/reactivex/Observable;)V

    .line 53
    invoke-virtual {p0}, Lo/FE;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object p3

    invoke-virtual {p3}, Lo/Fp;->w()Lio/reactivex/Observable;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    new-instance p1, Lo/Ez;

    .line 57
    iget-object p3, p0, Lo/FE;->e:Lo/Fg;

    .line 56
    invoke-direct {p1, p3, p2}, Lo/Ez;-><init>(Lo/Fg;Lio/reactivex/Observable;)V

    .line 60
    invoke-virtual {p0}, Lo/FE;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lo/FE;->e:Lo/Fg;

    invoke-virtual {p2}, Lo/Fg;->w()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final w()Lo/Fp;
    .locals 1

    iget-object v0, p0, Lo/FE;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Fp;

    return-object v0
.end method

.method private final x()Lo/Fh;
    .locals 1

    iget-object v0, p0, Lo/FE;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Fh;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 64
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 65
    invoke-virtual {p0}, Lo/FE;->f()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 67
    sget-object v1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v1}, Lo/eG$Application;->b()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lo/aek;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-direct {p0}, Lo/FE;->x()Lo/Fh;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fh;->a()I

    move-result v1

    .line 69
    invoke-virtual {v0, v1, v3, v6, v3}, Lo/Factory2;->e(IIII)V

    .line 77
    invoke-direct {p0}, Lo/FE;->x()Lo/Fh;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fh;->a()I

    move-result v1

    .line 79
    invoke-virtual {p0}, Lo/FE;->r()Lo/Fd;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fd;->a()I

    move-result v7

    .line 76
    invoke-virtual {v0, v1, v2, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 84
    invoke-direct {p0}, Lo/FE;->x()Lo/Fh;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fh;->a()I

    move-result v1

    .line 83
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 90
    invoke-direct {p0}, Lo/FE;->x()Lo/Fh;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fh;->a()I

    move-result v1

    .line 89
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lo/FE;->h()Lo/FA;

    move-result-object v1

    invoke-interface {v1}, Lo/FA;->a()I

    move-result v1

    .line 98
    invoke-virtual {v0, v1, v3, v6, v3}, Lo/Factory2;->e(IIII)V

    .line 105
    invoke-virtual {p0}, Lo/FE;->h()Lo/FA;

    move-result-object v1

    invoke-interface {v1}, Lo/FA;->a()I

    move-result v1

    .line 104
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 111
    invoke-virtual {p0}, Lo/FE;->h()Lo/FA;

    move-result-object v1

    invoke-interface {v1}, Lo/FA;->a()I

    move-result v1

    .line 110
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 119
    invoke-virtual {p0}, Lo/FE;->i()Lo/Ff;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ff;->a()I

    move-result v1

    .line 121
    invoke-virtual {p0}, Lo/FE;->h()Lo/FA;

    move-result-object v7

    invoke-interface {v7}, Lo/FA;->a()I

    move-result v7

    .line 118
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 125
    invoke-virtual {p0}, Lo/FE;->i()Lo/Ff;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ff;->a()I

    move-result v1

    .line 124
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 131
    invoke-virtual {p0}, Lo/FE;->i()Lo/Ff;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ff;->a()I

    move-result v1

    .line 130
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 139
    invoke-virtual {p0}, Lo/FE;->j()Lo/Fs;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fs;->a()I

    move-result v1

    .line 141
    invoke-virtual {p0}, Lo/FE;->i()Lo/Ff;

    move-result-object v7

    invoke-virtual {v7}, Lo/Ff;->a()I

    move-result v7

    .line 138
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 145
    invoke-virtual {p0}, Lo/FE;->j()Lo/Fs;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fs;->a()I

    move-result v1

    .line 144
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 151
    invoke-virtual {p0}, Lo/FE;->j()Lo/Fs;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fs;->a()I

    move-result v1

    .line 150
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 159
    invoke-virtual {p0}, Lo/FE;->g()Lo/Fo;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fo;->a()I

    move-result v1

    .line 161
    invoke-virtual {p0}, Lo/FE;->j()Lo/Fs;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fs;->a()I

    move-result v7

    .line 158
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 165
    invoke-virtual {p0}, Lo/FE;->g()Lo/Fo;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fo;->a()I

    move-result v1

    .line 164
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 172
    sget-object v1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v1}, Lo/eG$Application;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lo/FE;->g()Lo/Fo;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fo;->a()I

    move-result v1

    .line 176
    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fp;->a()I

    move-result v7

    .line 173
    invoke-virtual {v0, v1, v4, v7, v5}, Lo/Factory2;->e(IIII)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lo/FE;->g()Lo/Fo;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fo;->a()I

    move-result v1

    .line 180
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 189
    :goto_0
    sget-object v1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v1}, Lo/eG$Application;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    sget-object v1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v1}, Lo/eG$Application;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fp;->a()I

    move-result v1

    .line 194
    invoke-virtual {p0}, Lo/FE;->g()Lo/Fo;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fo;->a()I

    move-result v7

    .line 191
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 199
    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fp;->a()I

    move-result v1

    .line 198
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    goto :goto_1

    .line 207
    :cond_2
    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fp;->a()I

    move-result v1

    .line 209
    invoke-virtual {p0}, Lo/FE;->j()Lo/Fs;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fs;->a()I

    move-result v7

    .line 206
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 214
    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fp;->a()I

    move-result v1

    .line 216
    invoke-virtual {p0}, Lo/FE;->g()Lo/Fo;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fo;->a()I

    move-result v7

    .line 213
    invoke-virtual {v0, v1, v5, v7, v4}, Lo/Factory2;->e(IIII)V

    .line 223
    :goto_1
    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fp;->a()I

    move-result v1

    .line 222
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 231
    :cond_3
    sget-object v1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v1}, Lo/eG$Application;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lo/FE;->e:Lo/Fg;

    invoke-virtual {v1}, Lo/Fg;->a()I

    move-result v1

    .line 235
    invoke-direct {p0}, Lo/FE;->w()Lo/Fp;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fp;->a()I

    move-result v7

    .line 232
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    goto :goto_2

    .line 240
    :cond_4
    iget-object v1, p0, Lo/FE;->e:Lo/Fg;

    invoke-virtual {v1}, Lo/Fg;->a()I

    move-result v1

    .line 242
    invoke-virtual {p0}, Lo/FE;->g()Lo/Fo;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fo;->a()I

    move-result v7

    .line 239
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 248
    :goto_2
    iget-object v1, p0, Lo/FE;->e:Lo/Fg;

    invoke-virtual {v1}, Lo/Fg;->a()I

    move-result v1

    .line 247
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 254
    iget-object v1, p0, Lo/FE;->e:Lo/Fg;

    invoke-virtual {v1}, Lo/Fg;->a()I

    move-result v1

    .line 253
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 262
    invoke-virtual {p0}, Lo/FE;->n()Lo/Fl;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fl;->a()I

    move-result v1

    .line 264
    iget-object v7, p0, Lo/FE;->e:Lo/Fg;

    invoke-virtual {v7}, Lo/Fg;->a()I

    move-result v7

    .line 261
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 269
    invoke-virtual {p0}, Lo/FE;->n()Lo/Fl;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fl;->a()I

    move-result v1

    .line 268
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 275
    invoke-virtual {p0}, Lo/FE;->n()Lo/Fl;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fl;->a()I

    move-result v1

    .line 274
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 283
    invoke-virtual {p0}, Lo/FE;->l()Lo/Ft;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ft;->a()I

    move-result v1

    .line 285
    invoke-virtual {p0}, Lo/FE;->n()Lo/Fl;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fl;->a()I

    move-result v7

    .line 282
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 289
    invoke-virtual {p0}, Lo/FE;->l()Lo/Ft;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ft;->a()I

    move-result v1

    .line 288
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 295
    invoke-virtual {p0}, Lo/FE;->l()Lo/Ft;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ft;->a()I

    move-result v1

    .line 294
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 303
    invoke-virtual {p0}, Lo/FE;->k()Lo/Fz;

    move-result-object v1

    invoke-interface {v1}, Lo/Fz;->a()I

    move-result v1

    .line 305
    invoke-virtual {p0}, Lo/FE;->l()Lo/Ft;

    move-result-object v7

    invoke-virtual {v7}, Lo/Ft;->a()I

    move-result v7

    .line 302
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 309
    invoke-virtual {p0}, Lo/FE;->k()Lo/Fz;

    move-result-object v1

    invoke-interface {v1}, Lo/Fz;->a()I

    move-result v1

    .line 308
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 315
    invoke-virtual {p0}, Lo/FE;->k()Lo/Fz;

    move-result-object v1

    invoke-interface {v1}, Lo/Fz;->a()I

    move-result v1

    .line 314
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 323
    invoke-virtual {p0}, Lo/FE;->m()Lo/Fk;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fk;->a()I

    move-result v1

    .line 325
    invoke-virtual {p0}, Lo/FE;->k()Lo/Fz;

    move-result-object v7

    invoke-interface {v7}, Lo/Fz;->a()I

    move-result v7

    .line 322
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 329
    invoke-virtual {p0}, Lo/FE;->m()Lo/Fk;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fk;->a()I

    move-result v1

    .line 328
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 335
    invoke-virtual {p0}, Lo/FE;->m()Lo/Fk;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fk;->a()I

    move-result v1

    .line 334
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 343
    invoke-virtual {p0}, Lo/FE;->q()Lo/Fm;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fm;->a()I

    move-result v1

    .line 345
    invoke-virtual {p0}, Lo/FE;->m()Lo/Fk;

    move-result-object v7

    invoke-virtual {v7}, Lo/Fk;->a()I

    move-result v7

    .line 342
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 349
    invoke-virtual {p0}, Lo/FE;->q()Lo/Fm;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fm;->a()I

    move-result v1

    .line 348
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 355
    invoke-virtual {p0}, Lo/FE;->q()Lo/Fm;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fm;->a()I

    move-result v1

    .line 354
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 361
    invoke-virtual {p0}, Lo/FE;->q()Lo/Fm;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fm;->a()I

    move-result v1

    const/4 v7, 0x0

    .line 360
    invoke-virtual {v0, v1, v7}, Lo/Factory2;->b(IF)V

    .line 367
    invoke-virtual {p0}, Lo/FE;->o()Lo/Fc;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 369
    invoke-virtual {p0}, Lo/FE;->l()Lo/Ft;

    move-result-object v8

    invoke-virtual {v8}, Lo/Ft;->a()I

    move-result v8

    .line 366
    invoke-virtual {v0, v1, v3, v8, v3}, Lo/Factory2;->e(IIII)V

    .line 373
    invoke-virtual {p0}, Lo/FE;->o()Lo/Fc;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 375
    invoke-virtual {p0}, Lo/FE;->k()Lo/Fz;

    move-result-object v8

    invoke-interface {v8}, Lo/Fz;->a()I

    move-result v8

    .line 372
    invoke-virtual {v0, v1, v2, v8, v2}, Lo/Factory2;->e(IIII)V

    .line 379
    invoke-virtual {p0}, Lo/FE;->o()Lo/Fc;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 378
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 385
    invoke-virtual {p0}, Lo/FE;->o()Lo/Fc;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 384
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 393
    invoke-virtual {p0}, Lo/FE;->r()Lo/Fd;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fd;->a()I

    move-result v1

    .line 395
    invoke-virtual {p0}, Lo/FE;->q()Lo/Fm;

    move-result-object v8

    invoke-virtual {v8}, Lo/Fm;->a()I

    move-result v8

    .line 392
    invoke-virtual {v0, v1, v3, v8, v2}, Lo/Factory2;->e(IIII)V

    .line 399
    invoke-virtual {p0}, Lo/FE;->r()Lo/Fd;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fd;->a()I

    move-result v1

    .line 398
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 405
    invoke-virtual {p0}, Lo/FE;->r()Lo/Fd;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fd;->a()I

    move-result v1

    .line 404
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 413
    invoke-virtual {p0}, Lo/FE;->t()Lo/Fe;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fe;->a()I

    move-result v1

    .line 415
    invoke-virtual {p0}, Lo/FE;->r()Lo/Fd;

    move-result-object v8

    invoke-virtual {v8}, Lo/Fd;->a()I

    move-result v8

    .line 412
    invoke-virtual {v0, v1, v3, v8, v2}, Lo/Factory2;->e(IIII)V

    .line 419
    invoke-virtual {p0}, Lo/FE;->t()Lo/Fe;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fe;->a()I

    move-result v1

    .line 418
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 425
    invoke-virtual {p0}, Lo/FE;->t()Lo/Fe;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fe;->a()I

    move-result v1

    .line 424
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 433
    invoke-virtual {p0}, Lo/FE;->s()Lo/FB;

    move-result-object v1

    invoke-virtual {v1}, Lo/FB;->a()I

    move-result v1

    .line 435
    invoke-virtual {p0}, Lo/FE;->t()Lo/Fe;

    move-result-object v8

    invoke-virtual {v8}, Lo/Fe;->a()I

    move-result v8

    .line 432
    invoke-virtual {v0, v1, v3, v8, v2}, Lo/Factory2;->e(IIII)V

    .line 439
    invoke-virtual {p0}, Lo/FE;->s()Lo/FB;

    move-result-object v1

    invoke-virtual {v1}, Lo/FB;->a()I

    move-result v1

    .line 438
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 445
    invoke-virtual {p0}, Lo/FE;->s()Lo/FB;

    move-result-object v1

    invoke-virtual {v1}, Lo/FB;->a()I

    move-result v1

    .line 444
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 451
    invoke-virtual {p0}, Lo/FE;->s()Lo/FB;

    move-result-object v1

    invoke-virtual {v1}, Lo/FB;->a()I

    move-result v1

    .line 450
    invoke-virtual {v0, v1, v7}, Lo/Factory2;->b(IF)V

    .line 457
    invoke-virtual {p0}, Lo/FE;->p()Lo/Fc;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 459
    invoke-virtual {p0}, Lo/FE;->s()Lo/FB;

    move-result-object v7

    invoke-virtual {v7}, Lo/FB;->a()I

    move-result v7

    .line 456
    invoke-virtual {v0, v1, v3, v7, v2}, Lo/Factory2;->e(IIII)V

    .line 463
    invoke-virtual {p0}, Lo/FE;->p()Lo/Fc;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 462
    invoke-virtual {v0, v1, v5, v6, v5}, Lo/Factory2;->e(IIII)V

    .line 469
    invoke-virtual {p0}, Lo/FE;->p()Lo/Fc;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fc;->a()I

    move-result v1

    .line 468
    invoke-virtual {v0, v1, v4, v6, v4}, Lo/Factory2;->e(IIII)V

    .line 475
    invoke-virtual {p0}, Lo/FE;->f()Lo/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method protected c(Lo/MenuInflater;)Lo/FA;
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    new-instance v0, Lo/Fr;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {v0, p1}, Lo/Fr;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/FA;

    return-object v0
.end method
