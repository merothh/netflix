.class public Lcom/netflix/mediaclient/ui/search/SearchMenu;
.super Ljava/lang/Object;
.source "SearchMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSearchNavigation(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    if-eqz p2, :cond_0

    const v0, 0x7f020136

    .line 19
    :goto_0
    const/high16 v1, 0x7f0f0000

    const v2, 0x7f0802b2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 20
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 21
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->create(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    .line 22
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 19
    return-object v0

    .line 16
    :cond_0
    const v0, 0x7f020135

    goto :goto_0
.end method
