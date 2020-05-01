.class public Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "OfflineTutorialDialogFrag.java"


# static fields
.field private static final DIALOG_SCREEN_WIDTH_RATIO:F = 0.95f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->adjustModalWidthIfApplicable(Landroid/view/View;)V

    return-void
.end method

.method private adjustModalWidthIfApplicable(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 78
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 80
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 81
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 82
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->dismiss()V

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->markAsSeen()V

    .line 96
    return-void
.end method

.method public markAsSeen()V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->setFullscreenTutorialDisplayed(Z)V

    .line 30
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->markAsSeen()V

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    const/4 v0, 0x0

    const v1, 0x1030010

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->setStyle(II)V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "android:id/titleDivider"

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->bind(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 60
    return-void
.end method

.method public showAvailableToDownload()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->showAvailableDownloadsGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 66
    :cond_0
    return-void
.end method
