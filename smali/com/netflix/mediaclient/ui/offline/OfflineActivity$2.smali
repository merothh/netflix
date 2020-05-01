.class Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;
.super Ljava/lang/Object;
.source "OfflineActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getSelectedItemsCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getSelectedItemsDiskSpace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->deleteSelected()V

    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->switchToEditMode(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    const v3, 0x7f0f0134

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000b

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    const/4 v2, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_0
    :goto_0
    return v8

    :cond_1
    const-string/jumbo v0, "Expected a R.id.coordinatorLayout here"

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto :goto_0
.end method
