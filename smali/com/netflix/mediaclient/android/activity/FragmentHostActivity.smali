.class public abstract Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "FragmentHostActivity.java"


# static fields
.field public static final MINIPLAYER_FRAG_TAG:Ljava/lang/String; = "mini_player"

.field public static final PRIMARY_FRAG_TAG:Ljava/lang/String; = "primary"

.field public static final SECONDARY_FRAG_TAG:Ljava/lang/String; = "secondary"

.field static final STANDARD_PRIMARY_FRAG_WEIGHT:F = 0.6f

.field static final STANDARD_SECONDARY_FRAG_WEIGHT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "FragmentHostActivity"


# instance fields
.field private contentHost:Landroid/widget/LinearLayout;

.field private miniPlayerFrag:Landroid/app/Fragment;

.field private primaryFrag:Landroid/app/Fragment;

.field private primaryFragContainer:Landroid/view/ViewGroup;

.field private secondaryFrag:Landroid/app/Fragment;

.field private secondaryFragContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method private setupMiniPlayerFrag(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f01f4

    .line 98
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inAnyMementoTest(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/kubrick/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldShowMemento(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 111
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerFactory;->createMiniPlayer(Landroid/content/Context;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->miniPlayerFrag:Landroid/app/Fragment;

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->miniPlayerFrag:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->miniPlayerFrag:Landroid/app/Fragment;

    const-string/jumbo v2, "mini_player"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 115
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "mini_player"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->miniPlayerFrag:Landroid/app/Fragment;

    goto :goto_0
.end method


# virtual methods
.method protected configureLinearLayout()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->contentHost:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 135
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 140
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :cond_0
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract createPrimaryFrag()Landroid/app/Fragment;
.end method

.method protected createSecondaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->contentHost:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f03005e

    return v0
.end method

.method public getPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    return-object v0
.end method

.method protected getPrimaryFragContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getSecondaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    return-object v0
.end method

.method protected getSecondaryFragContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/IHandleBackPress;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getMdxMiniPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/IMiniPlayerFrag;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/details/IHandleBackPress;->handleBackPressed()Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasEmbeddedToolbar()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->isLoadingData()Z

    move-result v1

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->isLoadingData()Z

    move-result v0

    or-int/2addr v0, v1

    .line 195
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0f011c

    const v5, 0x7f0f011b

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getContentLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f0f0119

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->contentHost:Landroid/widget/LinearLayout;

    .line 49
    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->hasEmbeddedToolbar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 54
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_5

    .line 55
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    .line 63
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->setupMiniPlayerFrag(Landroid/os/Bundle;)V

    .line 65
    if-nez p1, :cond_6

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->createPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->createSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    .line 70
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string/jumbo v0, "FragmentHostActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating primary fragment of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v0, "FragmentHostActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating secondary fragment of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    const-string/jumbo v3, "primary"

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 77
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    const-string/jumbo v3, "secondary"

    invoke-virtual {v0, v6, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 80
    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->contentHost:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->configureLinearLayout()V

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 92
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-nez v0, :cond_7

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 94
    :cond_4
    return-void

    .line 56
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string/jumbo v2, "FragmentHostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t remove margin from layout of non-supported type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "primary"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "secondary"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    goto :goto_1

    :cond_7
    move v0, v1

    .line 92
    goto :goto_2
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 212
    :cond_1
    return-void
.end method

.method protected setPrimaryFrag(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    .line 171
    return-void
.end method
