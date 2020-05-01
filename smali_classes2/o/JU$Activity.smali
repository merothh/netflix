.class public Lo/JU$Activity;
.super Lo/KL$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/widget/FrameLayout;

.field private final g:Lo/aka;

.field private final j:Lo/Lk;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/Lk;Lo/PatternMatcher;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cwView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lo/KL$StateListAnimator;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;)V

    iput-object p2, p0, Lo/JU$Activity;->j:Lo/Lk;

    .line 153
    iget-object p2, p0, Lo/JU$Activity;->itemView:Landroid/view/View;

    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lo/JU$Activity;->b:Landroid/widget/FrameLayout;

    .line 163
    new-instance p2, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter$ContinueWatchingViewHolder$loadingIndicator$2;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter$ContinueWatchingViewHolder$loadingIndicator$2;-><init>(Lo/JU$Activity;Landroid/view/ViewGroup;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/JU$Activity;->g:Lo/aka;

    .line 172
    iget-object p1, p0, Lo/JU$Activity;->b:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/JU$Activity;->j:Lo/Lk;

    check-cast p2, Landroid/view/View;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 153
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic d(Lo/JU$Activity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 150
    iget-object p0, p0, Lo/JU$Activity;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private final f()Lo/WebHistoryItem;
    .locals 1

    iget-object v0, p0, Lo/JU$Activity;->g:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WebHistoryItem;

    return-object v0
.end method


# virtual methods
.method public c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 7

    const-string v0, "lomoContext"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceTrackingInfoHolder"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    .line 182
    invoke-super/range {v1 .. v6}, Lo/KL$StateListAnimator;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 183
    iget-boolean p1, p0, Lo/JU$Activity;->a:Z

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    .line 184
    invoke-direct {p0}, Lo/JU$Activity;->f()Lo/WebHistoryItem;

    move-result-object p1

    const/16 v0, 0x8

    .line 185
    invoke-virtual {p1, v0}, Lo/WebHistoryItem;->setVisibility(I)V

    .line 186
    iput-boolean p5, p0, Lo/JU$Activity;->a:Z

    .line 189
    :cond_0
    iget-object p1, p0, Lo/JU$Activity;->j:Lo/Lk;

    invoke-virtual {p1, p5}, Lo/Lk;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lo/JU$Activity;->j:Lo/Lk;

    check-cast p2, Lo/Az;

    invoke-virtual {p0}, Lo/JU$Activity;->k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p5

    invoke-virtual {p1, p2, p5, p3, p4}, Lo/Lk;->c(Lo/Az;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public final e(Lo/Ky;IZ)V
    .locals 0

    const-string p2, "lomoContext"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lo/JU$Activity;->j:Lo/Lk;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lo/Lk;->setVisibility(I)V

    .line 195
    invoke-direct {p0}, Lo/JU$Activity;->f()Lo/WebHistoryItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 196
    invoke-virtual {p1, p2}, Lo/WebHistoryItem;->setVisibility(I)V

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lo/JU$Activity;->a:Z

    return-void
.end method

.method public g()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lo/JU$Activity;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/JU$Activity;->j:Lo/Lk;

    invoke-virtual {v0}, Lo/Lk;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
