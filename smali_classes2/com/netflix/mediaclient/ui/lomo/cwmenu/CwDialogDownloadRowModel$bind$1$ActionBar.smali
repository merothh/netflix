.class public final Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/As;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1$ActionBar;->b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1$ActionBar;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1$ActionBar;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1$ActionBar;->b:Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;->b:Lo/LA;

    invoke-virtual {v0}, Lo/LA;->l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
