.class public final Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LA;->a(Lo/LA$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/LA;

.field final synthetic d:Lo/LA$ActionBar;


# direct methods
.method public constructor <init>(Lo/LA;Lo/LA$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->b:Lo/LA;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->d:Lo/LA$ActionBar;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "requireDownloadPlayableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requireNetflixActivity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1$ActionBar;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->d:Lo/LA$ActionBar;

    invoke-virtual {p1}, Lo/LA$ActionBar;->b()Lo/Qe;

    move-result-object p1

    check-cast v0, Lo/As;

    invoke-virtual {p1, v0, p2}, Lo/Qe;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 52
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->b:Lo/LA;

    invoke-virtual {p1}, Lo/LA;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->d:Lo/LA$ActionBar;

    invoke-virtual {p2}, Lo/LA$ActionBar;->b()Lo/Qe;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->h:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p2, p1}, Lo/Qe;->setPlayContext(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->d:Lo/LA$ActionBar;

    invoke-virtual {p1}, Lo/LA$ActionBar;->b()Lo/Qe;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->b:Lo/LA;

    invoke-virtual {p2}, Lo/LA;->o()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Qe;->setDefaultLabelTextId(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
