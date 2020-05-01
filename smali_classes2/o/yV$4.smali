.class Lo/yV$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yV;-><init>(Landroid/content/Context;Lo/za;Lo/Ac;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lo/zF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/yV;


# direct methods
.method constructor <init>(Lo/yV;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/yV$4;->a:Lo/yV;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.intent.category.VOIP"

    .line 118
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "nf_voip_linphone"

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Intent to cancel call received"

    .line 120
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lo/yV$4;->a:Lo/yV;

    invoke-virtual {p1}, Lo/yV;->y()Z

    goto :goto_0

    :cond_0
    const-string p1, "Uknown VOIP action!"

    .line 123
    invoke-static {v1, p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "Received intent with uknown category!"

    .line 126
    invoke-static {v1, p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
