.class Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;
.super Ljava/lang/Object;
.source "KubrickLolomoUtils.java"


# static fields
.field private static final LOG_VERBOSE:Z = false

.field private static final TAG:Ljava/lang/String; = "HeroTitleScroller"


# instance fields
.field private final frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    .line 154
    return-void
.end method

.method private computeScrollingThreshPx(Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;Landroid/view/View;)I
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 206
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->access$000(Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getHeightIfVisible(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 216
    return v0
.end method

.method private computeTransYMax(Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;Landroid/view/View;)I
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->title:Landroid/widget/TextView;

    .line 222
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 223
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->access$000(Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getHeightIfVisible(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 234
    return v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;)V
    .locals 5

    .prologue
    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 158
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;

    .line 161
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 166
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;->computeScrollingThreshPx(Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;Landroid/view/View;)I

    move-result v3

    .line 171
    const/4 v4, 0x1

    if-gt v1, v4, :cond_1

    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 178
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$HeroTitleScroller;->computeTransYMax(Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;Landroid/view/View;)I

    move-result v2

    .line 179
    if-le v3, v2, :cond_4

    .line 183
    :goto_1
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->title:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 157
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/lolomo/KubrickLolomoUtils$KubrickRowHolder;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    .line 195
    :cond_2
    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v0, "HeroTitleScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No row holder available for view at row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 201
    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_1
.end method
