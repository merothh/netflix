.class public Lo/Eo;
.super Lo/DY;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/DY;-><init>()V

    return-void
.end method

.method private Y()V
    .locals 4

    .line 325
    invoke-static {}, Lo/fg;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lo/Eo;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->x()Landroid/view/ViewStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v1, Lo/Fw;

    invoke-direct {v1, v0}, Lo/Fw;-><init>(Landroid/view/View;)V

    .line 334
    new-instance v0, Lo/EM;

    iget-object v2, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v3, Lo/DC;

    .line 335
    invoke-virtual {v2, v3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/EM;-><init>(Lo/Fw;Lio/reactivex/Observable;)V

    .line 338
    invoke-virtual {v1}, Lo/Fw;->w()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lo/Eo;->k:Lo/UpdateEngine;

    .line 339
    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/El;

    invoke-direct {v1, p0}, Lo/El;-><init>(Lo/Eo;)V

    .line 340
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/DQ;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DQ;

    invoke-virtual {v1}, Lo/DQ;->e()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private synthetic a(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;)V
    .locals 2

    .line 286
    sget-object v0, Lo/Eo$1;->c:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lo/Eo;->aa()V

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lo/Eo;->Z()V

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p0}, Lo/Eo;->X()V

    .line 297
    :goto_0
    iput-boolean v0, p0, Lo/Eo;->y:Z

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 216
    invoke-virtual {p0, p1}, Lo/Eo;->d(Z)V

    .line 217
    invoke-static {}, Lo/ady;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Eo;->t:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lo/Eo;->t:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private ab()V
    .locals 4

    .line 149
    invoke-static {}, Lo/fc;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/Eo;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_4

    .line 153
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->isPreRelease()Z

    move-result v0

    if-nez v0, :cond_4

    .line 154
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->aT()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/Eo;->w:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lo/Eo;->y:Z

    if-nez v0, :cond_4

    .line 157
    sget-object v0, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/DJ;->b(Lo/Bc;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 159
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 160
    invoke-direct {p0, v0}, Lo/Eo;->a(Ljava/util/List;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 161
    iget v2, p0, Lo/Eo;->j:I

    if-eq v2, v1, :cond_4

    .line 162
    iput v1, p0, Lo/Eo;->j:I

    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p0, Lo/Eo;->w:Z

    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lo/Eo;->y:Z

    .line 167
    iget-object v2, p0, Lo/Eo;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->setupScrollableTabViews()V

    .line 169
    sget-object v2, Lo/DJ;->e:Lo/DJ;

    iget v3, p0, Lo/Eo;->j:I

    invoke-virtual {v2, v0, v3}, Lo/DJ;->b(Ljava/util/List;I)Lo/DQ;

    move-result-object v0

    .line 171
    iget v2, p0, Lo/Eo;->j:I

    invoke-virtual {p0, v2}, Lo/Eo;->c(I)V

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {v0}, Lo/DQ;->e()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lo/Eo;->Z()V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p0}, Lo/Eo;->X()V

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lo/Eo;->aa()V

    :cond_4
    :goto_0
    return-void
.end method

.method private ac()V
    .locals 5

    .line 314
    invoke-static {}, Lo/fg;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->isPreRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v2, Lo/DC$ServiceConnection;

    sget-object v3, Lo/DJ;->e:Lo/DJ;

    .line 318
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/DJ;->a(Lo/Bc;)Lcom/netflix/model/leafs/SupportedMediaTracks;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/DC$ServiceConnection;-><init>(Lcom/netflix/model/leafs/SupportedMediaTracks;)V

    .line 315
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/Eo;
    .locals 3

    .line 42
    new-instance v0, Lo/Eo;

    invoke-direct {v0}, Lo/Eo;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_video_id"

    .line 45
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_episode_id"

    .line 46
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_model_view_id"

    .line 48
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "extra_video_type_string_value"

    .line 49
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Lo/Eo;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private d(I)V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/DJ;->b(Lo/Bc;I)I

    move-result v0

    iput v0, p0, Lo/Eo;->j:I

    .line 259
    iput p1, p0, Lo/Eo;->f:I

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/Eo;Lo/DG;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Eo;->e(Lo/DG;)V

    return-void
.end method

.method private synthetic e(Lo/DG;)V
    .locals 3

    .line 342
    instance-of p1, p1, Lo/DG$Dialog;

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lo/Eo;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 344
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->moreInfoButton:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 352
    new-instance p1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-direct {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;-><init>()V

    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "DismissOnSelection"

    .line 354
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v1

    invoke-interface {v1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_dp_top_level_video_id"

    .line 356
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 362
    invoke-virtual {p0}, Lo/Eo;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showFullScreenDialog(Lo/WebChromeClient;)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/Eo;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Eo;->a(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$TabShowEvent;)V

    return-void
.end method


# virtual methods
.method public X()V
    .locals 4

    const/4 v0, 0x1

    .line 224
    invoke-direct {p0, v0}, Lo/Eo;->d(I)V

    .line 226
    iget-object v0, p0, Lo/Eo;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v3, Lo/DC$TaskDescription;

    invoke-direct {v3, v2}, Lo/DC$TaskDescription;-><init>(Z)V

    invoke-virtual {v0, v1, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 229
    :cond_0
    invoke-direct {p0, v2}, Lo/Eo;->a(Z)V

    .line 230
    iget-object v0, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v1, Lo/FH;

    sget-object v2, Lo/FH$AssistContent;->c:Lo/FH$AssistContent;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public Z()V
    .locals 4

    const/4 v0, 0x2

    .line 235
    invoke-direct {p0, v0}, Lo/Eo;->d(I)V

    .line 237
    iget-object v0, p0, Lo/Eo;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v3, Lo/DC$TaskDescription;

    invoke-direct {v3, v2}, Lo/DC$TaskDescription;-><init>(Z)V

    invoke-virtual {v0, v1, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 240
    :cond_0
    invoke-direct {p0, v2}, Lo/Eo;->a(Z)V

    .line 241
    iget-object v0, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v1, Lo/FH;

    sget-object v2, Lo/FH$VoiceInteractor;->d:Lo/FH$VoiceInteractor;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public aa()V
    .locals 4

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, v0}, Lo/Eo;->d(I)V

    .line 248
    iget-object v0, p0, Lo/Eo;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v3, Lo/DC$TaskDescription;

    invoke-direct {v3, v2}, Lo/DC$TaskDescription;-><init>(Z)V

    invoke-virtual {v0, v1, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 252
    :cond_0
    invoke-direct {p0, v2}, Lo/Eo;->a(Z)V

    .line 253
    iget-object v0, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v1, Lo/FH;

    sget-object v2, Lo/FH$TaskStackBuilder;->b:Lo/FH$TaskStackBuilder;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method protected b(Lo/Bc;)V
    .locals 0

    .line 206
    invoke-super {p0, p1}, Lo/DY;->b(Lo/Bc;)V

    .line 212
    invoke-direct {p0}, Lo/Eo;->ab()V

    return-void
.end method

.method protected c(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lo/Eo;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lo/Eo;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    .line 281
    invoke-super {p0, p1}, Lo/DY;->c(Landroid/view/View;)V

    .line 282
    iget-object p1, p0, Lo/Eo;->m:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->G:Lio/reactivex/Observable;

    iget-object v0, p0, Lo/Eo;->k:Lo/UpdateEngine;

    .line 283
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/Ek;

    invoke-direct {v0, p0}, Lo/Ek;-><init>(Lo/Eo;)V

    .line 284
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 300
    invoke-direct {p0}, Lo/Eo;->Y()V

    return-void
.end method

.method protected d(Lo/Bc;)V
    .locals 3

    .line 84
    invoke-super {p0, p1}, Lo/DY;->d(Lo/Bc;)V

    .line 87
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/DJ;->b(Lo/Bc;)Ljava/util/List;

    move-result-object v0

    .line 94
    :goto_0
    invoke-static {}, Lo/fc;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v1

    invoke-interface {v1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v1

    invoke-interface {v1}, Lo/Bc;->isPreRelease()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v1

    invoke-interface {v1}, Lo/Bc;->aT()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lo/Eo;->y:Z

    if-nez v1, :cond_1

    .line 102
    invoke-direct {p0, v0}, Lo/Eo;->a(Ljava/util/List;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 103
    iget v2, p0, Lo/Eo;->j:I

    if-eq v2, v1, :cond_1

    .line 104
    iput v1, p0, Lo/Eo;->j:I

    .line 107
    :cond_1
    sget-object v1, Lo/DJ;->e:Lo/DJ;

    iget v2, p0, Lo/Eo;->j:I

    invoke-virtual {v1, v0, v2}, Lo/DJ;->b(Ljava/util/List;I)Lo/DQ;

    move-result-object v0

    .line 109
    iget v1, p0, Lo/Eo;->j:I

    invoke-virtual {p0, v1}, Lo/Eo;->c(I)V

    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {v0}, Lo/DQ;->e()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {p0}, Lo/Eo;->Z()V

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0}, Lo/Eo;->X()V

    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p0}, Lo/Eo;->aa()V

    .line 129
    :cond_5
    :goto_1
    invoke-interface {p1}, Lo/Bc;->isPreRelease()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/Eo;->l:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_7

    .line 131
    invoke-static {}, Lo/adq;->c()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lo/ady;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 133
    :cond_6
    invoke-virtual {p0}, Lo/Eo;->Z()V

    .line 134
    iget p1, p0, Lo/Eo;->j:I

    invoke-virtual {p0, p1}, Lo/Eo;->c(I)V

    .line 137
    :cond_7
    invoke-direct {p0}, Lo/Eo;->ac()V

    return-void
.end method

.method protected d(Z)V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lo/Eo;->A()Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setFooterViewGroupVisiblity(Z)V

    return-void
.end method

.method protected e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;)V"
        }
    .end annotation

    .line 265
    invoke-super {p0, p1}, Lo/DY;->e(Ljava/util/List;)V

    .line 267
    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 268
    sget-object p1, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {p0}, Lo/Eo;->z()Lo/Bc;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lo/DJ;->b(Lo/Bc;I)I

    move-result p1

    .line 269
    iget v1, p0, Lo/Eo;->j:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    .line 272
    :cond_0
    iget-object p1, p0, Lo/Eo;->k:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v2, Lo/DC$TaskDescription;

    invoke-direct {v2, v0}, Lo/DC$TaskDescription;-><init>(Z)V

    invoke-virtual {p1, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 57
    invoke-super {p0, p1, p2, p3}, Lo/DY;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    const-string v0, "saved_state_active_tab_index_mdp"

    .line 61
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/Eo;->j:I

    const/4 v0, 0x1

    const-string v1, "saved_state_active_tab_type_ab22187"

    .line 63
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/Eo;->f:I

    const-string v0, "saved_state_ab22187_onresumedfromplayer"

    .line 64
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/Eo;->w:Z

    const-string v0, "saved_state_ab22187_tabstate_reset"

    .line 65
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lo/Eo;->y:Z

    :cond_0
    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 142
    invoke-super {p0}, Lo/DY;->onResume()V

    .line 145
    invoke-direct {p0}, Lo/Eo;->ab()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lo/DY;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget v0, p0, Lo/Eo;->j:I

    const-string v1, "saved_state_active_tab_index_mdp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    iget v0, p0, Lo/Eo;->f:I

    const-string v1, "saved_state_active_tab_type_ab22187"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    iget-boolean v0, p0, Lo/Eo;->w:Z

    const-string v1, "saved_state_ab22187_onresumedfromplayer"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    iget-boolean v0, p0, Lo/Eo;->y:Z

    const-string v1, "saved_state_ab22187_tabstate_reset"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
