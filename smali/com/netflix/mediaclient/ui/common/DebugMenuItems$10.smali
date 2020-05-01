.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$10;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

.field final synthetic val$homeActivity:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$10;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$10;->val$homeActivity:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$10;->val$homeActivity:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getGenre()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$10;->val$homeActivity:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$10;->val$homeActivity:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 301
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getGenreId()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "Home Lolomo"

    .line 300
    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->dumpHomeLoLoMosAndVideos(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
