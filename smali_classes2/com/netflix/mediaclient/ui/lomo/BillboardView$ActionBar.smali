.class public Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;->d:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const-string p1, "BillboardView"

    .line 708
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lo/Bc;)V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;->d:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_0

    .line 725
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 727
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/Bc;->aW()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lo/Am;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 713
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 714
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;->c(Lo/Bc;)V

    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 719
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 720
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$ActionBar;->c(Lo/Bc;)V

    return-void
.end method
