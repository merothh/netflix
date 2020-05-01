.class Lo/LP$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Mq$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/LP;


# direct methods
.method constructor <init>(Lo/LP;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lo/Mq$ActionBar;)V
    .locals 3

    .line 826
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->a(Lo/LP;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object v0

    iget-boolean v0, v0, Lo/LP$StateListAnimator;->d:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 830
    :cond_0
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Mq;->h()I

    move-result v0

    if-ltz v0, :cond_1

    .line 831
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update video seekbar - pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lo/Mq$ActionBar;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object v0

    iget v1, p1, Lo/Mq$ActionBar;->b:I

    invoke-virtual {v0, v1}, Lo/LV;->b(I)V

    .line 835
    :cond_1
    iget-boolean v0, p1, Lo/Mq$ActionBar;->c:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lo/Mq$ActionBar;->d:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 838
    :cond_2
    iget-boolean v0, p1, Lo/Mq$ActionBar;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-virtual {v0}, Lo/LP;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 839
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    iget p1, p1, Lo/Mq$ActionBar;->b:I

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lo/LP;->d(Lo/LP;J)V

    goto :goto_1

    .line 836
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->k(Lo/LP;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private d(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 957
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    const-string v1, "targetListChanged"

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lo/Mm;)V
    .locals 2

    .line 974
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 982
    :cond_0
    invoke-static {p1}, Lo/Ms;->a(Lo/Mm;)Lo/Ms;

    move-result-object p1

    .line 983
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-virtual {v0}, Lo/LP;->U_()Lo/Am;

    move-result-object v0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, v0, v1}, Lo/Ms;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x1

    .line 984
    invoke-virtual {p1, v0}, Lo/Ms;->setCancelable(Z)V

    .line 985
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    return-void
.end method

.method public a(Lo/Mq$ActionBar;)V
    .locals 10

    .line 810
    invoke-static {}, Lo/aeB;->a()Z

    .line 815
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Z)Z

    .line 816
    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object v0

    iget v2, p1, Lo/Mq$ActionBar;->e:I

    iput v2, v0, Lo/LP$StateListAnimator;->e:I

    .line 818
    iget-boolean v4, p1, Lo/Mq$ActionBar;->h:Z

    .line 819
    iget-object v3, p0, Lo/LP$5;->a:Lo/LP;

    iget-boolean v5, p1, Lo/Mq$ActionBar;->d:Z

    iget-boolean v6, p1, Lo/Mq$ActionBar;->i:Z

    iget-object v7, p1, Lo/Mq$ActionBar;->g:Ljava/lang/String;

    iget-object v8, p1, Lo/Mq$ActionBar;->f:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lo/LP;->b(Lo/LP;ZZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 820
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object v0

    iget-boolean v2, p1, Lo/Mq$ActionBar;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lo/Mq$ActionBar;->h:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lo/LV;->d(Z)V

    .line 822
    invoke-direct {p0, p1}, Lo/LP$5;->b(Lo/Mq$ActionBar;)V

    return-void
.end method

.method public a(Lo/kC;)V
    .locals 1

    .line 915
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "CastPlayerHelper"

    const-string v0, "Capabilities is null!"

    .line 920
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/LP;->d(Lo/LP;Z)V

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-virtual {p1}, Lo/kC;->d()Z

    move-result p1

    invoke-static {v0, p1}, Lo/LP;->d(Lo/LP;Z)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method b()Z
    .locals 2

    .line 901
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->l(Lo/LP;)Lo/Bc;

    move-result-object v0

    instance-of v0, v0, Lo/AS;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->l(Lo/LP;)Lo/Bc;

    move-result-object v0

    check-cast v0, Lo/AS;

    .line 903
    invoke-interface {v0}, Lo/AS;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public c()V
    .locals 2

    .line 888
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Z)Z

    .line 889
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/LV;->d(Z)V

    .line 891
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->l(Lo/LP;)Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/LP$5;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-virtual {v1}, Lo/LP;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 896
    :cond_0
    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/LP$StateListAnimator;->d()V

    .line 897
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/LP;->b(Lo/LP;Lo/Bc;)Lo/Bc;

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    .line 937
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->i(Lo/LP;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 789
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkConnectivityChange connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 793
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-virtual {p1}, Lo/LP;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 794
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/LP;->c(Lo/LP;Z)Z

    .line 795
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lo/LP;->a(Lo/LP;Z)Z

    .line 796
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/LV;->d(Z)V

    .line 797
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerEndOfPlayback()V

    .line 798
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p1

    invoke-virtual {p1}, Lo/LV;->i()V

    .line 799
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.MDX_STATUS_SHOW_CAST_FRAG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isVisible"

    .line 800
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 799
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 990
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    return-void
.end method

.method public d(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 862
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Z)Z

    .line 865
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->n(Lo/LP;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->o(Lo/LP;)Lo/Da;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/Da;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 868
    :cond_0
    iget-object p2, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p2}, Lo/LP;->s(Lo/LP;)V

    .line 870
    :goto_0
    invoke-direct {p0, p1}, Lo/LP$5;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 871
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/LV;->d(Z)V

    .line 872
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p1

    invoke-virtual {p1}, Lo/LV;->l()V

    .line 873
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerEndOfPlayback()V

    .line 875
    :cond_1
    iget-object p1, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p1

    invoke-virtual {p1}, Lo/LV;->i()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 962
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 966
    :cond_0
    invoke-static {p1}, Lo/Ml;->b(Ljava/lang/String;)Lo/Ml;

    move-result-object p1

    .line 967
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-virtual {v0}, Lo/LP;->U_()Lo/Am;

    move-result-object v0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, v0, v1}, Lo/Ml;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x1

    .line 968
    invoke-virtual {p1, v0}, Lo/Ml;->setCancelable(Z)V

    .line 969
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    return-void
.end method

.method public e()V
    .locals 4

    .line 767
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    const-string v1, "updateVideoMetadata"

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-virtual {v0}, Lo/LP;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->m(Lo/LP;)Lo/LW;

    move-result-object v0

    invoke-interface {v0}, Lo/LW;->d()Lo/zN;

    move-result-object v0

    .line 774
    invoke-static {v0}, Lo/Mn;->c(Lo/zN;)Lo/Bc;

    move-result-object v1

    .line 775
    iget-object v2, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v2}, Lo/LP;->l(Lo/LP;)Lo/Bc;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v2}, Lo/LP;->l(Lo/LP;)Lo/Bc;

    move-result-object v2

    invoke-interface {v2}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/adV;->d(Lo/zN;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    const-string v1, "Same video is already playing, doing nothing"

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "CastPlayerHelper"

    const-string v1, "null video details provided by mdx agent"

    .line 779
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    :cond_2
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Different video, updating to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0, v1}, Lo/LP;->c(Lo/LP;Lo/Bc;)V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 942
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDuration, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    if-lez p1, :cond_1

    .line 948
    iget-object v0, p0, Lo/LP$5;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/LV;->d(I)V

    goto :goto_0

    :cond_1
    const-string p1, "CastPlayerHelper"

    const-string v0, "We received an invalid duration - ignoring"

    .line 951
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
