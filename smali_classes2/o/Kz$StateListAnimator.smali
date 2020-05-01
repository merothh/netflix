.class public Lo/Kz$StateListAnimator;
.super Lo/KL$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Lo/YN;

.field private b:Lo/Yn;

.field private final i:Lo/YH;

.field private final j:Lo/YG;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/YH;Lo/YG;Lo/PatternMatcher;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewsListItemUIView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewsListItemUIPresenter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvider"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Lo/YH;->y()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lo/KL$StateListAnimator;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;)V

    iput-object p2, p0, Lo/Kz$StateListAnimator;->i:Lo/YH;

    iput-object p3, p0, Lo/Kz$StateListAnimator;->j:Lo/YG;

    return-void
.end method

.method private final c(Lo/Ky;Lo/Yn;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 206
    invoke-virtual/range {p2 .. p2}, Lo/Yn;->getPanelArtUrl()Ljava/lang/String;

    move-result-object v10

    .line 207
    invoke-virtual/range {p2 .. p2}, Lo/Yn;->getTitleTreatmentUrl()Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_5

    if-nez v12, :cond_0

    goto/16 :goto_2

    .line 215
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/Kz$StateListAnimator;->k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->i()Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual/range {p0 .. p0}, Lo/Kz$StateListAnimator;->k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->i()Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/trackinginfo/CLItemTrackingInfoBase;->e()Ljava/lang/String;

    .line 219
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/Kz$StateListAnimator;->k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->j:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 221
    invoke-virtual/range {p2 .. p2}, Lo/Yn;->isOriginal()Z

    move-result v11

    .line 223
    sget-object v2, Lo/amj;->c:Lo/amj;

    iget-object v2, v0, Lo/Kz$StateListAnimator;->itemView:Landroid/view/View;

    const-string v13, "itemView"

    invoke-static {v2, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v13, "itemView.context"

    invoke-static {v2, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v13, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "itemView.context.resourc\u2026.accesibility_play_video)"

    invoke-static {v2, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Lo/Yn;->getTitle()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    array-length v14, v13

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    const-string v14, "java.lang.String.format(format, *args)"

    invoke-static {v2, v14}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Lo/Yn;->getForegroundColor()I

    move-result v15

    .line 225
    invoke-virtual/range {p2 .. p2}, Lo/Yn;->getBackgroundColor()I

    move-result v16

    .line 226
    sget-object v2, Lo/YE;->a:Lo/YE;

    invoke-virtual {v2}, Lo/YE;->h()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual/range {p2 .. p2}, Lo/Yn;->getSupplementalVideoId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lo/akz;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v14

    const/16 v17, 0x7e

    const/16 v18, 0x0

    .line 218
    new-instance v2, Lo/YN;

    move-object/from16 v19, v2

    invoke-direct/range {v2 .. v18}, Lo/YN;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Lcom/netflix/android/imageloader/api/ImageDataSource;Lcom/netflix/android/imageloader/api/ImageDataSource;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIILo/amc;)V

    .line 228
    sget-object v2, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v2}, Lo/ep$ActionBar;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, v0, Lo/Kz$StateListAnimator;->j:Lo/YG;

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Lo/YG;->b(Lo/YN;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, v19

    .line 231
    iget-object v2, v0, Lo/Kz$StateListAnimator;->j:Lo/YG;

    invoke-virtual {v2, v3}, Lo/YG;->a(Lo/YN;)V

    .line 227
    :goto_0
    iput-object v3, v0, Lo/Kz$StateListAnimator;->a:Lo/YN;

    .line 235
    iput-object v1, v0, Lo/Kz$StateListAnimator;->b:Lo/Yn;

    .line 236
    invoke-virtual/range {p1 .. p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    const-string v3, "lomoContext.lomo()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    const-string v3, "lomoContext.lomo().listId ?: \"\""

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 238
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    const-string v4, "SPY-17510 - lomoId is empty. Previews filtered listId is not getting set correctly"

    invoke-interface {v3, v4}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    :cond_4
    move/from16 v3, p3

    .line 240
    invoke-virtual {v0, v3, v1, v2}, Lo/Kz$StateListAnimator;->c(ILo/Yn;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_5
    :goto_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreviewFeedItem titleId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lo/Yn;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " panelArtUrl="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " titleTreatmentUrl="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "Previews Row List: Cannot render box art due to missing artwork urls"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Av;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    const-string v0, "trackingInfoHolder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    instance-of v0, p2, Lcom/netflix/model/leafs/PreviewSummary;

    if-eqz v0, :cond_0

    .line 274
    check-cast p2, Lcom/netflix/model/leafs/PreviewSummary;

    invoke-virtual {p1, p2, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lcom/netflix/model/leafs/PreviewSummary;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected c(ILo/Yn;Ljava/lang/String;)V
    .locals 8

    const-string v0, "feedItemModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomoId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lo/Kz$StateListAnimator;->i:Lo/YH;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lo/YH;->c(Lo/YH;ILo/Yn;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "lomoContext"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceTrackingInfoHolder"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-super/range {p0 .. p5}, Lo/KL$StateListAnimator;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 253
    instance-of p4, p2, Lo/AM;

    if-eqz p4, :cond_2

    .line 254
    iget-object p4, p0, Lo/Kz$StateListAnimator;->b:Lo/Yn;

    if-nez p4, :cond_0

    .line 257
    new-instance p4, Lo/Yn;

    check-cast p2, Lo/AM;

    invoke-direct {p4, p2, p3}, Lo/Yn;-><init>(Lo/AM;I)V

    .line 258
    invoke-direct {p0, p1, p4, p3}, Lo/Kz$StateListAnimator;->c(Lo/Ky;Lo/Yn;I)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p4}, Lo/Yn;->i()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 260
    invoke-direct {p0, p1, p4, p3}, Lo/Kz$StateListAnimator;->c(Lo/Ky;Lo/Yn;I)V

    .line 262
    :cond_1
    :goto_0
    sget-object p2, Lo/YE;->a:Lo/YE;

    invoke-virtual {p1}, Lo/Ky;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/YE;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BasicVideo "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not of type PreviewsFeedItem"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public e()V
    .locals 3

    .line 283
    invoke-super {p0}, Lo/KL$StateListAnimator;->e()V

    .line 284
    iget-object v0, p0, Lo/Kz$StateListAnimator;->j:Lo/YG;

    invoke-virtual {v0}, Lo/YG;->a()V

    .line 286
    iget-object v0, p0, Lo/Kz$StateListAnimator;->a:Lo/YN;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lo/YN;->a(Landroid/graphics/Bitmap;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lo/Kz$StateListAnimator;->a:Lo/YN;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/YN;->d()Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 288
    :cond_1
    iget-object v0, p0, Lo/Kz$StateListAnimator;->a:Lo/YN;

    if-eqz v0, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lo/YN;->e(Landroid/graphics/Bitmap;)V

    .line 289
    :cond_2
    iget-object v0, p0, Lo/Kz$StateListAnimator;->a:Lo/YN;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/YN;->e()Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 290
    :cond_3
    move-object v0, v1

    check-cast v0, Lo/YN;

    iput-object v0, p0, Lo/Kz$StateListAnimator;->a:Lo/YN;

    .line 291
    check-cast v1, Lo/Yn;

    iput-object v1, p0, Lo/Kz$StateListAnimator;->b:Lo/Yn;

    return-void
.end method

.method public final f()Lo/akj;
    .locals 2

    .line 294
    iget-object v0, p0, Lo/Kz$StateListAnimator;->e:Lo/ServiceManagerNative;

    if-eqz v0, :cond_0

    const-string v1, "Sending prefetch hint"

    invoke-virtual {v0, v1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    sget-object v0, Lo/akj;->a:Lo/akj;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 302
    iget-object v0, p0, Lo/Kz$StateListAnimator;->i:Lo/YH;

    invoke-virtual {v0}, Lo/YH;->n()Z

    move-result v0

    return v0
.end method

.method public final h()Lo/Yn;
    .locals 1

    .line 201
    iget-object v0, p0, Lo/Kz$StateListAnimator;->b:Lo/Yn;

    return-object v0
.end method

.method public o()Lcom/netflix/cl/model/context/CLContext;
    .locals 2

    .line 280
    iget-object v0, p0, Lo/Kz$StateListAnimator;->b:Lo/Yn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Yn;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/netflix/cl/model/context/ios/GrayedPreview;

    invoke-direct {v0}, Lcom/netflix/cl/model/context/ios/GrayedPreview;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/context/CLContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
