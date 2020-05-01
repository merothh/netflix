.class final Lo/YJ$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YJ;->e(ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Yn;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/YJ;


# direct methods
.method constructor <init>(Lo/YJ;Lo/Yn;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/YJ$Application;->e:Lo/YJ;

    iput-object p2, p0, Lo/YJ$Application;->a:Lo/Yn;

    iput p3, p0, Lo/YJ$Application;->c:I

    iput-object p4, p0, Lo/YJ$Application;->b:Ljava/lang/String;

    iput-object p5, p0, Lo/YJ$Application;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 62
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lo/YJ$Application;->e:Lo/YJ;

    invoke-static {v0}, Lo/YJ;->d(Lo/YJ;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lo/Yr;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    iget-object v0, p0, Lo/YJ$Application;->e:Lo/YJ;

    invoke-static {v0}, Lo/YJ;->d(Lo/YJ;)Landroid/content/Context;

    move-result-object v0

    .line 110
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_2

    .line 65
    sget-object v1, Lo/Yi;->e:Lo/Yi;

    iget-object v2, p0, Lo/YJ$Application;->a:Lo/Yn;

    invoke-virtual {v2}, Lo/Yn;->i()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lo/Yi;->c(Lo/Yn;Z)V

    .line 66
    sget-object v1, Lo/YE;->a:Lo/YE;

    iget v2, p0, Lo/YJ$Application;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/YE;->a(Ljava/lang/Integer;)V

    .line 68
    iget-object v1, p0, Lo/YJ$Application;->a:Lo/Yn;

    invoke-virtual {v1}, Lo/Yn;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "PLAY_CONTEXT"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 70
    iget-object v2, p0, Lo/YJ$Application;->e:Lo/YJ;

    invoke-static {v2}, Lo/YJ;->b(Lo/YJ;)Lo/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/GridView;->getLocationOnScreen([I)V

    .line 71
    new-instance v2, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    .line 72
    iget-object v4, p0, Lo/YJ$Application;->b:Ljava/lang/String;

    const/4 v10, 0x0

    .line 73
    aget v5, v1, v10

    const/4 v3, 0x1

    .line 74
    aget v6, v1, v3

    .line 75
    iget-object v1, p0, Lo/YJ$Application;->e:Lo/YJ;

    invoke-static {v1}, Lo/YJ;->b(Lo/YJ;)Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getWidth()I

    move-result v7

    .line 76
    iget-object v1, p0, Lo/YJ$Application;->e:Lo/YJ;

    invoke-static {v1}, Lo/YJ;->b(Lo/YJ;)Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getHeight()I

    move-result v8

    .line 77
    iget-object v1, p0, Lo/YJ$Application;->a:Lo/Yn;

    invoke-virtual {v1}, Lo/Yn;->getPanelArtUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v9, v1

    move-object v3, v2

    .line 71
    invoke-direct/range {v3 .. v9}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 79
    check-cast v2, Landroid/os/Parcelable;

    const-string v1, "previews_lolomo_view_boxart_data"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lo/YJ$Application;->b:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/YJ$Application;->d:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-17510 - lomoId is empty. Previews filtered listId is not getting set correctly. Can\'t create Previews Slideshow UI"

    .line 83
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 84
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oV:I

    invoke-static {p1, v10}, Lo/adk;->c(II)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v1, p0, Lo/YJ$Application;->e:Lo/YJ;

    invoke-static {v1}, Lo/YJ;->d(Lo/YJ;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {v0, v10, v10}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    :cond_2
    :goto_1
    return-void
.end method
