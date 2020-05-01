.class public final enum Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

.field public static final enum b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    .line 48
    sget-object v2, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->b:Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->a:[Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 313
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->e()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lo/cz;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->mdeConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MdeConfig;->isDisabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 7

    .line 55
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->b()Lo/pz;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DeepLinkUtils"

    if-nez v0, :cond_0

    const-string v0, "playerAgent shouldn\'t be null"

    .line 57
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 60
    :cond_0
    invoke-interface {v0}, Lo/pz;->e()Lo/Ah;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Lo/Ah;->c()Lo/zJ;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lo/zJ;->d()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v3, "getCurrentPlaybackIdLocalOrRemote has local playback %s"

    .line 64
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    .line 68
    :cond_1
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->a()Lo/zN;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 70
    invoke-interface {v0}, Lo/zN;->n()Lo/aeM$Application;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 71
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "getCurrentPlaybackIdLocalOrRemote has videoIds on mdx %b"

    invoke-static {v2, v6, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_4

    .line 73
    iget-object v5, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    invoke-static {v5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lo/aeM$Application;->e:Ljava/lang/String;

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v3, "getCurrentPlaybackIdLocalOrRemote has remote playback %s"

    .line 77
    invoke-static {v2, v3, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v0

    :cond_4
    const-string v0, "getCurrentPlaybackIdLocalOrRemote no playback found"

    .line 84
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;
    .locals 1

    .line 48
    const-class v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;
    .locals 1

    .line 48
    sget-object v0, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->a:[Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "trkid"

    .line 272
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "trkId"

    .line 274
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "scene"

    .line 291
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 5

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->Z()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object v1

    sget-object v2, Lo/u$Activity;->e:Lo/u$Activity;

    .line 108
    invoke-virtual {v1, v2}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object v1

    new-instance v2, Lo/u$Application;

    .line 110
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lo/u$Application;-><init>(Ljava/lang/String;ZZ)V

    .line 109
    invoke-virtual {v1, v2}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "NetflixComUtils userAgent or profileGuid was null in startProfilesIconActivity"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-static {p1}, Lo/QU;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_id"

    .line 127
    invoke-interface {p2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_video_type_string_value"

    .line 128
    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_play_context"

    .line 129
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 130
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p2, 0x0

    .line 133
    invoke-virtual {p1, p2, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "targetip"

    .line 304
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    monitor-enter p0

    .line 137
    :try_start_0
    invoke-static {p1}, Lo/acV;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x34000000

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, v0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "targetname"

    .line 309
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 200
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/Ir;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, v0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 9

    monitor-enter p0

    .line 214
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://google.com"

    .line 218
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000

    .line 217
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 226
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_4

    .line 227
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_4

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 232
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_2

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 233
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 234
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    .line 236
    :cond_2
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "chrome"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 237
    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_3
    if-nez v4, :cond_0

    .line 238
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.netflix"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 239
    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_4
    :goto_1
    const-string v6, "DeepLinkUtils"

    const-string v7, "Found a weird null activityInfo. Skipping..."

    .line 228
    invoke-static {v6, v7}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 245
    new-instance p2, Landroid/content/ComponentName;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 248
    new-instance p2, Landroid/content/ComponentName;

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    .line 251
    new-instance p2, Landroid/content/ComponentName;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    .line 253
    :cond_8
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find right activity to handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 254
    instance-of p2, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_9

    .line 255
    move-object p2, p1

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/protocol/netflixcom/DeepLinkUtils;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_9
    :goto_3
    const-string p2, "DeepLinkUtils"

    .line 259
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Landroid/content/Intent;)V

    const/high16 p2, 0x10000000

    .line 261
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p1, v1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "stopremote"

    .line 295
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "true"

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 297
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 299
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "t"

    .line 281
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 283
    invoke-static {p1}, Lo/aeg;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lo/aeg;->d(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    monitor-enter p0

    .line 99
    :try_start_0
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    .line 100
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/Zg;->a(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 144
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    const/4 v1, 0x1

    .line 147
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "remind-me"

    .line 149
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "extras-minusone"

    .line 150
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 155
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p2

    sget-object p3, Lo/u$StateListAnimator;->e:Lo/u$StateListAnimator;

    .line 156
    invoke-virtual {p2, p3}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p2

    new-instance p3, Lo/u$StateListAnimator$Activity;

    invoke-direct {p3, v1}, Lo/u$StateListAnimator$Activity;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2, p3}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p2

    .line 158
    invoke-virtual {p2, p1}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 160
    :cond_0
    const-class p2, Lo/m;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/m;

    invoke-interface {p2}, Lo/m;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 163
    invoke-static {p3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 165
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :catch_0
    :cond_1
    :try_start_2
    new-instance p3, Lo/u$TaskDescription$StateListAnimator;

    invoke-direct {p3, v1, v2, p2}, Lo/u$TaskDescription$StateListAnimator;-><init>(Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 169
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p2

    sget-object v1, Lo/u$TaskDescription;->e:Lo/u$TaskDescription;

    .line 170
    invoke-virtual {p2, v1}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p2

    .line 171
    invoke-virtual {p2, p3}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p2

    .line 172
    invoke-virtual {p2, p1}, Lo/Og$Application;->c(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p1, v0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTaskRoot()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 179
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p2

    .line 180
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p1, v0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    .line 185
    :cond_3
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p2

    sget-object p3, Lo/u$StateListAnimator;->e:Lo/u$StateListAnimator;

    .line 186
    invoke-virtual {p2, p3}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p2

    new-instance p3, Lo/u$StateListAnimator$Activity;

    invoke-direct {p3, v1}, Lo/u$StateListAnimator$Activity;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2, p3}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p2

    .line 188
    invoke-virtual {p2, p1}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p2

    sget-object p3, Lo/u$StateListAnimator;->e:Lo/u$StateListAnimator;

    .line 192
    invoke-virtual {p2, p3}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p2

    .line 193
    invoke-virtual {p2, p1}, Lo/Og$Application;->c(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p2

    .line 194
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p1, v0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
