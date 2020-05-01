.class Lcom/netflix/mediaclient/ui/mdx/MdxMenu$1;
.super Ljava/lang/Object;
.source "MdxMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxMenuDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMenu$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMenu;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMenu;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMenu;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
