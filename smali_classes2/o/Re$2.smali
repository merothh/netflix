.class Lo/Re$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Re;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Re;


# direct methods
.method constructor <init>(Lo/Re;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/Re$2;->a:Lo/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 106
    iget-object p2, p0, Lo/Re$2;->a:Lo/Re;

    invoke-virtual {p2}, Lo/Re;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    .line 107
    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-static {p2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 109
    iget-object p2, p0, Lo/Re$2;->a:Lo/Re;

    invoke-static {p2}, Lo/Re;->c(Lo/Re;)Lo/nS;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 111
    iget-object v0, p0, Lo/Re$2;->a:Lo/Re;

    invoke-static {v0}, Lo/Re;->a(Lo/Re;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/Re$2;->a:Lo/Re;

    invoke-static {v1}, Lo/Re;->d(Lo/Re;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iget-object v2, p0, Lo/Re$2;->a:Lo/Re;

    invoke-static {v2}, Lo/Re;->b(Lo/Re;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    invoke-interface {p2, v0, v1, v2}, Lo/nS;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_0

    .line 114
    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->mM:I

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo/adk;->c(II)V

    .line 117
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
