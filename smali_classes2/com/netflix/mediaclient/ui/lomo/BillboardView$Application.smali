.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

.field private b:Ljava/lang/String;

.field private c:Z

.field private final d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const-string p1, "BillboardView"

    .line 738
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 734
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->c:Z

    .line 739
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->b:Ljava/lang/String;

    .line 740
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->d:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;Z)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const-string p1, "BillboardView"

    .line 744
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 734
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->c:Z

    .line 745
    iput-boolean p4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->c:Z

    .line 746
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->b:Ljava/lang/String;

    .line 747
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->d:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 761
    invoke-super {p0, p1, p2}, Lo/zP;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 763
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c(Lo/Bc;Landroid/widget/Button;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 753
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 755
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c(Lo/Bc;Landroid/widget/Button;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .line 777
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_1

    .line 779
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->c:Z

    if-eqz p2, :cond_0

    .line 780
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    .line 781
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    invoke-interface {p1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->d:Landroid/widget/Button;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0, v1, v2}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    goto :goto_0

    .line 783
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c(Lo/Bc;Landroid/widget/Button;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 769
    invoke-super {p0, p1, p2}, Lo/zP;->j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 770
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 771
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AS;

    invoke-interface {v1}, Lo/AS;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AS;

    invoke-interface {p1}, Lo/AS;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$Application;->b:Ljava/lang/String;

    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Landroid/widget/Button;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
