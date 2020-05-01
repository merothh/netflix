.class Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$4;
.super Ljava/lang/Object;
.source "PostPlayFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 146
    const-string/jumbo v0, "PostPlayFrag"

    const-string/jumbo v1, "Showing episodes dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    const-string/jumbo v0, "PostPlayFrag"

    const-string/jumbo v1, "currentVideo is null - can\'t show episodes"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createEpisodes(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 156
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0
.end method
