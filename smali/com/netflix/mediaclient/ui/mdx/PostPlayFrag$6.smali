.class Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;
.super Landroid/content/BroadcastReceiver;
.source "PostPlayFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-eqz p2, :cond_0

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 295
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_3

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    const-string/jumbo v4, "PostPlayFrag"

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0

    .line 292
    :sswitch_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_PLAY_TITLE_END"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_PLAY_TITLE_NEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MINI_PLAYER_POST_HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    .line 301
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    .line 302
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    new-instance v4, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    const-string/jumbo v6, "PostPlayFrag"

    invoke-direct {v4, v5, v6}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Ljava/lang/String;)V

    .line 300
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_0

    .line 309
    :pswitch_1
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    const-string/jumbo v4, "PostPlayFrag"

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$FetchPostPlayForPlaybackCallback;-><init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;Ljava/lang/String;)V

    invoke-interface {v1, v0, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_0

    .line 314
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$6;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V

    goto/16 :goto_0

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ad9acbc -> :sswitch_0
        -0x2057f276 -> :sswitch_1
        0x4cca375d -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
