.class Lo/LV$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lo/LV$4;->d:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1019
    iget-object p1, p0, Lo/LV$4;->d:Lo/LV;

    iget-object p1, p1, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1023
    :cond_0
    iget-object p1, p0, Lo/LV$4;->d:Lo/LV;

    invoke-static {p1}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object p1

    invoke-interface {p1}, Lo/LW;->e()Lo/Bc;

    move-result-object p1

    const-string v0, "MdxMiniPlayerViews"

    if-nez p1, :cond_1

    const-string p1, "currentVideo is null - can\'t show episodes"

    .line 1025
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1029
    :cond_1
    instance-of v1, p1, Lo/AS;

    if-nez v1, :cond_2

    const-string p1, "currentVideo is not an episode detail"

    .line 1030
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "Showing episodes dialog"

    .line 1034
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v0, p0, Lo/LV$4;->d:Lo/LV;

    iget-object v0, v0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 1038
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v1

    .line 1039
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 1037
    invoke-static {v1, p1, v2, v3}, Lo/Dn;->a(Ljava/lang/String;Ljava/lang/String;J)Lo/Dn;

    move-result-object p1

    .line 1036
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    return-void
.end method
