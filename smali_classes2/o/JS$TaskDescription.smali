.class abstract Lo/JS$TaskDescription;
.super Lo/KA$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

.field private final b:Landroid/widget/FrameLayout;

.field private final i:Lo/WebHistoryItem;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lo/PatternMatcher;I)V
    .locals 2

    .line 277
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lo/KA$Application;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    .line 278
    iget-object p3, p0, Lo/JS$TaskDescription;->itemView:Landroid/view/View;

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lo/JS$TaskDescription;->b:Landroid/widget/FrameLayout;

    .line 279
    iput-object p2, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    .line 280
    new-instance p2, Lo/WebHistoryItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/WebHistoryItem;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/JS$TaskDescription;->i:Lo/WebHistoryItem;

    .line 281
    iget-object p1, p0, Lo/JS$TaskDescription;->b:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object p1, p0, Lo/JS$TaskDescription;->b:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/JS$TaskDescription;->i:Lo/WebHistoryItem;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object p1, p0, Lo/JS$TaskDescription;->i:Lo/WebHistoryItem;

    invoke-virtual {p1}, Lo/WebHistoryItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method


# virtual methods
.method public a(Lo/Ky;IZ)V
    .locals 0

    .line 287
    iget-object p1, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lo/JS$TaskDescription;->i:Lo/WebHistoryItem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/WebHistoryItem;->setVisibility(I)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 2

    .line 307
    instance-of v0, p2, Lo/agg;

    if-eqz v0, :cond_1

    .line 308
    check-cast p2, Lo/agg;

    .line 309
    invoke-interface {p2}, Lo/agg;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getImageKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 313
    :goto_0
    invoke-interface {p2}, Lo/agg;->as_()Lo/AR;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public c(Lo/Av;Lo/Ky;)Lorg/json/JSONObject;
    .locals 5

    .line 333
    iget-object p1, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    instance-of p1, p1, Lo/Ld;

    if-eqz p1, :cond_1

    .line 334
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 335
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 337
    iget-object v0, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    check-cast v0, Lo/Ld;

    invoke-virtual {v0}, Lo/Ld;->h()Ljava/util/List;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 341
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/model/leafs/originals/ListOfTagSummary;

    .line 342
    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/ListOfTagSummary;->getId()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/ListOfTagSummary;->getPosition()I

    move-result v2

    .line 345
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "titleDescriptorTagMap"

    .line 348
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 351
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "BillboardListAdapter"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%s: was not able to create tracking info JSON for tags: %s"

    .line 351
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_1
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 293
    invoke-super/range {p0 .. p5}, Lo/KA$Application;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 295
    iget-object p1, p0, Lo/JS$TaskDescription;->i:Lo/WebHistoryItem;

    const/16 p4, 0x8

    invoke-virtual {p1, p4}, Lo/WebHistoryItem;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    check-cast p2, Lo/Ax;

    invoke-virtual {p0}, Lo/JS$TaskDescription;->k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p1, p2, p4, p3, p5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c(Lo/Ax;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 320
    iget-object v0, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->i()V

    .line 321
    invoke-super {p0}, Lo/KA$Application;->e()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 325
    iget-object v0, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->f()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lo/JS$TaskDescription;->i:Lo/WebHistoryItem;

    invoke-virtual {v0}, Lo/WebHistoryItem;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lo/JS$TaskDescription;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->m()Z

    move-result v0

    return v0
.end method
