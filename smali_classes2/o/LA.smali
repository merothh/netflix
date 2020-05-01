.class public abstract Lo/LA;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LA$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/LA$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    .line 27
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lo/LA;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/LA;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lo/LA$ActionBar;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lo/LA;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lo/LA$ActionBar;->b()Lo/Qe;

    move-result-object v1

    invoke-virtual {v1}, Lo/Qe;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/CwDialogDownloadRowModel$bind$1;-><init>(Lo/LA;Lo/LA$ActionBar;)V

    check-cast v2, Lo/alN;

    .line 41
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->C:I

    return v0
.end method

.method public final b(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lo/LA;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/LA;->g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/LA;->c:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/LA$ActionBar;

    invoke-virtual {p0, p1}, Lo/LA;->a(Lo/LA$ActionBar;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/LA$ActionBar;

    invoke-virtual {p0, p1}, Lo/LA;->a(Lo/LA$ActionBar;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/LA;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Lo/LA$ActionBar;
    .locals 1

    .line 38
    new-instance v0, Lo/LA$ActionBar;

    invoke-direct {v0}, Lo/LA$ActionBar;-><init>()V

    return-object v0
.end method

.method public final l()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/LA;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public final m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/LA;->g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/LA;->k()Lo/LA$ActionBar;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method public final o()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/LA;->c:Ljava/lang/Integer;

    return-object v0
.end method
