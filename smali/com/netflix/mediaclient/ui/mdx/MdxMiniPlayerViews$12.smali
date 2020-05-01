.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$12;
.super Ljava/lang/Object;
.source "MdxMiniPlayerViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$800(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxMenuDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    return-void
.end method
