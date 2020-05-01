.class Lo/LV$3;
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
.field final synthetic e:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lo/LV$3;->e:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1056
    iget-object p1, p0, Lo/LV$3;->e:Lo/LV;

    iget-object p1, p1, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1057
    iget-object p1, p0, Lo/LV$3;->e:Lo/LV;

    const-string v0, "Activity destroyed, can\'t show volume frag"

    invoke-static {p1, v0}, Lo/LV;->e(Lo/LV;Ljava/lang/String;)V

    return-void

    .line 1061
    :cond_0
    iget-object p1, p0, Lo/LV$3;->e:Lo/LV;

    invoke-static {p1}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object p1

    invoke-interface {p1}, Lo/LW;->j()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MdxMiniPlayerViews"

    const-string v0, "Remote player is not ready - can\'t get/set volume"

    .line 1062
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1066
    :cond_1
    invoke-static {}, Lo/Dk;->b()Lo/Dk;

    move-result-object p1

    const/4 v0, 0x1

    .line 1067
    invoke-virtual {p1, v0}, Lo/WebChromeClient;->setCancelable(Z)V

    .line 1068
    iget-object v0, p0, Lo/LV$3;->e:Lo/LV;

    iget-object v0, v0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    return-void
.end method
