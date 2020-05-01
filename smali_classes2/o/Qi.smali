.class public final Lo/Qi;
.super Lcom/netflix/mediaclient/ui/offline/DownloadButton;
.source ""


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lo/Qi;->i:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/Qi;->d:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ai:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ak:I

    :goto_0
    return v0
.end method

.method public d(I)V
    .locals 4

    .line 34
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    sget-object v1, Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;->b:Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setDisplayType(Lcom/netflix/android/widgetry/widget/tabs/BadgeView$DisplayType;)V

    .line 35
    iget v0, p0, Lo/Qi;->i:I

    const-string v1, "context"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 36
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    iget v2, p0, Lo/Qi;->i:I

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundColor(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {p0}, Lo/Qi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->ac:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundColor(I)V

    .line 40
    :goto_0
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {p0}, Lo/Qi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->am:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundShadowColor(I)V

    .line 41
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setProgress(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->e()V

    .line 23
    iget v0, p0, Lo/Qi;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    iget v1, p0, Lo/Qi;->i:I

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundColor(I)V

    .line 25
    iget v0, p0, Lo/Qi;->i:I

    invoke-virtual {p0, v0}, Lo/Qi;->setTintColor(I)V

    :cond_0
    return-void
.end method

.method public final setTintColor(I)V
    .locals 2

    .line 13
    iput p1, p0, Lo/Qi;->i:I

    .line 15
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    const-string v1, "badgeView"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 16
    :cond_0
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->setBackgroundColor(I)V

    .line 17
    iget-object v0, p0, Lo/Qi;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->invalidate()V

    .line 18
    iget-object v0, p0, Lo/Qi;->e:Lo/ImageSwitcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setTextColor(I)V

    :cond_1
    return-void
.end method
