.class Lo/aaV$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aaV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/aaV;


# direct methods
.method constructor <init>(Lo/aaV;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lo/aaV$3;->e:Lo/aaV;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "nf_settings"

    const-string p2, "mOsvSpaceUpdatedReceiver"

    .line 69
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lo/aaV$3;->e:Lo/aaV;

    invoke-virtual {p1}, Lo/aaV;->h()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 72
    instance-of p2, p1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    if-eqz p2, :cond_0

    .line 74
    check-cast p1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
