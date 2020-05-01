.class public Lo/Uh;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lo/UpdateEngine;

.field private b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final c:Ljava/lang/String;

.field private d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

.field private e:Lo/aeC$TaskDescription;

.field private f:Lcom/netflix/model/leafs/PostPlayItem;

.field private g:Lo/HorizontalScrollView;

.field private h:Lcom/netflix/model/leafs/PostPlayAction;

.field private i:Lo/Uq;

.field private j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field private final k:Ljava/lang/Runnable;

.field private n:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View;Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PostPlayCallToAction"

    .line 56
    iput-object v0, p0, Lo/Uh;->c:Ljava/lang/String;

    .line 477
    new-instance v0, Lo/Uh$2;

    invoke-direct {v0, p0}, Lo/Uh$2;-><init>(Lo/Uh;)V

    iput-object v0, p0, Lo/Uh;->k:Ljava/lang/Runnable;

    .line 83
    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lo/UnicodeScript;

    invoke-static {v0, v1}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UnicodeScript;

    invoke-static {v0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/Uh;->a:Lo/UpdateEngine;

    .line 85
    iput-object p6, p0, Lo/Uh;->i:Lo/Uq;

    .line 86
    iput-object p7, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    .line 87
    iput-object p1, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 88
    iput-object p2, p0, Lo/Uh;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 89
    iput-object p4, p0, Lo/Uh;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 90
    iput-object p3, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lo/Uh;->n:Ljava/lang/Long;

    if-eqz p5, :cond_1

    .line 94
    instance-of p1, p5, Lo/HorizontalScrollView;

    if-eqz p1, :cond_0

    .line 95
    move-object p1, p5

    check-cast p1, Lo/HorizontalScrollView;

    iput-object p1, p0, Lo/Uh;->g:Lo/HorizontalScrollView;

    .line 96
    move-object p1, p5

    check-cast p1, Landroid/widget/Button;

    invoke-direct {p0, p1}, Lo/Uh;->d(Landroid/widget/Button;)V

    .line 97
    invoke-direct {p0, p1}, Lo/Uh;->a(Landroid/widget/Button;)V

    .line 99
    :cond_0
    invoke-direct {p0, p5}, Lo/Uh;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 5

    .line 466
    iget-object v0, p0, Lo/Uh;->g:Lo/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0}, Lo/Uh;->n()I

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v1, p0, Lo/Uh;->g:Lo/HorizontalScrollView;

    iget-object v2, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .line 205
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "details"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "mdp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "mylist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_2

    .line 217
    :cond_1
    instance-of v0, p1, Lo/ListView;

    if-eqz v0, :cond_4

    .line 218
    check-cast p1, Lo/ListView;

    invoke-direct {p0, p1}, Lo/Uh;->c(Lo/ListView;)V

    goto :goto_2

    .line 213
    :cond_2
    invoke-direct {p0, p1}, Lo/Uh;->d(Landroid/view/View;)V

    goto :goto_2

    .line 207
    :cond_3
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 208
    invoke-direct {p0, p1}, Lo/Uh;->c(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f23f7b6 -> :sswitch_4
        0x1a5b9 -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x5cd8f242 -> :sswitch_1
        0x700681d2 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/widget/Button;)V
    .locals 6

    .line 174
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1a5b9

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x348b34

    if-eq v1, v2, :cond_1

    const v2, 0x5cd8f242

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "details"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "mdp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    goto :goto_2

    .line 181
    :cond_4
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moreEpisodes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    sget v5, Lcom/netflix/mediaclient/ui/R$Activity;->aK:I

    goto :goto_2

    .line 184
    :cond_5
    sget v5, Lcom/netflix/mediaclient/ui/R$Activity;->av:I

    goto :goto_2

    .line 177
    :cond_6
    sget v5, Lcom/netflix/mediaclient/ui/R$Activity;->cs:I

    :goto_2
    if-eqz v5, :cond_7

    .line 196
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    :cond_7
    return-void
.end method

.method private a(Z)V
    .locals 4

    const-string v0, "PostPlayCallToAction"

    const-string v1, "User starts next play, report as such"

    .line 305
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 307
    iget-object p1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getAdditionalTrackIds()Ljava/util/Map;

    move-result-object p1

    const-string v0, "userPlay"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 310
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->nextEpisodeButton:Lcom/netflix/cl/model/AppView;

    const-string v3, "trackId"

    .line 314
    invoke-static {v3, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 313
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/PlayNextCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/PlayNextCommand;-><init>()V

    .line 310
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/Uh;Lcom/netflix/cl/model/event/session/command/Command;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lo/Uh;->c(Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lo/Uh;->e()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c(Lcom/netflix/cl/model/event/session/command/Command;)V
    .locals 1

    .line 536
    sget-object v0, Lo/gR;->b:Lo/gR$StateListAnimator;

    invoke-virtual {v0}, Lo/gR$StateListAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 538
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    return-void
.end method

.method private c(Lo/ListView;)V
    .locals 5

    .line 358
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 360
    :goto_0
    new-instance v1, Lo/Oc;

    iget-object v2, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v3, Lo/Oh;

    invoke-direct {v3, p1}, Lo/Oh;-><init>(Landroid/widget/CompoundButton;)V

    iget-object p1, p0, Lo/Uh;->a:Lo/UpdateEngine;

    .line 363
    invoke-virtual {p1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    .line 366
    iget-object p1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 367
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 368
    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 369
    invoke-direct {p0, v0}, Lo/Uh;->j(Z)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    .line 366
    invoke-virtual {v1, p1, v2, v0, v4}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 374
    iget-object p1, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    .line 375
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->isInMyList()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lo/Am;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 326
    new-instance v0, Lo/Uh$4;

    invoke-direct {v0, p0}, Lo/Uh$4;-><init>(Lo/Uh;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(Landroid/widget/Button;)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lo/Uh;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j(Z)Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 7

    if-eqz p1, :cond_0

    const-string p1, "autoPlay"

    goto :goto_0

    :cond_0
    const-string p1, "userPlay"

    .line 389
    :goto_0
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getAdditionalTrackIds()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 391
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/netflix/model/leafs/PostPlayAction;->setTrackId(I)V

    .line 394
    :cond_1
    new-instance p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    iget-object v2, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getListPos()I

    move-result v3

    const/4 v4, 0x0

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lo/Bv;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    return-object p1
.end method

.method private k()V
    .locals 1

    .line 293
    iget-object v0, p0, Lo/Uh;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->e()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->s()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 297
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    .line 299
    instance-of v1, v0, Lo/ko;

    if-eqz v1, :cond_0

    .line 300
    check-cast v0, Lo/ko;

    invoke-virtual {v0}, Lo/ko;->q()V

    :cond_0
    return-void
.end method

.method private n()I
    .locals 3

    .line 443
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    iget-object v1, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "episodicTeaser"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->iU:I

    goto :goto_0

    .line 451
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->O:I

    goto :goto_0

    :cond_1
    const-string v1, "playTrailer"

    .line 453
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->iV:I

    goto :goto_0

    .line 458
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->iX:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()Z
    .locals 4

    .line 485
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_1

    .line 486
    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "play"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "playTrailer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 489
    :cond_0
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "episodicTeaser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private q()Lcom/netflix/cl/model/AppView;
    .locals 6

    .line 498
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "details"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "mdp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "mylist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 508
    :cond_1
    sget-object v0, Lcom/netflix/cl/model/AppView;->addToMyListButton:Lcom/netflix/cl/model/AppView;

    goto :goto_2

    .line 504
    :cond_2
    sget-object v0, Lcom/netflix/cl/model/AppView;->moreInfoButton:Lcom/netflix/cl/model/AppView;

    goto :goto_2

    .line 500
    :cond_3
    sget-object v0, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3f23f7b6 -> :sswitch_4
        0x1a5b9 -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x5cd8f242 -> :sswitch_1
        0x700681d2 -> :sswitch_0
    .end sparse-switch
.end method

.method private r()Z
    .locals 2

    .line 545
    sget-object v0, Lo/gT;->a:Lo/gT$Activity;

    invoke-virtual {v0}, Lo/gT$Activity;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/aeI;->c:Lo/aeI;

    invoke-virtual {v0}, Lo/aeI;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 547
    :cond_1
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_2

    .line 548
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->isAutoPlay()Z

    move-result v1

    :cond_2
    return v1
.end method

.method private s()Lcom/netflix/model/leafs/PostPlayExperience;
    .locals 1

    .line 574
    iget-object v0, p0, Lo/Uh;->i:Lo/Uq;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Lo/Uq;->b()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private t()V
    .locals 2

    .line 527
    sget-object v0, Lo/gR;->b:Lo/gR$StateListAnimator;

    invoke-virtual {v0}, Lo/gR$StateListAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lo/Uh;->n:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/Uh;->n:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lo/Uh;->n:Ljava/lang/Long;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    .line 240
    new-instance v0, Lo/Uh$1;

    invoke-direct {v0, p0}, Lo/Uh$1;-><init>(Lo/Uh;)V

    return-object v0
.end method

.method protected b()V
    .locals 9

    .line 341
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    iget-object v1, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 345
    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_1
    iget-object v3, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 346
    invoke-interface {v3}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 347
    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayAction;->getAncestorTitle()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-direct {p0, v0}, Lo/Uh;->j(Z)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "PostPlay"

    .line 343
    invoke-static/range {v1 .. v8}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 353
    invoke-virtual {p0, v0}, Lo/Uh;->b(Z)V

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 425
    iget-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    :cond_0
    if-nez p1, :cond_1

    .line 429
    invoke-direct {p0}, Lo/Uh;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 430
    invoke-virtual {p0}, Lo/Uh;->m()I

    move-result p1

    invoke-direct {p0, p1}, Lo/Uh;->a(I)V

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 8

    .line 108
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1a5b9

    const-string v4, "play"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x348b34

    if-eq v2, v3, :cond_1

    const v3, 0x5cd8f242

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "details"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "mdp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_4

    if-eq v1, v5, :cond_4

    const-string v0, ""

    goto/16 :goto_4

    :cond_4
    const-string v1, "moreEpisodes"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iQ:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 154
    :cond_5
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hE:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 113
    :cond_6
    iget-object v1, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "episodicTeaser"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_3

    :cond_7
    const-string v1, "playEpisode"

    .line 120
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 121
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->isEpisodeNumberHidden()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    .line 131
    :cond_8
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->O:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 122
    :cond_9
    :goto_2
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getSeasonSequenceAbbr()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayAction;->getSeason()I

    move-result v1

    .line 124
    iget-object v2, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayAction;->getEpisode()I

    move-result v2

    if-eqz v0, :cond_a

    .line 126
    iget-object v1, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->iY:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v1, v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 128
    :cond_a
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->iT:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_b
    const-string v1, "playTrailer"

    .line 133
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lo/Uh;->m()I

    move-result v0

    if-eqz v0, :cond_c

    .line 136
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iV:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lo/Uh;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 138
    :cond_c
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iX:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 142
    :cond_d
    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 143
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iU:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lo/Uh;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 145
    :cond_e
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->O:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 115
    :cond_f
    :goto_3
    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lo/Uh;->m()I

    move-result v0

    if-eqz v0, :cond_10

    .line 116
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iU:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lo/Uh;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 118
    :cond_10
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->O:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 249
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->d:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    iget-object v1, p0, Lo/Uh;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lo/Uh;->e(Z)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0, p1}, Lo/Uh;->d(Z)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 336
    invoke-direct {p0}, Lo/Uh;->k()V

    .line 337
    invoke-virtual {p0}, Lo/Uh;->b()V

    return-void
.end method

.method protected d(Z)V
    .locals 10

    .line 257
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/Uh;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 259
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 260
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object v0

    invoke-interface {v0}, Lo/AZ;->bb()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lo/Uh;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PostPlayCallToAction"

    const-string v0, "Playback currently in Pip, ingoring"

    .line 263
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Lo/Uh;->a(Z)V

    .line 268
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->isDoNotIncrementInterrupter()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 269
    :goto_0
    new-instance v9, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    .line 270
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getUiLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    .line 271
    invoke-interface {v2}, Lcom/netflix/model/leafs/PostPlayItem;->getImpressionData()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {p0}, Lo/Uh;->o()Z

    move-result v3

    invoke-direct {v9, v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;-><init>(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 273
    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getSeamlessStart()I

    move-result v0

    if-lez v0, :cond_2

    .line 274
    iget-object v2, p0, Lo/Uh;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object v0

    invoke-interface {v0}, Lo/AZ;->bb()Lo/AK;

    move-result-object v3

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    invoke-direct {p0, p1}, Lo/Uh;->j(Z)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getSeamlessStart()I

    move-result v8

    move v7, p1

    invoke-interface/range {v2 .. v9}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->d(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZZILcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    goto :goto_1

    .line 276
    :cond_2
    iget-object v2, p0, Lo/Uh;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object v0

    invoke-interface {v0}, Lo/AZ;->bb()Lo/AK;

    move-result-object v3

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    invoke-direct {p0, p1}, Lo/Uh;->j(Z)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v5

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getBookmarkPosition()I

    move-result v8

    move v7, p1

    invoke-interface/range {v2 .. v9}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->d(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ZZILcom/netflix/mediaclient/ui/player/PostPlayExtras;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public e()Landroid/view/View$OnClickListener;
    .locals 1

    .line 229
    new-instance v0, Lo/Uh$5;

    invoke-direct {v0, p0}, Lo/Uh$5;-><init>(Lo/Uh;)V

    return-object v0
.end method

.method protected e(Z)V
    .locals 6

    .line 282
    iget-object p1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    invoke-direct {p0}, Lo/Uh;->l()V

    .line 284
    iget-object v0, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 285
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getPlayBackVideo()Lo/AZ;

    move-result-object p1

    invoke-interface {p1}, Lo/AZ;->bb()Lo/AK;

    move-result-object v1

    iget-object p1, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->k:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 284
    invoke-static/range {v0 .. v5}, Lo/Mb;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;IZ)Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 435
    iget-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    invoke-virtual {v0}, Lo/aeC$TaskDescription;->a()I

    move-result v0

    const/4 v1, 0x1

    .line 437
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 438
    invoke-direct {p0, v0}, Lo/Uh;->a(I)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 400
    invoke-direct {p0}, Lo/Uh;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    if-nez v0, :cond_1

    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    .line 409
    :cond_2
    new-instance v0, Lo/aeC$TaskDescription;

    iget-object v1, p0, Lo/Uh;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lo/aeC$TaskDescription;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    .line 410
    iget-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    iget-object v1, p0, Lo/Uh;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/aeC$TaskDescription;->b(Ljava/lang/Runnable;)V

    .line 412
    iget-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    invoke-virtual {p0}, Lo/Uh;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/aeC$TaskDescription;->a(I)V

    .line 414
    iget-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    new-instance v1, Lo/Uh$3;

    invoke-direct {v1, p0}, Lo/Uh$3;-><init>(Lo/Uh;)V

    invoke-virtual {v0, v1}, Lo/aeC$TaskDescription;->e(Ljava/lang/Runnable;)V

    .line 420
    iget-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    invoke-virtual {v0}, Lo/aeC$TaskDescription;->d()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 379
    invoke-direct {p0}, Lo/Uh;->t()V

    .line 381
    iget-object v0, p0, Lo/Uh;->e:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lo/Uh;->t()V

    return-void
.end method

.method protected j()V
    .locals 4

    .line 516
    sget-object v0, Lo/gR;->b:Lo/gR$StateListAnimator;

    invoke-virtual {v0}, Lo/gR$StateListAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Lo/Uh;->s()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->d(Lcom/netflix/model/leafs/PostPlayExperience;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 518
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-direct {p0}, Lo/Uh;->q()Lcom/netflix/cl/model/AppView;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/Uh;->n:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method protected m()I
    .locals 1

    .line 555
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getAutoplaySeconds()I

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getAutoplaySeconds()I

    move-result v0

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlaySeconds()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected o()Z
    .locals 2

    .line 566
    sget-object v0, Lo/gT;->a:Lo/gT$Activity;

    invoke-virtual {v0}, Lo/gT$Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uh;->f:Lcom/netflix/model/leafs/PostPlayItem;

    .line 567
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "originalsPostPlay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 568
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uh;->h:Lcom/netflix/model/leafs/PostPlayAction;

    .line 569
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playTrailer"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0}, Lo/Uh;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
