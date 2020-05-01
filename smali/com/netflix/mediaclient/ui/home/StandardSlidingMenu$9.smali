.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$600(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->genresList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getHeaderViewsCount()I

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$700(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;

    move-result-object v2

    sub-int v0, p3, v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$GenresListAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 550
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$9;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->closeDrawersWithDelay()V

    .line 552
    :cond_0
    return-void
.end method
