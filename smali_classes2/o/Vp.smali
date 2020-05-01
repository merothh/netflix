.class public final Lo/Vp;
.super Lo/GridView;
.source ""

# interfaces
.implements Lo/Vr;


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/drawable/BitmapDrawable;

.field private e:Landroid/graphics/drawable/BitmapDrawable;

.field private f:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Vp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Vp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/Vp;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 18
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic b(Lo/Vp;)Ljava/util/LinkedList;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/Vp;->a:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public ak_()V
    .locals 1

    .line 27
    iget-object v0, p0, Lo/Vp;->e:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/Vp;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public al_()V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/Vp;->f:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/Vp;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final b(Lo/ErrorCodes;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v3, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    const-string v0, "imageLoaderRepository"

    invoke-static {v8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/model/leafs/originals/interactive/Image;->url()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v12, :cond_1

    .line 40
    invoke-virtual/range {p6 .. p6}, Lcom/netflix/model/leafs/originals/interactive/Image;->url()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v11, :cond_2

    .line 41
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/model/leafs/originals/interactive/Image;->url()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v9, :cond_3

    .line 44
    sget-object v4, Lo/XJ;->c:Lo/XJ;

    move-object v5, v7

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5, v9, v10}, Lo/XJ;->b(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/SourceRect;F)V

    :cond_3
    if-nez v1, :cond_4

    .line 48
    sget-object v0, Lo/GridView;->d:Lo/GridView$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 52
    :cond_4
    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    move-object v2, v7

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    invoke-interface {v8, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$2;->a:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$2;

    check-cast v1, Lo/alA;

    .line 57
    new-instance v2, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;

    invoke-direct {v2, v7, v3, v11, v12}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$3;-><init>(Lo/Vp;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/Image;)V

    check-cast v2, Lo/alA;

    .line 53
    invoke-static {v0, v1, v2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_2

    .line 78
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/model/leafs/originals/interactive/Image;->url()Ljava/lang/String;

    move-result-object v0

    const-string v13, "url"

    if-eqz v0, :cond_7

    .line 79
    invoke-virtual/range {p4 .. p4}, Lcom/netflix/model/leafs/originals/interactive/Image;->sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v1

    .line 80
    sget-object v2, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    move-object v4, v7

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v2

    invoke-static {v0, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    if-nez v1, :cond_6

    if-eqz v9, :cond_6

    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->width()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->height()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    .line 85
    :cond_6
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    invoke-interface {v8, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v14

    .line 86
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$4$1;->a:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$4$1;

    move-object v15, v0

    check-cast v15, Lo/alA;

    .line 89
    new-instance v16, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$1;

    move-object/from16 v0, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$1;-><init>(Lcom/netflix/model/leafs/originals/interactive/SourceRect;Lo/Vp;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/ErrorCodes;)V

    move-object/from16 v0, v16

    check-cast v0, Lo/alA;

    .line 85
    invoke-static {v14, v15, v0}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    :cond_7
    if-eqz v12, :cond_9

    .line 102
    invoke-virtual/range {p6 .. p6}, Lcom/netflix/model/leafs/originals/interactive/Image;->url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual/range {p6 .. p6}, Lcom/netflix/model/leafs/originals/interactive/Image;->sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    move-object v3, v7

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v2

    invoke-static {v0, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    if-nez v1, :cond_8

    if-eqz v9, :cond_8

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->width()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->height()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    .line 109
    :cond_8
    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    invoke-interface {v8, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v14

    .line 110
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$5$1;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$5$1;

    move-object v15, v0

    check-cast v15, Lo/alA;

    .line 113
    new-instance v16, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$2;

    move-object/from16 v0, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$2;-><init>(Lcom/netflix/model/leafs/originals/interactive/SourceRect;Lo/Vp;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/ErrorCodes;)V

    move-object/from16 v0, v16

    check-cast v0, Lo/alA;

    .line 109
    invoke-static {v14, v15, v0}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    :cond_9
    if-eqz v11, :cond_b

    .line 124
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/model/leafs/originals/interactive/Image;->url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 125
    invoke-virtual/range {p5 .. p5}, Lcom/netflix/model/leafs/originals/interactive/Image;->sourceRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    move-object v3, v7

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v2

    invoke-static {v0, v13}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v2

    if-nez v1, :cond_a

    if-eqz v9, :cond_a

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->width()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    .line 129
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->height()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    .line 131
    :cond_a
    sget-object v2, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-virtual {v2, v3}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v0

    invoke-interface {v8, v0}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v12

    .line 132
    sget-object v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$6$1;->d:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$6$1;

    move-object v13, v0

    check-cast v13, Lo/alA;

    .line 135
    new-instance v14, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;

    move-object v0, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveVisualStateImageView$loadImages$$inlined$let$lambda$3;-><init>(Lcom/netflix/model/leafs/originals/interactive/SourceRect;Lo/Vp;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/ErrorCodes;)V

    check-cast v14, Lo/alA;

    .line 131
    invoke-static {v12, v13, v14}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    :cond_b
    :goto_2
    return-void
.end method

.method public c()V
    .locals 1

    .line 31
    iget-object v0, p0, Lo/Vp;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/Vp;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final m()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/Vp;->e:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final n()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/Vp;->b:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final o()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/Vp;->f:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 151
    invoke-super {p0}, Lo/GridView;->onDetachedFromWindow()V

    .line 152
    iget-object v0, p0, Lo/Vp;->a:Ljava/util/LinkedList;

    check-cast v0, Ljava/lang/Iterable;

    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CompatibilityInfo;

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Lo/CompatibilityInfo;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setDefault(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lo/Vp;->e:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public final setFocused(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/Vp;->b:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public final setSelected(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/Vp;->f:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method
