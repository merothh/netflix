.class public Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;
.super Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;
.source "KubrickKidsCwView.java"


# instance fields
.field private pressableViewGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f030078

    return v0
.end method

.method protected getPressableStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;->pressableViewGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPressableView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;->getPressableView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPressableView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;->pressableViewGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    return-object v0
.end method

.method protected init()V
    .locals 2

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;->init()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    const v0, 0x7f0f01b4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;->pressableViewGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;->infoIcon:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/lomo/KubrickKidsCwView;->infoIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeShadow(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
