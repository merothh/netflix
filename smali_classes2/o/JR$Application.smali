.class Lo/JR$Application;
.super Lo/KA$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private final b:Lo/KX;

.field private final h:Lo/WebHistoryItem;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lo/KX;Lo/PatternMatcher;I)V
    .locals 2

    .line 261
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lo/KA$Application;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    .line 262
    iget-object p3, p0, Lo/JR$Application;->itemView:Landroid/view/View;

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lo/JR$Application;->a:Landroid/widget/FrameLayout;

    .line 263
    iput-object p2, p0, Lo/JR$Application;->b:Lo/KX;

    .line 264
    new-instance p2, Lo/WebHistoryItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/WebHistoryItem;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/JR$Application;->h:Lo/WebHistoryItem;

    .line 265
    iget-object p1, p0, Lo/JR$Application;->a:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/JR$Application;->b:Lo/KX;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object p1, p0, Lo/JR$Application;->a:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/JR$Application;->h:Lo/WebHistoryItem;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object p1, p0, Lo/JR$Application;->h:Lo/WebHistoryItem;

    invoke-virtual {p1}, Lo/WebHistoryItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method static synthetic c(Lo/JR$Application;)Lo/KX;
    .locals 0

    .line 254
    iget-object p0, p0, Lo/JR$Application;->b:Lo/KX;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 5

    .line 294
    instance-of v0, p2, Lo/agg;

    if-eqz v0, :cond_2

    .line 295
    move-object v0, p2

    check-cast v0, Lo/agg;

    .line 296
    invoke-interface {v0}, Lo/agg;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 298
    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getImageKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 299
    invoke-interface {v1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    if-nez v1, :cond_1

    .line 300
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video id which has no assets for bigrow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lo/Av;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " title "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lo/Av;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const-string v1, "Bigrow does not have asset for video "

    invoke-interface {p2, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 304
    :cond_1
    invoke-interface {v0}, Lo/agg;->as_()Lo/AR;

    move-result-object p2

    invoke-virtual {p1, p2, v2, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    return-object p1

    .line 306
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const-string p3, "BigRow video was not FullDetails"

    invoke-interface {p2, p3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 313
    invoke-super {p0}, Lo/KA$Application;->c()V

    .line 314
    iget-object v0, p0, Lo/JR$Application;->b:Lo/KX;

    invoke-virtual {v0}, Lo/KX;->c()V

    return-void
.end method

.method public c(Lo/Ky;IZ)V
    .locals 0

    .line 271
    iget-object p1, p0, Lo/JR$Application;->b:Lo/KX;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lo/KX;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Lo/JR$Application;->h:Lo/WebHistoryItem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/WebHistoryItem;->setVisibility(I)V

    return-void
.end method

.method public c(Lo/Ky;Lo/Aw;Lcom/netflix/mediaclient/android/activity/NetflixActivity;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 281
    invoke-super/range {v0 .. v5}, Lo/KA$Application;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 282
    iget-object p4, p0, Lo/JR$Application;->h:Lo/WebHistoryItem;

    const/16 p5, 0x8

    invoke-virtual {p4, p5}, Lo/WebHistoryItem;->setVisibility(I)V

    .line 283
    iget-object p4, p0, Lo/JR$Application;->b:Lo/KX;

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Lo/KX;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lo/JR$Application;->b:Lo/KX;

    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    invoke-virtual {p1}, Lo/Ky;->a()Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v4, p6

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lo/KX;->d(Lo/Aw;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 319
    invoke-super {p0}, Lo/KA$Application;->e()V

    .line 320
    iget-object v0, p0, Lo/JR$Application;->b:Lo/KX;

    invoke-virtual {v0}, Lo/KX;->a()V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 325
    iget-object v0, p0, Lo/JR$Application;->b:Lo/KX;

    invoke-virtual {v0}, Lo/KX;->g()Z

    move-result v0

    return v0
.end method
