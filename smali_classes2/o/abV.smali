.class public final Lo/abV;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abV$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/abV$StateListAnimator;


# instance fields
.field private b:Lo/acc;

.field private c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

.field private e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/abV$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/abV$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/abV;->d:Lo/abV$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method public static final b(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)Lo/abV;
    .locals 6

    sget-object v0, Lo/abV;->d:Lo/abV$StateListAnimator;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lo/abV$StateListAnimator;->b(Lo/abV$StateListAnimator;Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;ILjava/lang/Object;)Lo/abV;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/abV;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/abV;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    return-void
.end method

.method public static final d(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abV;
    .locals 1

    sget-object v0, Lo/abV;->d:Lo/abV$StateListAnimator;

    invoke-virtual {v0, p0, p1, p2}, Lo/abV$StateListAnimator;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abV;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lo/acc;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/abV;->b:Lo/acc;

    return-object v0
.end method

.method public final b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 1

    const-string v0, "umaAlert"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lo/abV;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 68
    iget-object v0, p0, Lo/abV;->b:Lo/acc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/acc;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lo/abV;->setCancelable(Z)V

    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 112
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/abV;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    const-string v0, "UmaDialogFrag"

    invoke-virtual {p0, p1, v0}, Lo/abV;->showNow(Lo/SerializablePermission;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Uma Modal displayed"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lo/abV;->b:Lo/acc;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/acc;->o()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lo/acc;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/abV;->b:Lo/acc;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lo/abV;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lo/abV;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 128
    :cond_2
    sget-object v0, Lo/acn;->d:Lo/acn;

    invoke-virtual {v0, p1}, Lo/acn;->a(Ljava/lang/String;)V

    .line 130
    sget-object p1, Lo/acr;->b:Lo/acr$ActionBar;

    invoke-virtual {p0}, Lo/abV;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lo/acr$ActionBar;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 131
    sget p2, Lo/ClientCertRequest;->c:I

    .line 129
    invoke-virtual {p0, p1, p2}, Lo/abV;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    sget-object p1, Lo/acn;->d:Lo/acn;

    invoke-virtual {p1}, Lo/acn;->b()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 155
    sget v0, Lo/ClientCertRequest;->c:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lo/abV;->dismiss()V

    .line 158
    invoke-virtual {p0}, Lo/abV;->o()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    sget-object p2, Lo/abV$Activity;->e:Lo/abV$Activity;

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void

    .line 163
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/WebChromeClient;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p3, p0, Lo/abV;->b:Lo/acc;

    if-nez p3, :cond_0

    .line 74
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "umaView=null for Uma Modal"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    const-string v0, "Uma Modal onCreateView"

    invoke-interface {p3, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 78
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->fT:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 79
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->tV:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 81
    iget-object p3, p0, Lo/abV;->b:Lo/acc;

    check-cast p3, Landroid/view/View;

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 80
    invoke-virtual {p2, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p2, p0, Lo/abV;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lo/abV;->setCancelable(Z)V

    :cond_1
    return-object p1

    .line 79
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 99
    invoke-super {p0}, Lo/WebChromeClient;->onDestroyView()V

    .line 100
    iget-object v0, p0, Lo/abV;->b:Lo/acc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/acc;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/abV;->b:Lo/acc;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Uma Modal onDestroyView"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lo/abV;->e()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Uma Modal dismissed"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lo/abV;->b:Lo/acc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/acc;->n()V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lo/WebChromeClient;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 89
    invoke-super {p0}, Lo/WebChromeClient;->onResume()V

    .line 91
    invoke-virtual {p0}, Lo/abV;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.netflix.mediaclient.ui.ums.DISABLE_DEFAULT_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lo/abV;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 137
    invoke-super {p0}, Lo/WebChromeClient;->onStart()V

    .line 138
    invoke-virtual {p0}, Lo/abV;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v1, p0, Lo/abV;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->getTemplateType()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->WHITE_MODAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    if-ne v1, v2, :cond_1

    .line 140
    invoke-virtual {p0}, Lo/abV;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aQ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p0}, Lo/abV;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aP:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 144
    :goto_1
    invoke-virtual {p0}, Lo/abV;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/adq;->g(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x2

    if-le v2, v1, :cond_2

    .line 146
    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    .line 148
    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setLayout(II)V

    :goto_2
    const/16 v1, 0x11

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lo/abV;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 60
    :cond_0
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
