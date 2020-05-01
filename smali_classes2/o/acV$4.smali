.class Lo/acV$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cV;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acV;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/acV;


# direct methods
.method constructor <init>(Lo/acV;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lo/acV$4;->d:Lo/acV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 594
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 596
    iget-object p2, p0, Lo/acV$4;->d:Lo/acV;

    invoke-static {p2, p1}, Lo/acV;->b(Lo/acV;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    goto :goto_0

    :cond_0
    const-string p1, "VoipActivity"

    const-string p2, "fetchVoipConfigData Failed:: Back to landing page contact us"

    .line 598
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object p1, p0, Lo/acV$4;->d:Lo/acV;

    invoke-virtual {p1}, Lo/acV;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fl:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/acV;->a(Lo/acV;Ljava/lang/String;)V

    .line 600
    iget-object p1, p0, Lo/acV$4;->d:Lo/acV;

    invoke-static {p1}, Lo/acV;->d(Lo/acV;)V

    :goto_0
    return-void
.end method
