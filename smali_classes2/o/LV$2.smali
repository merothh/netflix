.class Lo/LV$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LV;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/LW;Lo/Mh;Lo/LU$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lo/LV$2;->c:Lo/LV;

    iput-object p2, p0, Lo/LV$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 235
    iget-object v0, p0, Lo/LV$2;->c:Lo/LV;

    invoke-static {v0}, Lo/LV;->d(Lo/LV;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lo/LV$2;->c:Lo/LV;

    invoke-static {v1}, Lo/LV;->c(Lo/LV;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LV$2;->c:Lo/LV;

    invoke-static {v0}, Lo/LV;->d(Lo/LV;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/LV$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lo/LV$2;->c:Lo/LV;

    invoke-static {v0}, Lo/LV;->d(Lo/LV;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lo/LV;->d(Lo/LV;F)F

    .line 238
    iget-object v0, p0, Lo/LV$2;->c:Lo/LV;

    invoke-static {v0}, Lo/LV;->e(Lo/LV;)V

    :cond_0
    return-void
.end method
