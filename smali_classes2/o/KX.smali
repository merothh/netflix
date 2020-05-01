.class public Lo/KX;
.super Lo/Lm;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KX$Activity;
    }
.end annotation


# instance fields
.field b:Ljava/lang/Runnable;

.field protected e:Lo/UpdateEngine;

.field private g:Landroid/widget/ToggleButton;

.field private j:Lo/HorizontalScrollView;

.field private k:Lo/ImageSwitcher;

.field private l:Lo/Aw;

.field private m:Lo/ImageSwitcher;

.field private n:Lo/Oc;

.field private o:Lo/GridView;

.field private p:Z

.field private q:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private r:Lo/Cp;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lio/reactivex/disposables/Disposable;

.field private final u:Landroid/view/View$OnClickListener;

.field private x:Lo/AK;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 121
    invoke-direct {p0, p1}, Lo/Lm;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lo/UnicodeScript;

    invoke-static {p1, v0}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UnicodeScript;

    invoke-static {p1}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    iput-object p1, p0, Lo/KX;->e:Lo/UpdateEngine;

    .line 89
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lo/KX;->s:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lo/KX;->b:Ljava/lang/Runnable;

    .line 104
    new-instance p1, Lo/KX$5;

    invoke-direct {p1, p0}, Lo/KX$5;-><init>(Lo/KX;)V

    iput-object p1, p0, Lo/KX;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lo/Lm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lo/UnicodeScript;

    invoke-static {p1, p2}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UnicodeScript;

    invoke-static {p1}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    iput-object p1, p0, Lo/KX;->e:Lo/UpdateEngine;

    .line 89
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lo/KX;->s:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lo/KX;->b:Ljava/lang/Runnable;

    .line 104
    new-instance p1, Lo/KX$5;

    invoke-direct {p1, p0}, Lo/KX$5;-><init>(Lo/KX;)V

    iput-object p1, p0, Lo/KX;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lo/Lm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lo/UnicodeScript;

    invoke-static {p1, p2}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UnicodeScript;

    invoke-static {p1}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    iput-object p1, p0, Lo/KX;->e:Lo/UpdateEngine;

    .line 89
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lo/KX;->s:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lo/KX;->b:Ljava/lang/Runnable;

    .line 104
    new-instance p1, Lo/KX$5;

    invoke-direct {p1, p0}, Lo/KX$5;-><init>(Lo/KX;)V

    iput-object p1, p0, Lo/KX;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Lcom/netflix/model/leafs/originals/BillboardAsset;)V
    .locals 6

    .line 432
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 433
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 435
    iget-object v1, p0, Lo/KX;->o:Lo/GridView;

    invoke-virtual {v1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    int-to-float v1, v1

    .line 436
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3fe39581    # 1.778f

    div-float v3, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v1, v4

    sub-float/2addr v3, v5

    div-float/2addr v2, v4

    sub-float/2addr v2, v1

    int-to-float p1, p1

    mul-float p1, p1, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    cmpl-float v0, p1, v3

    if-lez v0, :cond_0

    mul-float v2, v2, v3

    div-float/2addr v2, p1

    move p1, v3

    .line 447
    :cond_0
    iget-object v0, p0, Lo/KX;->o:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, v2

    .line 448
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int p1, p1

    .line 449
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 450
    iget-object p1, p0, Lo/KX;->o:Lo/GridView;

    invoke-virtual {p1, v0}, Lo/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lo/Aw;)Z
    .locals 5

    .line 280
    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object v1

    .line 282
    invoke-interface {p1}, Lo/Aw;->isPreRelease()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;->start()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private b(Lo/Aw;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Aw;",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 292
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    const/4 v3, 0x2

    if-nez p3, :cond_0

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    .line 298
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 299
    new-instance v5, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lo/Aw;->getId()Ljava/lang/String;

    move-result-object v14

    const-string v8, ""

    const-string v10, "play"

    const-string v11, ""

    const-string v13, "play"

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const-string v7, "play"

    const v8, 0x348b34

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v5, v10, :cond_5

    .line 302
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/model/leafs/originals/BillboardCTA;

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-static {v5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 304
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v11, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_4

    .line 309
    new-instance v5, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lo/Aw;->getId()Ljava/lang/String;

    move-result-object v18

    const-string v12, ""

    const-string v14, "play"

    const-string v15, ""

    const-string v17, "play"

    move-object v11, v5

    invoke-direct/range {v11 .. v18}, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 306
    :cond_4
    new-instance v5, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-interface/range {p1 .. p1}, Lo/Aw;->getId()Ljava/lang/String;

    move-result-object v26

    const-string v20, ""

    const-string v22, "addToPlaylist"

    const-string v23, ""

    const-string v25, "addToPlaylist"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v26}, Lcom/netflix/model/leafs/originals/DefaultBillboardCTA;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_6

    .line 316
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 319
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/model/leafs/originals/BillboardCTA;

    .line 320
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v11

    .line 321
    invoke-static {v11}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 322
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/BillboardCTA;->type()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v12, v8, :cond_9

    const v13, 0x700608ee

    if-eq v12, v13, :cond_8

    const v13, 0x700681d2

    if-eq v12, v13, :cond_7

    goto :goto_5

    :cond_7
    const-string v12, "playlist"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    const-string v12, "addToPlaylist"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x2

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v11, -0x1

    :goto_6
    if-eqz v11, :cond_c

    if-eq v11, v10, :cond_c

    if-eq v11, v3, :cond_b

    goto/16 :goto_9

    .line 342
    :cond_b
    iget-object v11, v0, Lo/KX;->j:Lo/HorizontalScrollView;

    invoke-virtual/range {p0 .. p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/BillboardCTA;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/BillboardCTA;->sequenceNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lo/KY;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    new-instance v11, Lo/KX$4;

    const-string v12, "BigRowView"

    invoke-direct {v11, v0, v12, v5, v2}, Lo/KX$4;-><init>(Lo/KX;Ljava/lang/String;Lcom/netflix/model/leafs/originals/BillboardCTA;Lo/Am;)V

    move-object/from16 v12, p1

    invoke-static {v2, v12, v5, v11}, Lo/KY;->a(Lo/Am;Lo/AR;Lcom/netflix/model/leafs/originals/BillboardCTA;Lo/zU;)V

    goto :goto_a

    :cond_c
    move-object/from16 v12, p1

    .line 326
    invoke-interface/range {p1 .. p1}, Lo/Aw;->isPreRelease()Z

    move-result v5

    const/4 v11, 0x0

    if-eqz v5, :cond_d

    invoke-direct/range {p0 .. p1}, Lo/KX;->a(Lo/Aw;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 327
    new-instance v5, Lo/Cp;

    invoke-interface/range {p1 .. p1}, Lo/Aw;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v1, v13}, Lo/Cp;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v5, v0, Lo/KX;->r:Lo/Cp;

    .line 328
    iget-object v5, v0, Lo/KX;->r:Lo/Cp;

    const-string v13, "com.netflix.mediaclient.mylist.intent.action.ADD"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v5, v11, v13}, Lo/adG;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_7

    .line 330
    :cond_d
    iput-object v11, v0, Lo/KX;->r:Lo/Cp;

    .line 332
    :goto_7
    invoke-interface/range {p1 .. p1}, Lo/Aw;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface/range {p1 .. p1}, Lo/Aw;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, v0, Lo/KX;->n:Lo/Oc;

    if-eqz v5, :cond_10

    .line 334
    invoke-interface/range {p1 .. p1}, Lo/Aw;->getId()Ljava/lang/String;

    move-result-object v13

    .line 335
    invoke-interface/range {p1 .. p1}, Lo/Aw;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v14

    iget-object v15, v0, Lo/KX;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v3, v0, Lo/KX;->i:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    iget-object v3, v0, Lo/KX;->i:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 337
    invoke-virtual {v3, v11}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v11

    .line 333
    :goto_8
    invoke-virtual {v5, v13, v14, v15, v11}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    goto :goto_a

    :cond_f
    :goto_9
    move-object/from16 v12, p1

    :cond_10
    :goto_a
    const/4 v3, 0x2

    goto/16 :goto_4

    :cond_11
    return-void
.end method

.method static synthetic b(Lo/KX;Lo/Aw;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lo/KX;->b(Lo/Aw;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lo/KX;)Lo/ImageSwitcher;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/KX;->m:Lo/ImageSwitcher;

    return-object p0
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 171
    invoke-static {p1}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lo/KX;->x:Lo/AK;

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lo/KX;->q:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lo/KX;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 174
    invoke-virtual {p0}, Lo/KX;->i()V

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Lo/Lf;

    invoke-direct {v0, p0, p1}, Lo/Lf;-><init>(Lo/KX;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lo/KX;->b:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/netflix/model/leafs/originals/BigRowSummary;)V
    .locals 6

    .line 397
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object v0

    .line 399
    invoke-interface {p1}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getAvailabilityDates()Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardAvailabilityDates;->start()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 403
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lo/KX;->t:Lio/reactivex/disposables/Disposable;

    if-nez v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " adding the delayed handlers for Pre Release content for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BigRowView"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v1, Lo/KX$3;

    invoke-direct {v1, p0, v0}, Lo/KX$3;-><init>(Lo/KX;Lcom/netflix/model/leafs/originals/BillboardPhase;)V

    .line 407
    invoke-virtual {p1, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/KX;->t:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method static synthetic d(Lo/KX;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/KX;->q:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p1
.end method

.method private synthetic d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lo/KX;->x:Lo/AK;

    iget-object v1, p0, Lo/KX;->q:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lo/KX;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 178
    invoke-virtual {p0}, Lo/KX;->i()V

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lo/KX;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic d(Lo/KX;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/KX;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lo/KX;Lo/AK;)Lo/AK;
    .locals 0

    .line 68
    iput-object p1, p0, Lo/KX;->x:Lo/AK;

    return-object p1
.end method

.method static synthetic e(Lo/KX;)Lo/Aw;
    .locals 0

    .line 68
    iget-object p0, p0, Lo/KX;->l:Lo/Aw;

    return-object p0
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 3

    .line 150
    iget-boolean p1, p0, Lo/KX;->p:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lo/KX;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVolume(F)V

    .line 152
    iget-object p1, p0, Lo/KX;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleVisibility(Z)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lo/KX;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVolume(F)V

    .line 155
    iget-object p1, p0, Lo/KX;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setSubtitleVisibility(Z)V

    .line 156
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    .line 158
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 160
    invoke-virtual {p1, v1, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 163
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lo/KX;->p:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lo/KX;->p:Z

    .line 164
    iget-object p1, p0, Lo/KX;->g:Landroid/widget/ToggleButton;

    iget-boolean v0, p0, Lo/KX;->p:Z

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setSelected(Z)V

    return-void
.end method

.method static synthetic e(Lo/KX;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/KX;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lo/KX;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/KX;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method static synthetic e(Lo/KX;Lo/Aw;)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lo/KX;->a(Lo/Aw;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 455
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lo/KX;->q:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lo/KX;->x:Lo/AK;

    .line 458
    iget-object v1, p0, Lo/KX;->l:Lo/Aw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/KX;->r:Lo/Cp;

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 460
    invoke-static {v1}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    iget-object v2, p0, Lo/KX;->r:Lo/Cp;

    invoke-static {v1, v2}, Lo/adG;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 462
    iput-object v0, p0, Lo/KX;->r:Lo/Cp;

    .line 465
    :cond_0
    iget-object v1, p0, Lo/KX;->t:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    .line 466
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 468
    :cond_1
    iput-object v0, p0, Lo/KX;->t:Lio/reactivex/disposables/Disposable;

    .line 470
    iget-object v0, p0, Lo/KX;->o:Lo/GridView;

    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {v0}, Lo/GridView;->i()V

    :cond_2
    return-void
.end method

.method protected a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Lo/Lm;->a(Landroid/animation/ValueAnimator;)V

    .line 199
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 200
    iget-object v0, p0, Lo/KX;->o:Lo/GridView;

    invoke-virtual {v0, p1}, Lo/GridView;->setAlpha(F)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 490
    iget-object v0, p0, Lo/KX;->o:Lo/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 491
    invoke-super {p0, p1}, Lo/Lm;->a(Z)V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 502
    invoke-super {p0}, Lo/Lm;->b()V

    .line 503
    iget-object v0, p0, Lo/KX;->o:Lo/GridView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/GridView;->setAlpha(F)V

    return-void
.end method

.method protected b(Lo/Ab;)Z
    .locals 2

    .line 426
    iget-object v0, p0, Lo/KX;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iget-boolean v1, p0, Lo/KX;->p:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVolume(F)V

    .line 427
    iget-object v0, p0, Lo/KX;->g:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lo/KX;->p:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 428
    invoke-super {p0, p1}, Lo/Lm;->b(Lo/Ab;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 4

    .line 507
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 508
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/KX;->l:Lo/Aw;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lo/KX;->s:Ljava/util/HashMap;

    iget-object v2, p0, Lo/KX;->l:Lo/Aw;

    invoke-interface {v2}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getImpressionToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p0, Lo/KX;->l:Lo/Aw;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->a:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v3, p0, Lo/KX;->s:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lo/zG;->a(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .line 483
    iget-object v0, p0, Lo/KX;->o:Lo/GridView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/GridView;->setAlpha(F)V

    .line 484
    iget-object v0, p0, Lo/KX;->o:Lo/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 485
    invoke-super {p0}, Lo/Lm;->d()V

    return-void
.end method

.method public d(Lo/Aw;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 2

    .line 204
    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v0

    .line 205
    iput-object p1, p0, Lo/KX;->l:Lo/Aw;

    const/4 v1, 0x0

    .line 206
    iput-object v1, p0, Lo/KX;->q:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 207
    iput-object v1, p0, Lo/KX;->x:Lo/AK;

    .line 209
    invoke-static {p0, p1, p2, p3}, Lo/KX$Activity;->b(Lo/Lm;Lo/Aw;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Lo/KX$Activity;

    move-result-object p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return v1

    .line 212
    :cond_0
    invoke-super {p0, p3, p4}, Lo/Lm;->a(Lo/Lp;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Z

    move-result p3

    if-nez p3, :cond_1

    return v1

    .line 222
    :cond_1
    iget-object p3, p0, Lo/KX;->l:Lo/Aw;

    invoke-direct {p0, p3}, Lo/KX;->a(Lo/Aw;)Z

    move-result p3

    .line 224
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 226
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getSupplementalMessage()Ljava/lang/String;

    move-result-object p2

    .line 228
    :cond_2
    iget-object p4, p0, Lo/KX;->m:Lo/ImageSwitcher;

    invoke-virtual {p4, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_3

    .line 231
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getPhase()Lcom/netflix/model/leafs/originals/BillboardPhase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/BillboardPhase;->actions()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getActions()Ljava/util/List;

    move-result-object p2

    .line 232
    :goto_0
    invoke-direct {p0, p1, p5, p2}, Lo/KX;->b(Lo/Aw;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V

    .line 238
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getMaturityRating()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x8

    if-eqz p2, :cond_4

    .line 239
    iget-object p2, p0, Lo/KX;->k:Lo/ImageSwitcher;

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getMaturityRating()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p2, p0, Lo/KX;->k:Lo/ImageSwitcher;

    invoke-virtual {p2, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_1

    .line 242
    :cond_4
    iget-object p2, p0, Lo/KX;->k:Lo/ImageSwitcher;

    invoke-virtual {p2, p3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 245
    :goto_1
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 246
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 247
    iget-object p2, p0, Lo/KX;->o:Lo/GridView;

    invoke-virtual {p2, v1}, Lo/GridView;->setVisibility(I)V

    .line 248
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/KX;->a(Lcom/netflix/model/leafs/originals/BillboardAsset;)V

    .line 249
    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 251
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const-string p3, "image url is empty, BigRowView.update"

    invoke-interface {p2, p3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :cond_5
    iget-object p3, p0, Lo/KX;->o:Lo/GridView;

    new-instance p4, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 254
    invoke-virtual {p4, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    sget-object p4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p2, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    .line 253
    invoke-virtual {p3, p2}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 256
    :goto_2
    iget-object p2, p0, Lo/KX;->o:Lo/GridView;

    invoke-interface {p1}, Lo/Aw;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 258
    :cond_6
    iget-object p1, p0, Lo/KX;->o:Lo/GridView;

    invoke-virtual {p1, p3}, Lo/GridView;->setVisibility(I)V

    .line 266
    :goto_3
    iget-object p1, p0, Lo/KX;->l:Lo/Aw;

    invoke-interface {p1}, Lo/Aw;->isPreRelease()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 267
    iget-object p1, p0, Lo/KX;->l:Lo/Aw;

    invoke-interface {p1}, Lo/Aw;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/KX;->c(Lcom/netflix/model/leafs/originals/BigRowSummary;)V

    .line 270
    :cond_7
    iget-object p1, p0, Lo/KX;->s:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBillboardTheme()Ljava/lang/String;

    move-result-object p2

    const-string p3, "billboardTheme"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object p1, p0, Lo/KX;->s:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBillboardType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "billboardType"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 261
    :cond_8
    iget-object p1, p0, Lo/KX;->o:Lo/GridView;

    invoke-virtual {p1, p3}, Lo/GridView;->setVisibility(I)V

    const-string p1, "no background."

    .line 262
    invoke-virtual {p0, p1}, Lo/KX;->e(Ljava/lang/String;)V

    return v1
.end method

.method protected e()V
    .locals 2

    .line 496
    invoke-super {p0}, Lo/Lm;->e()V

    .line 497
    iget-object v0, p0, Lo/KX;->o:Lo/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setAlpha(F)V

    return-void
.end method

.method protected e(Z)V
    .locals 2

    .line 477
    iget-object v0, p0, Lo/KX;->g:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 478
    invoke-super {p0, p1}, Lo/Lm;->e(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 134
    invoke-super {p0}, Lo/Lm;->onFinishInflate()V

    .line 135
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->B:I

    invoke-virtual {p0, v0}, Lo/KX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lo/KX;->g:Landroid/widget/ToggleButton;

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lo/KX;->p:Z

    .line 137
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->P:I

    invoke-virtual {p0, v0}, Lo/KX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/KX;->m:Lo/ImageSwitcher;

    .line 138
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->U:I

    invoke-virtual {p0, v0}, Lo/KX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    iput-object v0, p0, Lo/KX;->j:Lo/HorizontalScrollView;

    .line 139
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->Q:I

    invoke-virtual {p0, v0}, Lo/KX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    iput-object v0, p0, Lo/KX;->o:Lo/GridView;

    .line 140
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->O:I

    invoke-virtual {p0, v0}, Lo/KX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/KX;->k:Lo/ImageSwitcher;

    .line 141
    iget-object v0, p0, Lo/KX;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lo/KX;->setVideoViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lo/KX;->g:Landroid/widget/ToggleButton;

    new-instance v1, Lo/La;

    invoke-direct {v1, p0}, Lo/La;-><init>(Lo/KX;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lo/KX;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lo/KX;->setBackgroundImageClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lo/KX;->j:Lo/HorizontalScrollView;

    new-instance v1, Lo/Le;

    invoke-direct {v1, p0}, Lo/Le;-><init>(Lo/KX;)V

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->S:I

    invoke-virtual {p0, v0}, Lo/KX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ListView;

    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lo/Oc;

    .line 188
    invoke-virtual {p0}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2, v3}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v3, Lo/Oh;

    invoke-direct {v3, v0}, Lo/Oh;-><init>(Landroid/widget/CompoundButton;)V

    iget-object v0, p0, Lo/KX;->e:Lo/UpdateEngine;

    .line 190
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    iput-object v1, p0, Lo/KX;->n:Lo/Oc;

    :cond_0
    return-void
.end method
