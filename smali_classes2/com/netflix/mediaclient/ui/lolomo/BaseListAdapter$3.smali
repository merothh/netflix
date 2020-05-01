.class Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$3;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BaseListAdapter"

    const-string v0, "onReceive..."

    .line 144
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "browse_agent_list_refresh_extra_reno_msg_id"

    .line 147
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    .line 148
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$3;->a:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b(Z)V

    return-void
.end method
