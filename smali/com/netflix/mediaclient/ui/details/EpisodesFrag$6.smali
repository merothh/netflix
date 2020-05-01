.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;
.super Landroid/content/BroadcastReceiver;
.source "EpisodesFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 838
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$200(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 844
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_EPISODE_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string/jumbo v0, "curSeasonNumber"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 846
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getSelectedItemPosition()I

    move-result v1

    .line 847
    if-eq v0, v1, :cond_2

    .line 848
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    const-string/jumbo v2, "EpisodesFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notification is for season "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " but spinner set to season "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :cond_2
    const-string/jumbo v0, "curEpisodeNumber"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 854
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 855
    const-string/jumbo v2, "EpisodesFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting current episode via episode refresh to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$300(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;I)V

    .line 859
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 860
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v1, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateSeasonDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    goto/16 :goto_0
.end method
