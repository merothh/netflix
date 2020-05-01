.class public Lo/Jg;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lo/Ly$Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Jg$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lo/Ly$Activity<",
        "Lo/AR;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ByteArrayInputStream<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/ResourceCursorAdapter;

.field private b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final c:Lo/BaseAdapter;

.field private final d:Lo/BaseAdapter;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsCharacterView$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsCharacterView$1;-><init>()V

    sput-object v0, Lo/Jg;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lo/Jg;->setFocusable(Z)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->H:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->F:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v0, v1, v0, v2}, Lo/Jg;->setPadding(IIII)V

    .line 58
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    new-instance v3, Lo/BaseAdapter;

    invoke-direct {v3, p1}, Lo/BaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lo/Jg;->d:Lo/BaseAdapter;

    .line 60
    iget-object v3, p0, Lo/Jg;->d:Lo/BaseAdapter;

    invoke-virtual {p0, v3, v0}, Lo/Jg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 63
    new-instance v1, Lo/BaseAdapter;

    invoke-direct {v1, p1}, Lo/BaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo/Jg;->c:Lo/BaseAdapter;

    .line 64
    iget-object v1, p0, Lo/Jg;->c:Lo/BaseAdapter;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lo/BaseAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v1, p0, Lo/Jg;->c:Lo/BaseAdapter;

    invoke-virtual {p0, v1, v0}, Lo/Jg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Lo/Jg$ActionBar;

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, p0, p1, p0}, Lo/Jg$ActionBar;-><init>(Lo/Jg;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    iput-object v0, p0, Lo/Jg;->a:Lo/ResourceCursorAdapter;

    return-void
.end method

.method static synthetic a(Lo/Jg;)I
    .locals 0

    .line 37
    iget p0, p0, Lo/Jg;->e:I

    return p0
.end method


# virtual methods
.method public b(Lo/AR;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_0
    invoke-interface {p1}, Lo/AR;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 0

    .line 36
    check-cast p1, Lo/AR;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/Jg;->d(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public d(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 3

    .line 128
    invoke-virtual {p0, p1}, Lo/Jg;->b(Lo/AR;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iput-object p2, p0, Lo/Jg;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v1}, Lo/Jg;->setVisibility(I)V

    .line 137
    sget-object v1, Lo/Jg;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p3, v1

    .line 138
    iget-object v1, p0, Lo/Jg;->d:Lo/BaseAdapter;

    sget-object v2, Lo/Jg;->f:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ByteArrayInputStream;

    iget-object v2, v2, Lo/ByteArrayInputStream;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/BaseAdapter;->setBackgroundResource(I)V

    .line 139
    sget-object v1, Lo/Jg;->f:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/ByteArrayInputStream;

    iget-object p3, p3, Lo/ByteArrayInputStream;->b:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lo/Jg;->e:I

    .line 141
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 142
    iget-object p3, p0, Lo/Jg;->c:Lo/BaseAdapter;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 144
    invoke-virtual {v1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p4

    .line 142
    invoke-virtual {p3, p4}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 149
    :cond_0
    iget-object p3, p0, Lo/Jg;->c:Lo/BaseAdapter;

    invoke-interface {p1}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p3, p0, Lo/Jg;->a:Lo/ResourceCursorAdapter;

    invoke-virtual {p3, p0, p1, p2}, Lo/ResourceCursorAdapter;->b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lo/Jg;->c:Lo/BaseAdapter;

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 157
    iget-object v0, p0, Lo/Jg;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    .line 158
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "KidsCharacterView.getPlayContext has null trackingInfo"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v1, -0x1ae

    const-string v2, "KidsCharacterView"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 76
    iget-object p2, p0, Lo/Jg;->c:Lo/BaseAdapter;

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1}, Lo/BaseAdapter;->setCornerRadius(I)V

    .line 77
    iget-object p1, p0, Lo/Jg;->c:Lo/BaseAdapter;

    invoke-virtual {p1}, Lo/BaseAdapter;->f()V

    :cond_0
    return-void
.end method
