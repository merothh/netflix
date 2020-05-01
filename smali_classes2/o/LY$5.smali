.class Lo/LY$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LY;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/LY;


# direct methods
.method constructor <init>(Lo/LY;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lo/LY$5;->b:Lo/LY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 267
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->j:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v4

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lo/LY$5;->b:Lo/LY;

    invoke-static {v0}, Lo/LY;->d(Lo/LY;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v6, 0x2

    .line 272
    :goto_0
    iget-object v1, p0, Lo/LY$5;->b:Lo/LY;

    invoke-static {v1}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object v3

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lo/LY;->b(Lo/LY;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;ILandroid/view/View;I)V

    goto :goto_1

    .line 273
    :cond_1
    iget-object v0, p0, Lo/LY$5;->b:Lo/LY;

    invoke-static {v0}, Lo/LY;->a(Lo/LY;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 275
    iget-object v1, p0, Lo/LY$5;->b:Lo/LY;

    invoke-static {v1}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object v3

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lo/LY;->b(Lo/LY;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Bc;ILandroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method
