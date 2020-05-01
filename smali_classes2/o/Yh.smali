.class public final Lo/Yh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yh$Application;,
        Lo/Yh$StateListAnimator;
    }
.end annotation


# static fields
.field private static final a:[I

.field public static final b:Z = false

.field private static final c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Yd;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lo/Yh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/Yh;

    invoke-direct {v0}, Lo/Yh;-><init>()V

    sput-object v0, Lo/Yh;->d:Lo/Yh;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 50
    sput-object v0, Lo/Yh;->a:[I

    .line 52
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Presentable>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/Yh;->c:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
    .locals 1

    .line 59
    sget-object v0, Lo/Yh$StateListAnimator;->e:Lo/Yh$StateListAnimator;

    invoke-virtual {v0}, Lo/Yh$StateListAnimator;->d()Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/cl/model/AppView;)V
    .locals 2

    const-string v0, "trackingInfoHolder"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    return-void
.end method

.method public static final synthetic a(Lo/Yh;)[I
    .locals 0

    .line 36
    sget-object p0, Lo/Yh;->a:[I

    return-object p0
.end method

.method public static final b(Lo/Yd;)V
    .locals 3

    const-string v0, "presentable"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lo/Yd;->a()Lo/Av;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lo/Yd;->e()Lo/Bv;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lo/Yd;->c()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 189
    new-instance v2, Lo/Yh$Activity;

    invoke-direct {v2, v1, v0, p0, v0}, Lo/Yh$Activity;-><init>(ILjava/lang/Object;Lo/Yd;Lo/Av;)V

    .line 236
    move-object v0, v2

    check-cast v0, Lo/Yh$Application;

    invoke-virtual {p0, v0}, Lo/Yd;->d(Lo/Yh$Application;)V

    .line 237
    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {v2, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lo/Yh;Landroid/content/Context;Lo/Yd;Lo/Av;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p7}, Lo/Yh;->c(Landroid/content/Context;Lo/Yd;Lo/Av;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V

    return-void
.end method

.method private final c(Landroid/content/Context;Lo/Yd;Lo/Av;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 83
    sget-object v2, Lo/amj;->c:Lo/amj;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Locale.US"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lo/Yd;->b()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface/range {p3 .. p3}, Lo/Av;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s-%s-%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(locale, format, *args)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v3, :cond_10

    .line 85
    move-object v4, v3

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 86
    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v3

    const-string v4, "activity.serviceManager"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Lo/Am;->c()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 88
    invoke-virtual/range {p2 .. p2}, Lo/Yd;->e()Lo/Bv;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 90
    invoke-virtual/range {p2 .. p2}, Lo/Yd;->b()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 91
    invoke-interface/range {p3 .. p3}, Lo/Av;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->isPresentationTrackingType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    .line 92
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 93
    instance-of v5, v6, Lo/Au;

    const/16 v7, 0x29

    const-string v8, "] "

    const-string v9, "Tracking ["

    const-string v10, "VideoPresentationTracking"

    if-eqz v5, :cond_a

    .line 94
    move-object v11, v6

    check-cast v11, Lo/Au;

    invoke-interface {v11}, Lo/Au;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v12

    if-nez v12, :cond_0

    goto/16 :goto_7

    :cond_0
    sget-object v13, Lo/Yg;->b:[I

    invoke-virtual {v12}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v12

    aget v12, v13, v12

    const-string v13, "Class cast failed for "

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_7

    .line 122
    :pswitch_0
    sget-object v4, Lo/Yh;->d:Lo/Yh;

    .line 335
    instance-of v4, v1, Lo/agg;

    if-eqz v4, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 338
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, Lo/agg;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    move-object v4, v3

    .line 335
    :goto_0
    check-cast v4, Lo/agg;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lo/agg;->bq()Lcom/netflix/model/leafs/VideoInfo$TopTenBoxart;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/netflix/model/leafs/VideoInfo$TopTenBoxart;->getBoxartId()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_2
    move-object v4, v3

    goto/16 :goto_8

    .line 119
    :pswitch_1
    sget-object v4, Lo/Yh;->d:Lo/Yh;

    .line 330
    instance-of v4, v1, Lo/AM;

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_1

    .line 333
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, Lo/AM;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    move-object v4, v3

    .line 330
    :goto_1
    check-cast v4, Lo/AM;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lo/AM;->getBoxartId()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 116
    :pswitch_2
    sget-object v4, Lo/Yh;->d:Lo/Yh;

    .line 325
    instance-of v4, v1, Lo/agg;

    if-eqz v4, :cond_4

    move-object v4, v1

    goto :goto_2

    .line 328
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, Lo/agg;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    move-object v4, v3

    .line 325
    :goto_2
    check-cast v4, Lo/agg;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lo/agg;->i()Lcom/netflix/model/leafs/originals/BigRowSummary;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/netflix/model/leafs/originals/BigRowSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getImageKey()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 108
    :pswitch_3
    invoke-static {}, Lo/ia;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v6

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->isRichUITreatment()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    sget-object v4, Lo/Yh;->d:Lo/Yh;

    .line 315
    instance-of v4, v1, Lo/agg;

    if-eqz v4, :cond_5

    move-object v4, v1

    goto :goto_3

    .line 318
    :cond_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, Lo/agg;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    move-object v4, v3

    .line 315
    :goto_3
    check-cast v4, Lo/agg;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lo/agg;->bs()Lcom/netflix/model/leafs/VideoInfo$TallPanelArt;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/netflix/model/leafs/VideoInfo$TallPanelArt;->getImageTypeIdentifier()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 112
    :cond_6
    sget-object v4, Lo/Yh;->d:Lo/Yh;

    .line 320
    instance-of v4, v1, Lo/AR;

    if-eqz v4, :cond_7

    move-object v4, v1

    goto :goto_4

    .line 323
    :cond_7
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, Lo/AR;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    move-object v4, v3

    .line 320
    :goto_4
    check-cast v4, Lo/AR;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lo/AR;->getBoxartId()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 105
    :pswitch_4
    sget-object v4, Lo/Yh;->d:Lo/Yh;

    .line 310
    instance-of v4, v1, Lo/agg;

    if-eqz v4, :cond_8

    move-object v4, v1

    goto :goto_5

    .line 313
    :cond_8
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, Lo/agg;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    move-object v4, v3

    .line 310
    :goto_5
    check-cast v4, Lo/agg;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lo/agg;->h()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardAsset;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/netflix/model/leafs/originals/BillboardAsset;->getImageKey()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 102
    :pswitch_5
    sget-object v4, Lo/Yh;->d:Lo/Yh;

    .line 305
    instance-of v4, v1, Lo/AR;

    if-eqz v4, :cond_9

    move-object v4, v1

    goto :goto_6

    .line 308
    :cond_9
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v13, Lo/AR;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    move-object v4, v3

    .line 305
    :goto_6
    check-cast v4, Lo/AR;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lo/AR;->getBoxartId()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 125
    :goto_7
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Presentation tracking, no videoImageTypeIdentifierId, listType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lo/Au;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 129
    :goto_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lo/Av;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lo/Au;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 132
    :cond_a
    instance-of v11, v1, Lo/agg;

    if-eqz v11, :cond_b

    .line 133
    move-object v2, v1

    check-cast v2, Lo/agg;

    invoke-interface {v2}, Lo/agg;->getBoxartId()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 135
    :cond_b
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v11

    const-string v12, "Presentation tracking, no videoImageTypeIdentifierId"

    invoke-interface {v11, v12}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lo/Av;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ("

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    move-object/from16 v2, p4

    .line 140
    invoke-virtual {v0, v2}, Lo/Yd;->a(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 143
    invoke-virtual/range {p2 .. p2}, Lo/Yd;->f()Z

    move-result v1

    move-object/from16 v12, p7

    .line 142
    invoke-static {v1, v12, v7, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    goto :goto_d

    :cond_c
    move-object/from16 v12, p7

    .line 149
    invoke-interface/range {p3 .. p3}, Lo/Av;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v4, :cond_d

    .line 150
    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_a

    :cond_d
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    :goto_a
    move-object v8, v1

    if-nez v5, :cond_e

    move-object v1, v3

    goto :goto_b

    :cond_e
    move-object v1, v6

    .line 153
    :goto_b
    check-cast v1, Lo/Au;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lo/Au;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_c

    :cond_f
    move-object v5, v3

    .line 156
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lo/Yd;->f()Z

    move-result v4

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    .line 155
    invoke-static/range {v4 .. v12}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(ZLjava/lang/String;Lo/Bv;Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;Lcom/netflix/cl/model/context/CLContext;ILcom/netflix/cl/model/AppView;)V

    .line 167
    :goto_d
    sget-object v1, Lo/Yh;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lo/Yd;)V
    .locals 1

    const-string v0, "presentable"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lo/Yd;->l()V

    return-void
.end method
