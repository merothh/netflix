.class Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;
.super Ljava/lang/Object;
.source "ProfileSelectionActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$400(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$402(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
