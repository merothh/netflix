.class public final Lo/Uy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Uy$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:J

.field private static d:Lo/JM;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/Uy;->a:J

    .line 50
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    sput-object v0, Lo/Uy;->d:Lo/JM;

    return-void
.end method

.method static synthetic c()Lo/JM;
    .locals 1

    .line 41
    sget-object v0, Lo/Uy;->d:Lo/JM;

    return-object v0
.end method

.method public static c(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/hR;
    .locals 14

    const-string v0, "&"

    const-string v1, "UTF-8"

    const-string v2, "="

    .line 60
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->l()Z

    move-result v3

    const-string v4, "ErrorManager"

    if-nez v3, :cond_0

    const-string p0, "Fragment was already detached from the activity - skipping error..."

    .line 61
    invoke-static {v4, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v3, ""

    .line 67
    instance-of v5, p1, Lo/sZ;

    const-string v6, ")"

    const-string v7, "("

    if-eqz v5, :cond_2

    .line 68
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->e()Ljava/lang/String;

    move-result-object v5

    .line 69
    move-object v8, p1

    check-cast v8, Lo/sZ;

    invoke-virtual {v8}, Lo/sZ;->c()Lo/xD;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 71
    invoke-virtual {v8}, Lo/xD;->d()Ljava/lang/String;

    move-result-object v3

    .line 73
    :cond_1
    invoke-static {v5}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 74
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->c:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 77
    :cond_2
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->e:I

    .line 78
    instance-of v8, p1, Lcom/netflix/mediaclient/service/player/offlineplayback/ExoPlaybackError;

    if-eqz v8, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->d()I

    move-result v8

    sget-object v9, Lcom/netflix/mediaclient/service/player/offlineplayback/ExoPlaybackError$ExoPlaybackErrorCode;->c:Lcom/netflix/mediaclient/service/player/offlineplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/player/offlineplayback/ExoPlaybackError$ExoPlaybackErrorCode;->d()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 79
    sget-wide v8, Lo/Uy;->a:J

    invoke-static {v8, v9}, Lo/aey;->a(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 80
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->a:I

    .line 83
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_0
    move-object v13, v5

    .line 86
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v5

    .line 89
    instance-of p1, p1, Lo/sR;

    if-eqz p1, :cond_5

    .line 90
    new-instance p1, Lo/hQ;

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->U_()Lo/Am;

    move-result-object v6

    invoke-virtual {v6}, Lo/Am;->Z()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v6

    invoke-direct {p1, v5, v6}, Lo/hQ;-><init>(Landroid/app/Activity;Lcom/netflix/mediaclient/service/user/UserAgent;)V

    :goto_1
    move-object v12, p1

    goto :goto_2

    .line 91
    :cond_5
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->x()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 92
    new-instance p1, Lo/Uy$TaskDescription;

    invoke-direct {p1, v5, p0}, Lo/Uy$TaskDescription;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V

    goto :goto_1

    .line 94
    :cond_6
    new-instance p1, Lo/hP;

    invoke-direct {p1, v5}, Lo/hP;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    :goto_2
    const-string p1, "https://help.netflix.com/support/14384"

    .line 99
    :try_start_0
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 100
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->U_()Lo/Am;

    move-result-object p0

    invoke-virtual {p0}, Lo/Am;->i()Lo/cz;

    move-result-object p0

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "https://help.netflix.com/api/deviceerror"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "?"

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "esnPrefix"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-interface {p0}, Lo/cz;->e()Lo/ds;

    move-result-object p0

    invoke-interface {p0}, Lo/ds;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "errorCode"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "caller"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AndroidMobile"

    .line 107
    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_3

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception generating help Url"

    .line 111
    invoke-static {v4, p0, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    :cond_7
    :goto_3
    new-instance v11, Lo/adM;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v11, p0, p1}, Lo/adM;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    new-instance p0, Lo/Uy$4;

    invoke-direct {p0, v11}, Lo/Uy$4;-><init>(Lo/adM;)V

    .line 124
    sget-object p0, Lo/Uy;->d:Lo/JM;

    invoke-virtual {p0}, Lo/JM;->c()Lio/reactivex/Observable;

    move-result-object p0

    .line 125
    invoke-virtual {v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lo/Uy$1;

    const-string v1, "PlayerErrorDialogDescriptorFactory requestUserAgent"

    invoke-direct {v0, v1, v5, v11, p1}, Lo/Uy$1;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/adM;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 143
    new-instance p0, Lo/CalendarViewLegacyDelegate$Activity;

    const/4 v8, 0x0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fN:I

    .line 144
    invoke-virtual {v5, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v6, ""

    move-object v5, p0

    move-object v7, v13

    move-object v9, v12

    invoke-direct/range {v5 .. v12}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 145
    invoke-static {v4, v13}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance p1, Lo/UA;

    invoke-direct {p1, p0}, Lo/UA;-><init>(Lo/hK;)V

    return-object p1
.end method
