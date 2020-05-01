.class public Lo/Zz;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 3

    .line 14
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->c:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pP:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bx:I

    .line 15
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 16
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x1

    .line 17
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method
