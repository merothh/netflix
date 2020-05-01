.class public Lcom/netflix/mediaclient/ui/kids/KidsUtils;
.super Ljava/lang/Object;
.source "KidsUtils.java"


# static fields
.field private static final LARGE_DETAIL_PAGE_THRESHOLD_DP:I = 0x400

.field private static final LIST_VIEW_FRICTION_SCALE_FACTOR:F = 7.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->createSwitchToKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static configureListViewForKids(Landroid/widget/ListView;)V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/high16 v1, 0x40f00000    # 7.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setFriction(F)V

    .line 55
    return-void
.end method

.method public static createExitKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createSwitchFromKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createSwitchToKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createSwitchToKidsIntent(Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getDetailsPageContentWidth(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 58
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerHelper$BarkerBars;->getModalWidth()I

    move-result v0

    .line 71
    :goto_0
    return v0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInDPs(Landroid/content/Context;)I

    move-result v0

    .line 64
    const/16 v1, 0x400

    if-lt v0, v1, :cond_1

    .line 66
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static isKidsProfile(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Z
    .locals 1

    .prologue
    .line 26
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
