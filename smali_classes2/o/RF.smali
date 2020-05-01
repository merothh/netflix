.class public Lo/RF;
.super Lo/CN;
.source ""


# instance fields
.field b:Lo/RG;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lo/CN;-><init>()V

    .line 18
    new-instance v0, Lo/RG;

    invoke-direct {v0}, Lo/RG;-><init>()V

    iput-object v0, p0, Lo/RF;->b:Lo/RG;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 21
    iget-object v0, p0, Lo/RF;->b:Lo/RG;

    invoke-virtual {v0}, Lo/RG;->c()V

    .line 22
    invoke-virtual {p0}, Lo/RF;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lo/RF;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lo/Se;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Se;->d(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 47
    iget-object v0, p0, Lo/RF;->b:Lo/RG;

    invoke-virtual {v0}, Lo/RG;->a()V

    .line 48
    invoke-virtual {p0}, Lo/RF;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lo/RF;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 29
    invoke-virtual {p0}, Lo/RF;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 32
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lo/RF;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->af:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    const p3, 0x1030010

    .line 33
    invoke-virtual {p0, p1, p3}, Lo/RF;->setStyle(II)V

    .line 36
    invoke-virtual {p0}, Lo/RF;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-virtual {p1}, Lo/Serializable;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "android:id/titleDivider"

    invoke-virtual {p1, v0, p3, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 37
    invoke-virtual {p0}, Lo/RF;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lo/RF;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->am:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    :cond_0
    iget-object p1, p0, Lo/RF;->b:Lo/RG;

    invoke-virtual {p1}, Lo/RG;->e()V

    .line 43
    new-instance p1, Lo/RE;

    invoke-virtual {p0}, Lo/RF;->getActivity()Lo/Serializable;

    move-result-object p3

    invoke-direct {p1, p3}, Lo/RE;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, p0}, Lo/RE;->a(Landroid/view/ViewGroup;Lo/RF;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
