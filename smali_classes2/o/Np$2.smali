.class Lo/Np$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Np;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Np;


# direct methods
.method constructor <init>(Lo/Np;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lo/Np$2;->e:Lo/Np;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 567
    iget-object p1, p0, Lo/Np$2;->e:Lo/Np;

    invoke-static {p1}, Lo/Np;->b(Lo/Np;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 568
    new-instance p1, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;

    iget-object v0, p0, Lo/Np$2;->e:Lo/Np;

    iget-object v0, v0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hL:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "queue"

    invoke-direct {p1, v3, v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lo/Np$2;->e:Lo/Np;

    iget-object v0, v0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1}, Lo/Lo;->d(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    :cond_0
    return-void
.end method
