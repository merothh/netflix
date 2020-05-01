.class public Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;
.super Ljava/lang/Object;
.source "DetailsActivityLauncher.java"


# static fields
.field static final EXTRA_ACTION:Ljava/lang/String; = "extra_action"

.field static final EXTRA_ACTION_TOKEN:Ljava/lang/String; = "extra_action_token"

.field public static final EXTRA_EPISODE_ID:Ljava/lang/String; = "extra_episode_id"

.field public static final EXTRA_PLAY_CONTEXT:Ljava/lang/String; = "extra_playcontext"

.field public static final EXTRA_SAME_ACTIVITY_TYPE:Ljava/lang/String; = "extra_same_activity_type"

.field public static final EXTRA_VIDEO_ID:Ljava/lang/String; = "extra_video_id"

.field public static final EXTRA_VIDEO_TITLE:Ljava/lang/String; = "extra_video_title"

.field public static final EXTRA_VIDEO_TYPE:Ljava/lang/String; = "extra_video_type"

.field public static final INTENT_MDP:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFICATION_MOVIE_DETAILS"

.field public static final INTENT_SDP:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFICATION_SHOW_DETAILS"

.field private static final TAG:Ljava/lang/String; = "DetailsActivityLauncher"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDetailsClassTypeForMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    if-eqz v0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerMovieDetailsActivity;

    .line 86
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-class v0, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;

    goto :goto_0

    .line 84
    :cond_1
    if-eqz v0, :cond_2

    const-class v0, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;

    goto :goto_0

    :cond_2
    const-class v0, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;

    goto :goto_0
.end method

.method public static getEpisodeDetailsIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 324
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->getEpisodeDetailsIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getEpisodeDetailsIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    .prologue
    .line 283
    const/4 v7, 0x0

    .line 284
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getDetailsClassTypeForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const-string/jumbo v6, "getEpisodeDetailsIntent"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->logInvalidVideoType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/experience/BrowseExperience;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    move-object v0, v7

    .line 303
    :goto_0
    return-object v0

    .line 289
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "extra_video_id"

    .line 290
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    .line 291
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_playcontext"

    .line 292
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 293
    if-eqz p4, :cond_1

    .line 294
    const-string/jumbo v1, "extra_action"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 296
    :cond_1
    if-eqz p5, :cond_2

    .line 297
    const-string/jumbo v1, "extra_action_token"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :cond_2
    const-string/jumbo v1, "extra_video_type"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static getIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            "Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const-string/jumbo v1, "extra_video_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v1, "extra_video_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v1, "extra_video_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 232
    const-string/jumbo v1, "extra_playcontext"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    if-eqz p6, :cond_0

    .line 234
    const-string/jumbo v1, "extra_action"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 236
    :cond_0
    if-eqz p7, :cond_1

    .line 237
    const-string/jumbo v1, "extra_action_token"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "etails"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "etails"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    const-string/jumbo v1, "extra_same_activity_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    :cond_2
    return-object v0
.end method

.method public static getIntentForBroadcastReceiver(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFICATION_MOVIE_DETAILS"

    .line 263
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v0, "extra_video_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v0, "extra_video_title"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string/jumbo v0, "extra_video_type"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 268
    const-string/jumbo v0, "extra_playcontext"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    const-string/jumbo v0, "g"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    if-eqz p5, :cond_0

    .line 271
    const-string/jumbo v0, "extra_action_token"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    :cond_0
    invoke-static {v1, p6}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->addMessageDataToIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 276
    return-object v1

    .line 261
    :cond_1
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFICATION_SHOW_DETAILS"

    goto :goto_0
.end method

.method private static logInvalidVideoType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/experience/BrowseExperience;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    const-string/jumbo v1, "DetailsActivityLauncher - Don\'t know how to handle parent ID: %s, ep ID: %s, type: %s, trackId: %s, source: %s, experience: %s"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v0, 0x1

    aput-object p3, v2, v0

    const/4 v0, 0x2

    aput-object p4, v2, v0

    const/4 v3, 0x3

    if-nez p5, :cond_0

    const/4 v0, 0x0

    .line 219
    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object p6, v2, v0

    const/4 v0, 0x5

    aput-object p1, v2, v0

    .line 218
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string/jumbo v1, "DetailsActivityLauncher"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 222
    return-void

    .line 219
    :cond_0
    invoke-interface {p5}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 134
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->validateAndlogVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->isOriginal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showPreReleaseDP(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method public static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 54
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->validateAndlogVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->isOriginal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, v5

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showPreReleaseDP(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, v5

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method public static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;I)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 144
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, v5

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 145
    return-void
.end method

.method public static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 51
    return-void
.end method

.method public static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 108
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->validateAndlogVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->isOriginal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    move-object v8, v5

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showPreReleaseDP(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    move-object v8, v5

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method public static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 124
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->validateAndlogVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 127
    :cond_0
    return-void
.end method

.method private static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 10

    .prologue
    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v1

    .line 155
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showMementoDetails(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;

    move-result-object v9

    .line 157
    if-nez v9, :cond_0

    .line 158
    invoke-static {p0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->isCoppolaExperience(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    :goto_0
    move-object v9, v0

    .line 161
    :cond_0
    if-nez v9, :cond_2

    .line 162
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p4

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->logInvalidVideoType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/experience/BrowseExperience;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    .line 167
    :goto_1
    return-void

    .line 158
    :cond_1
    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getDetailsClassTypeForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 165
    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->startActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Class;)V

    goto :goto_1
.end method

.method public static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->validateAndlogVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    move-object v8, v5

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 67
    :cond_0
    return-void
.end method

.method public static show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 118
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 119
    return-void
.end method

.method public static showEpisodeDetails(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 310
    invoke-static/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->getEpisodeDetailsIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 311
    if-nez v0, :cond_0

    .line 312
    const-string/jumbo v0, "DetailsActivityLauncher"

    const-string/jumbo v1, "Can\'t start activity - intent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TDP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static showMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->validateAndlogVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->getDetailsClassTypeForMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;

    move-result-object v9

    .line 72
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->startActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Class;)V

    .line 74
    :cond_0
    return-void
.end method

.method private static showMementoDetails(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    instance-of v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerMovieDetailsActivity;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoBarkerShowDetailsActivity;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoMovieDetailsActivity;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoShowDetailsActivity;

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->getDetailsClassTypeForMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    :cond_1
    return-object v0
.end method

.method private static showPreReleaseDP(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 10

    .prologue
    .line 191
    if-nez p8, :cond_2

    .line 192
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 195
    :goto_0
    const-string/jumbo v1, "extra_is_movie"

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v9, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p9

    .line 197
    invoke-static/range {v0 .. v9}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->startActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Class;)V

    .line 198
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 196
    :cond_1
    const-class v9, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;

    goto :goto_2

    :cond_2
    move-object/from16 v7, p8

    goto :goto_0
.end method

.method private static startActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/ui/common/PlayContext;",
            "Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string/jumbo v1, "DetailsActivityLauncher"

    const-string/jumbo v2, "Creating details class: %s, videoType: %s, video ID: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, p0

    move-object/from16 v2, p9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 174
    invoke-static/range {v1 .. v8}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->getIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 176
    if-eqz p7, :cond_1

    .line 177
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 180
    :cond_1
    if-lez p8, :cond_2

    .line 181
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    :cond_2
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TDP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    .line 186
    return-void
.end method

.method static validateAndlogVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 1

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    const-string/jumbo v0, "SPY-8330: Start intent must provide extra value: extra_video_type"

    .line 204
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
