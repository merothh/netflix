.class public final Lo/Vk;
.super Lo/Vd;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Vk$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/Vk$Application;


# instance fields
.field private b:F

.field private g:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Lo/ImageSwitcher;

.field private final k:Lo/UY;

.field private l:Landroid/widget/FrameLayout;

.field private m:Lo/MenuInflater;

.field private n:Lo/HorizontalScrollView;

.field private o:Landroid/view/animation/ScaleAnimation;

.field private final p:Lo/UY;

.field private final q:Lo/UY;

.field private s:Landroid/media/MediaPlayer;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Vk$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Vk$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Vk;->e:Lo/Vk$Application;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Vk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Vk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lo/Vd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 64
    iput p1, p0, Lo/Vk;->b:F

    .line 75
    new-instance p1, Lo/UY;

    invoke-direct {p1}, Lo/UY;-><init>()V

    iput-object p1, p0, Lo/Vk;->k:Lo/UY;

    .line 77
    new-instance p1, Lo/UY;

    invoke-direct {p1}, Lo/UY;-><init>()V

    iput-object p1, p0, Lo/Vk;->p:Lo/UY;

    .line 79
    new-instance p1, Lo/UY;

    invoke-direct {p1}, Lo/UY;-><init>()V

    iput-object p1, p0, Lo/Vk;->q:Lo/UY;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 58
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 59
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Vk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;
    .locals 0

    if-eqz p1, :cond_0

    .line 1121
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;->show()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lo/Vk;->e(Ljava/util/Map;F)Landroid/view/animation/AnimationSet;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lo/Vk;->d(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/Vk;)Landroid/widget/FrameLayout;
    .locals 1

    .line 56
    iget-object p0, p0, Lo/Vk;->g:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const-string v0, "choicePointLayout"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final a()V
    .locals 5

    .line 637
    invoke-virtual {p0}, Lo/Vk;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 638
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->audio()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList;->choice_selected()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 639
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;->assetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getAudio(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Audio;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 641
    :goto_0
    invoke-virtual {p0}, Lo/Vk;->y()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v3

    .line 643
    :cond_1
    new-instance v4, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;

    invoke-direct {v4, v1, p0, v0}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupAudio$$inlined$let$lambda$1;-><init>(Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$AudioList$Audio;Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V

    check-cast v4, Lo/alN;

    .line 640
    invoke-static {v3, v2, v4}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_2
    return-void

    .line 637
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.CommonMetaData.Layout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(Lcom/netflix/model/leafs/originals/interactive/Choice;ZI)V
    .locals 11

    .line 699
    iget-boolean v0, p0, Lo/Vk;->t:Z

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lo/Vk;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 703
    :cond_0
    new-instance v0, Lo/Vk$ActionBar;

    invoke-direct {v0, p0, p3, p1}, Lo/Vk$ActionBar;-><init>(Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/Choice;)V

    .line 765
    iget-object p1, p0, Lo/Vk;->g:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    const-string v1, "choicePointLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 766
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v5, 0x1

    .line 767
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 768
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 769
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 770
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 771
    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 773
    invoke-virtual {p0}, Lo/Vk;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.CommonMetaData.Layout"

    if-eqz v8, :cond_a

    check-cast v8, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    invoke-virtual {v8}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->choices()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lo/Vk;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v10

    if-eqz v10, :cond_9

    check-cast v10, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    invoke-virtual {v10}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->choices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 775
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->animation()Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v8

    :goto_1
    iget v10, p0, Lo/Vk;->b:F

    invoke-direct {p0, v9, v10}, Lo/Vk;->d(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 776
    check-cast v9, Landroid/view/animation/Animation;

    invoke-virtual {v4, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 777
    invoke-virtual {v7, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    if-eqz v5, :cond_4

    .line 780
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->animation()Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    move-result-object v8

    :cond_4
    iget v5, p0, Lo/Vk;->b:F

    invoke-direct {p0, v8, v5}, Lo/Vk;->e(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 781
    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 782
    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    if-ne v2, p3, :cond_7

    if-eqz p2, :cond_6

    .line 787
    move-object v5, v0

    check-cast v5, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 788
    iget-object v5, p0, Lo/Vk;->p:Lo/UY;

    invoke-virtual {v5, v3, v6}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    .line 789
    iget-object v5, p0, Lo/Vk;->q:Lo/UY;

    invoke-virtual {v5, v3, v4}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    goto :goto_2

    .line 791
    :cond_6
    move-object v4, v0

    check-cast v4, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v7, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 792
    iget-object v4, p0, Lo/Vk;->q:Lo/UY;

    invoke-virtual {v4, v3, v7}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 796
    iget-object v5, p0, Lo/Vk;->p:Lo/UY;

    invoke-virtual {v5, v3, v4}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    goto :goto_2

    .line 798
    :cond_8
    iget-object v5, p0, Lo/Vk;->q:Lo/UY;

    invoke-virtual {v5, v3, v4}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 773
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 804
    iget-object p1, p0, Lo/Vk;->p:Lo/UY;

    invoke-virtual {p1}, Lo/UY;->d()V

    goto :goto_3

    .line 806
    :cond_c
    iget-object p1, p0, Lo/Vk;->q:Lo/UY;

    invoke-virtual {p1}, Lo/UY;->d()V

    :goto_3
    return-void
.end method

.method public static final synthetic b(Lo/Vk;)Landroid/media/MediaPlayer;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/Vk;->s:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private final b(Lcom/netflix/model/leafs/originals/interactive/Moment;Lo/Xt;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 9

    const/4 p4, 0x0

    .line 1017
    move-object v0, p4

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Lo/Vk;->e(Landroid/animation/Animator;)V

    .line 1018
    move-object v0, p4

    check-cast v0, Landroid/view/animation/ScaleAnimation;

    iput-object v0, p0, Lo/Vk;->o:Landroid/view/animation/ScaleAnimation;

    .line 1019
    sget-object v0, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v0, Lo/MessagePdu;

    .line 1020
    invoke-virtual {p0}, Lo/Vk;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lo/Vk;->n()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1022
    invoke-direct {p0}, Lo/Vk;->c()V

    goto/16 :goto_4

    .line 1025
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->timeoutSegment()Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment$TimeoutSegment;->getTimeoutSegmentId()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, p4

    :goto_0
    const/4 v0, -0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_8

    .line 1029
    instance-of p3, p5, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    if-eqz p3, :cond_3

    .line 1030
    check-cast p5, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;

    invoke-interface {p5}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 1031
    sget-object v1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v1, Lo/MessagePdu;

    .line 1033
    invoke-interface {p5}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/IPlaylistControl;->m()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 1032
    invoke-virtual {p5, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;->e(Ljava/lang/String;)Lo/Bj;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p3, Lo/Bj;->b:[Lo/Bo;

    if-eqz p3, :cond_3

    .line 1181
    array-length p5, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, p5, :cond_4

    aget-object v3, p3, v1

    .line 1034
    sget-object v4, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v4, Lo/MessagePdu;

    .line 1035
    iget-object v3, v3, Lo/Bo;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1036
    sget-object v2, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v2, Lo/MessagePdu;

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    if-eqz v2, :cond_6

    .line 1043
    sget-object p3, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p3, Lo/MessagePdu;

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v3, p1

    move-object v4, v5

    .line 1044
    invoke-interface/range {v1 .. v7}, Lo/Xt;->d(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;)V

    :cond_5
    const/4 p3, -0x1

    goto :goto_2

    .line 1054
    :cond_6
    sget-object p3, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p3, Lo/MessagePdu;

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v3, p1

    move-object v4, v5

    .line 1055
    invoke-interface/range {v1 .. v7}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    :cond_7
    return-void

    .line 1066
    :cond_8
    iget-object p1, p0, Lo/Vk;->g:Landroid/widget/FrameLayout;

    if-nez p1, :cond_9

    const-string p2, "choicePointLayout"

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1067
    instance-of p2, p1, Lo/Vn;

    if-eqz p2, :cond_a

    .line 1069
    check-cast p1, Lo/Vn;

    invoke-virtual {p1}, Lo/Vn;->a()Landroid/widget/FrameLayout;

    move-result-object p2

    const/16 p5, 0x8

    invoke-virtual {p2, p5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1071
    invoke-virtual {p1}, Lo/Vn;->a()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    :goto_2
    if-ne p3, v0, :cond_b

    goto :goto_3

    .line 1075
    :cond_b
    invoke-virtual {p0}, Lo/Vk;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p4, p1

    check-cast p4, Lcom/netflix/model/leafs/originals/interactive/Choice;

    .line 1077
    :goto_3
    invoke-direct {p0, p4, v8, p3}, Lo/Vk;->a(Lcom/netflix/model/leafs/originals/interactive/Choice;ZI)V

    :cond_c
    :goto_4
    return-void
.end method

.method public static final synthetic b(Lo/Vk;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/Vk;->s:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic c(Lo/Vk;)Landroid/view/animation/ScaleAnimation;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/Vk;->o:Landroid/view/animation/ScaleAnimation;

    return-object p0
.end method

.method private final c()V
    .locals 1

    .line 1087
    iget-object v0, p0, Lo/Vk;->q:Lo/UY;

    invoke-virtual {v0}, Lo/UY;->d()V

    return-void
.end method

.method public static final synthetic c(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/Choice;ZI)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lo/Vk;->a(Lcom/netflix/model/leafs/originals/interactive/Choice;ZI)V

    return-void
.end method

.method public static final synthetic c(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/Moment;Lo/Xt;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p5}, Lo/Vk;->b(Lcom/netflix/model/leafs/originals/interactive/Moment;Lo/Xt;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    return-void
.end method

.method private final d(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;
    .locals 0

    if-eqz p1, :cond_0

    .line 1125
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;->hide()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lo/Vk;->e(Ljava/util/Map;F)Landroid/view/animation/AnimationSet;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic d(Lo/Vk;)Landroid/widget/FrameLayout;
    .locals 1

    .line 56
    iget-object p0, p0, Lo/Vk;->l:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const-string v0, "interactiveNotification"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p0, v0}, Lo/Vk;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lo/Vk;->k:Lo/UY;

    invoke-virtual {v0}, Lo/UY;->d()V

    return-void
.end method

.method private final d(FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v4, p1

    move-object/from16 v3, p2

    .line 164
    invoke-static {}, Lo/afw;->b()Z

    move-result v0

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->startButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->endButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->startButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/Button;->label()Lcom/netflix/model/leafs/originals/interactive/Button$Label;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 168
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->endButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->startButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v7

    if-eqz v7, :cond_3

    :goto_2
    invoke-virtual {v7}, Lcom/netflix/model/leafs/originals/interactive/Button;->action()Lcom/netflix/model/leafs/originals/interactive/Action;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v2

    .line 169
    :goto_3
    new-instance v8, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;

    invoke-direct {v8, v6, v3, v4}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;-><init>(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V

    check-cast v8, Lo/alO;

    .line 165
    invoke-static {v1, v5, v7, v8}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    .line 228
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->endButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 229
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->startButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->endButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v5

    if-eqz v5, :cond_5

    :goto_4
    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/Button;->label()Lcom/netflix/model/leafs/originals/interactive/Button$Label;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, v2

    :goto_5
    if-eqz v0, :cond_6

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->startButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->endButton()Lcom/netflix/model/leafs/originals/interactive/Button;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Button;->action()Lcom/netflix/model/leafs/originals/interactive/Action;

    move-result-object v0

    goto :goto_7

    :cond_7
    move-object v0, v2

    .line 231
    :goto_7
    new-instance v7, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;

    invoke-direct {v7, v6, v3, v4}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;-><init>(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V

    check-cast v7, Lo/alO;

    .line 227
    invoke-static {v1, v5, v0, v7}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    .line 293
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->ftueText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 295
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->interactiveNotification()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$InteractiveNotification;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 297
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$InteractiveNotification;->background()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v1

    const-string v15, "context"

    const-string v16, "interactiveNotification"

    if-eqz v1, :cond_a

    .line 298
    new-instance v13, Lo/GridView;

    invoke-virtual/range {p0 .. p0}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 299
    move-object v7, v2

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v7}, Lo/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v7, v6, Lo/Vk;->l:Landroid/widget/FrameLayout;

    if-nez v7, :cond_8

    invoke-static/range {v16 .. v16}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    move-object v8, v13

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 301
    sget-object v7, Lo/XJ;->c:Lo/XJ;

    .line 302
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v8

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v2

    :cond_9
    move-object v10, v2

    .line 305
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v11

    const/4 v1, 0x0

    const/16 v14, 0x20

    const/4 v2, 0x0

    move-object v9, v13

    move/from16 v12, p1

    move-object v13, v1

    move-object v1, v15

    move-object v15, v2

    .line 301
    invoke-static/range {v7 .. v15}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    goto :goto_8

    :cond_a
    move-object v1, v15

    .line 310
    :goto_8
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$InteractiveNotification;->label()Lcom/netflix/model/leafs/originals/interactive/Label;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 311
    new-instance v13, Lo/ImageSwitcher;

    invoke-virtual/range {p0 .. p0}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 312
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Label;->numberOfLines()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_9

    :cond_b
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v13, v1}, Lo/ImageSwitcher;->setMaxLines(I)V

    .line 313
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Label;->fontSize()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_a

    :cond_c
    invoke-virtual {v13}, Lo/ImageSwitcher;->getTextSize()F

    move-result v1

    :goto_a
    invoke-virtual {v13, v1}, Lo/ImageSwitcher;->setTextSize(F)V

    .line 314
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Label;->color()Lcom/netflix/model/leafs/originals/interactive/Color;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Color;->colorWithRGB()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 315
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lo/ImageSwitcher;->setTextColor(I)V

    .line 318
    :cond_d
    move-object v1, v5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v13, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 319
    invoke-virtual {v13, v1}, Lo/ImageSwitcher;->setGravity(I)V

    .line 320
    iget-object v1, v6, Lo/Vk;->l:Landroid/widget/FrameLayout;

    if-nez v1, :cond_e

    invoke-static/range {v16 .. v16}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_e
    move-object v8, v13

    check-cast v8, Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 321
    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Label;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 323
    sget-object v7, Lo/XJ;->c:Lo/XJ;

    .line 325
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->width()Ljava/lang/Integer;

    move-result-object v2

    const-string v9, "rect.width()"

    invoke-static {v2, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 326
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->height()Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "rect.height()"

    invoke-static {v2, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 327
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->x()Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "rect.x()"

    invoke-static {v2, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 328
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->y()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rect.y()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v13, p1

    .line 323
    invoke-virtual/range {v7 .. v13}, Lo/XJ;->e(Landroid/view/View;IIIIF)V

    .line 335
    :cond_f
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$InteractiveNotification;->animation()Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 337
    iget-object v0, v6, Lo/Vk;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_10

    invoke-static/range {v16 .. v16}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 338
    invoke-direct {v6, v1, v4}, Lo/Vk;->a(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 340
    new-instance v8, Lo/Vk$Fragment;

    move-object v0, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lo/Vk$Fragment;-><init>(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;FLjava/lang/String;)V

    check-cast v8, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 356
    iget-object v0, v6, Lo/Vk;->k:Lo/UY;

    iget-object v1, v6, Lo/Vk;->l:Landroid/widget/FrameLayout;

    if-nez v1, :cond_11

    invoke-static/range {v16 .. v16}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_11
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, v7}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    :cond_12
    return-void
.end method

.method private final e(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;
    .locals 0

    if-eqz p1, :cond_0

    .line 1129
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;->hideSelected()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lo/Vk;->e(Ljava/util/Map;F)Landroid/view/animation/AnimationSet;

    move-result-object p1

    return-object p1
.end method

.method private final e(Ljava/util/Map;F)Landroid/view/animation/AnimationSet;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;>;F)",
            "Landroid/view/animation/AnimationSet;"
        }
    .end annotation

    .line 1133
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz p1, :cond_3

    .line 1203
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    .line 1137
    check-cast v3, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;

    .line 1138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1204
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v15, v5

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;

    .line 1139
    sget-object v7, Lo/Vi;->b:Lo/Vi;

    const/4 v8, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    const-wide/16 v12, 0x0

    move-object/from16 v9, v17

    move/from16 v11, p2

    move-object v14, v3

    invoke-virtual/range {v7 .. v14}, Lo/Vi;->a(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;Ljava/lang/String;FJLcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;)Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1140
    invoke-virtual {v7}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v8

    add-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1141
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1142
    invoke-virtual {v7}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v3, v5, v15

    if-lez v3, :cond_2

    move-wide v15, v5

    :cond_2
    move-object/from16 v3, v17

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 1151
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v0
.end method

.method public static final synthetic e(Lo/Vk;)Lo/MenuInflater;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/Vk;->m:Lo/MenuInflater;

    return-object p0
.end method

.method private final e(FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V
    .locals 4

    .line 368
    iget-object v0, p0, Lo/Vk;->j:Lo/ImageSwitcher;

    const-string v1, "headerLabel"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 369
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->headerLabel()Lcom/netflix/model/leafs/originals/interactive/Label;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 370
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->headerLabel()Lcom/netflix/model/leafs/originals/interactive/Label;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Label;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 371
    :goto_0
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->headerLabel()Lcom/netflix/model/leafs/originals/interactive/Label;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Label;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_9

    .line 372
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 373
    iget-object v3, p0, Lo/Vk;->j:Lo/ImageSwitcher;

    if-nez v3, :cond_3

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->headerLabel()Lcom/netflix/model/leafs/originals/interactive/Label;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Label;->color()Lcom/netflix/model/leafs/originals/interactive/Color;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Color;->colorWithRGB()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 375
    iget-object v0, p0, Lo/Vk;->j:Lo/ImageSwitcher;

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lo/ImageSwitcher;->setTextColor(I)V

    .line 377
    :cond_5
    sget-object p2, Lo/XJ;->c:Lo/XJ;

    iget-object v0, p0, Lo/Vk;->j:Lo/ImageSwitcher;

    if-nez v0, :cond_6

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0, v2, p1}, Lo/XJ;->b(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/SourceRect;F)V

    .line 378
    iget-object p1, p0, Lo/Vk;->j:Lo/ImageSwitcher;

    if-nez p1, :cond_7

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_7
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 380
    iget-object p1, p0, Lo/Vk;->j:Lo/ImageSwitcher;

    if-nez p1, :cond_8

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x1

    .line 379
    invoke-static {p1, p2}, Lo/PipedInputStream;->c(Landroid/widget/TextView;I)V

    :cond_9
    return-void
.end method

.method public static final synthetic e(Lo/Vk;Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lo/Vk;->t:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xz;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;",
            "Lo/ErrorCodes;",
            "Lo/Xz;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "Lcom/netflix/model/leafs/originals/interactive/BaseLayout;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "imageLoaderRepository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseLayout"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-super/range {p0 .. p7}, Lo/Vd;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/ErrorCodes;Lo/Xz;Lcom/netflix/model/leafs/originals/interactive/Moment;Lcom/netflix/model/leafs/originals/interactive/BaseLayout;Ljava/util/List;I)V

    .line 115
    sget-object p2, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p2, Lo/MessagePdu;

    .line 117
    check-cast p5, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 118
    invoke-virtual {p0}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/adq;->h(Landroid/content/Context;)I

    move-result p2

    .line 119
    invoke-virtual {p0}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p3

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getHeight()I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ac()Lo/Ya;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    const/4 p6, 0x0

    if-le p1, p4, :cond_2

    move p1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr p2, p1

    .line 130
    div-int/lit8 p6, p2, 0x2

    :goto_2
    int-to-float p2, p1

    .line 135
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p4

    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/Size;->height()Ljava/lang/Integer;

    move-result-object p4

    const-string p7, "layout.canvasSize().height()"

    invoke-static {p4, p7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    iput p2, p0, Lo/Vk;->b:F

    .line 137
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Size;->width()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    iget p4, p0, Lo/Vk;->b:F

    mul-float p2, p2, p4

    float-to-int p2, p2

    if-le p2, p3, :cond_3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, p4

    float-to-int p2, p2

    sub-int/2addr p1, p2

    int-to-float p2, p1

    .line 140
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/Size;->height()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, p7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p0, Lo/Vk;->b:F

    .line 141
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->canvasSize()Lcom/netflix/model/leafs/originals/interactive/Size;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/Size;->width()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lo/Vk;->b:F

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 144
    :cond_3
    invoke-virtual {p5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->subTitleY()Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    iget p7, p0, Lo/Vk;->b:F

    float-to-double v0, p7

    mul-double p3, p3, v0

    int-to-double v0, p6

    add-double/2addr p3, v0

    double-to-float p3, p3

    invoke-virtual {p0, p3}, Lo/Vk;->setSubtitleY(F)V

    .line 145
    invoke-virtual {p0}, Lo/Vk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_4

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 147
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 148
    iput p6, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 149
    iput p6, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 150
    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p3}, Lo/Vk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget p1, p0, Lo/Vk;->b:F

    invoke-virtual {p0, p1}, Lo/Vk;->e(F)V

    .line 153
    iget p1, p0, Lo/Vk;->b:F

    invoke-virtual {p0, p1}, Lo/Vk;->b(F)V

    .line 154
    invoke-direct {p0}, Lo/Vk;->a()V

    .line 155
    iget p1, p0, Lo/Vk;->b:F

    invoke-direct {p0, p1, p5}, Lo/Vk;->e(FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V

    .line 156
    iget p1, p0, Lo/Vk;->b:F

    invoke-direct {p0, p1, p5}, Lo/Vk;->d(FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V

    .line 157
    invoke-direct {p0}, Lo/Vk;->d()V

    return-void

    .line 145
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(F)V
    .locals 32

    move-object/from16 v8, p0

    .line 391
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v0

    if-eqz v0, :cond_22

    move-object v9, v0

    check-cast v9, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 392
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->l()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_21

    .line 393
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/netflix/model/leafs/originals/interactive/Choice;

    if-eqz v13, :cond_20

    .line 394
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->choices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_1e

    .line 395
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->choices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

    if-eqz v14, :cond_1e

    .line 396
    sget-object v0, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v0, Lo/MessagePdu;

    .line 397
    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->optionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "credits"

    invoke-static {v1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 399
    iget-object v0, v8, Lo/Vk;->n:Lo/HorizontalScrollView;

    const-string v16, "skipCreditsTextView"

    if-nez v0, :cond_0

    invoke-static/range {v16 .. v16}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v11}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 400
    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 402
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->label()Lcom/netflix/model/leafs/originals/interactive/Label;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Label;->string()Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v0, v6

    .line 404
    :cond_2
    iget-object v1, v8, Lo/Vk;->n:Lo/HorizontalScrollView;

    if-nez v1, :cond_3

    invoke-static/range {v16 .. v16}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v6, v8, Lo/Vk;->n:Lo/HorizontalScrollView;

    if-nez v6, :cond_4

    invoke-static/range {v16 .. v16}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    new-instance v14, Lo/Vk$StateListAnimator;

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, p0

    move v3, v12

    move-object v4, v9

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lo/Vk$StateListAnimator;-><init>(Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V

    check-cast v14, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1c2

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 423
    iget-object v1, v8, Lo/Vk;->n:Lo/HorizontalScrollView;

    if-nez v1, :cond_5

    invoke-static/range {v16 .. v16}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Lo/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v0, Lo/akj;->a:Lo/akj;

    goto/16 :goto_11

    .line 427
    :cond_6
    iget-object v0, v8, Lo/Vk;->g:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    const-string v1, "choicePointLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_7
    check-cast v0, Landroid/view/ViewGroup;

    .line 428
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->bY:I

    const/4 v2, 0x2

    .line 427
    invoke-static {v0, v1, v11, v2, v6}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    move-object v5, v0

    check-cast v5, Lo/Vn;

    .line 431
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v5, v0}, Lo/Vn;->setId(I)V

    .line 432
    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lo/Vn;->setTag(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Lo/Vn;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->choicePosition()Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;->x()Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_8
    move-object v4, v6

    .line 437
    :goto_1
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->choicePosition()Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;->y()Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_9
    move-object v3, v6

    .line 439
    :goto_2
    new-instance v16, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v13

    move-object v7, v3

    move-object/from16 v3, p0

    move-object v15, v4

    move v4, v12

    move-object/from16 v18, v5

    move-object v5, v9

    move-object/from16 v19, v6

    move/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupChoices$$inlined$let$lambda$2;-><init>(Lo/Vn;Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V

    move-object/from16 v0, v16

    check-cast v0, Lo/alN;

    .line 435
    invoke-static {v15, v7, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 451
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->hitAreaRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v0

    const-string v15, "rect.height()"

    const-string v7, "rect.width()"

    const-string v6, "rect.y()"

    const-string v5, "rect.x()"

    if-eqz v0, :cond_d

    .line 452
    sget-object v20, Lo/XJ;->c:Lo/XJ;

    .line 453
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->e()Landroid/view/View;

    move-result-object v21

    .line 454
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->width()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 455
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->height()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 456
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->x()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 457
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v26, p1

    .line 452
    invoke-virtual/range {v20 .. v26}, Lo/XJ;->e(Landroid/view/View;IIIIF)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->w()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 462
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->b()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 463
    sget-object v20, Lo/XJ;->c:Lo/XJ;

    .line 464
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->b()Lo/ImageSwitcher;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/view/View;

    const/16 v22, -0x2

    const/16 v23, -0x2

    .line 467
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->x()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 468
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->y()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v26, p1

    .line 463
    invoke-virtual/range {v20 .. v26}, Lo/XJ;->e(Landroid/view/View;IIIIF)V

    .line 473
    :cond_a
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->i()Lo/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 474
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->background()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout$Background;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout$Background;->selected()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 475
    sget-object v20, Lo/XJ;->c:Lo/XJ;

    .line 476
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v21

    .line 477
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->i()Lo/GridView;

    move-result-object v22

    .line 478
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_3

    :cond_b
    move-object/from16 v23, v19

    .line 479
    :goto_3
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v27, 0x20

    const/16 v28, 0x0

    move/from16 v25, p1

    .line 475
    invoke-static/range {v20 .. v28}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 482
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 484
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 485
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->e()Landroid/view/View;

    move-result-object v4

    new-instance v16, Lo/Vk$TaskDescription;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v14

    move-object v3, v13

    move-object v11, v4

    move-object/from16 v4, p0

    move/from16 v21, v10

    move-object v10, v5

    move v5, v12

    move-object v8, v6

    move-object v6, v9

    move-object/from16 v17, v9

    move/from16 v22, v12

    const/4 v9, 0x0

    move-object v12, v7

    move/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lo/Vk$TaskDescription;-><init>(Lo/Vn;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V

    move-object/from16 v0, v16

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    sget-object v0, Lo/akj;->a:Lo/akj;

    goto :goto_4

    :cond_d
    move-object v8, v6

    move-object/from16 v17, v9

    move/from16 v21, v10

    move/from16 v22, v12

    const/4 v9, 0x0

    move-object v10, v5

    move-object v12, v7

    .line 535
    :goto_4
    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->text()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 536
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->label()Lcom/netflix/model/leafs/originals/interactive/Label;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 537
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->j()Lo/ImageSwitcher;

    move-result-object v2

    .line 538
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Label;->numberOfLines()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_e
    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v2, v3}, Lo/ImageSwitcher;->setMaxLines(I)V

    .line 539
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Label;->fontSize()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_6

    :cond_f
    invoke-virtual {v2}, Lo/ImageSwitcher;->getTextSize()F

    move-result v3

    :goto_6
    invoke-virtual {v2, v3}, Lo/ImageSwitcher;->setTextSize(F)V

    .line 540
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Label;->color()Lcom/netflix/model/leafs/originals/interactive/Color;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/netflix/model/leafs/originals/interactive/Color;->colorWithRGB()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_10
    move-object/from16 v6, v19

    .line 541
    :goto_7
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lo/ImageSwitcher;->setTextColor(I)V

    .line 542
    sget-object v3, Lo/akj;->a:Lo/akj;

    .line 545
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->y()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lo/TwoLineListItem;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/ImageSwitcher;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 546
    invoke-virtual {v2, v5, v9, v3, v4}, Lo/ImageSwitcher;->setShadowLayer(FFFI)V

    .line 547
    sget-object v2, Lo/akj;->a:Lo/akj;

    .line 553
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Label;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 555
    sget-object v23, Lo/XJ;->c:Lo/XJ;

    .line 556
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->j()Lo/ImageSwitcher;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/view/View;

    .line 557
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->width()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 558
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->height()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 559
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->x()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 560
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SourceRect;->y()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v29, p1

    .line 555
    invoke-virtual/range {v23 .. v29}, Lo/XJ;->e(Landroid/view/View;IIIIF)V

    .line 564
    :cond_11
    sget-object v1, Lo/akj;->a:Lo/akj;

    .line 565
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->j()Lo/ImageSwitcher;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 566
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 568
    :cond_13
    sget-object v1, Lo/XJ;->c:Lo/XJ;

    .line 569
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v2

    .line 570
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->h()Lo/GridView;

    move-result-object v3

    .line 571
    invoke-virtual/range {v17 .. v17}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->background()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout$Background;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout$Background;->defaultImg()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_14
    move-object/from16 v6, v19

    :goto_8
    invoke-virtual {v0, v6}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v6

    move-object v4, v6

    goto :goto_9

    :cond_15
    move-object/from16 v4, v19

    .line 572
    :goto_9
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->background()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout$Background;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout$Background;->defaultImg()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v6

    move-object v5, v6

    goto :goto_a

    :cond_16
    move-object/from16 v5, v19

    :goto_a
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move/from16 v6, p1

    .line 568
    invoke-static/range {v1 .. v9}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 576
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->icon()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v0

    if-nez v0, :cond_18

    .line 579
    sget-object v7, Lo/XJ;->c:Lo/XJ;

    .line 580
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v8

    .line 581
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->c()Lo/GridView;

    move-result-object v9

    .line 582
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->assetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v6

    move-object v10, v6

    goto :goto_b

    :cond_17
    move-object/from16 v10, v19

    .line 583
    :goto_b
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->hitAreaRect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v11

    .line 585
    new-instance v12, Lo/Vk$Activity;

    move-object v0, v12

    move-object v1, v14

    move-object v2, v13

    move-object/from16 v3, p0

    move/from16 v4, v22

    move-object/from16 v5, v17

    move/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lo/Vk$Activity;-><init>(Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V

    move-object v0, v12

    check-cast v0, Lo/XK;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v7, v0

    .line 579
    invoke-virtual/range {v1 .. v7}, Lo/XJ;->b(Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;)V

    goto :goto_d

    .line 606
    :cond_18
    sget-object v23, Lo/XJ;->c:Lo/XJ;

    .line 607
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v24

    .line 608
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->g()Lo/Vp;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lo/GridView;

    .line 609
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Moment;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v13}, Lcom/netflix/model/leafs/originals/interactive/Choice;->assetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v6

    move-object/from16 v26, v6

    goto :goto_c

    :cond_19
    move-object/from16 v26, v19

    .line 610
    :goto_c
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->icon()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v30, 0x20

    const/16 v31, 0x0

    move/from16 v28, p1

    .line 606
    invoke-static/range {v23 .. v31}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 615
    :goto_d
    sget-object v0, Lo/XJ;->c:Lo/XJ;

    .line 616
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v1

    .line 617
    invoke-virtual/range {v18 .. v18}, Lo/Vn;->f()Lo/GridView;

    move-result-object v2

    .line 618
    invoke-virtual/range {v17 .. v17}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->foreground()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_1a
    move-object/from16 v6, v19

    :goto_e
    invoke-virtual {v3, v6}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v6

    move-object v3, v6

    goto :goto_f

    :cond_1b
    move-object/from16 v3, v19

    .line 619
    :goto_f
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->foreground()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v6

    move-object v4, v6

    goto :goto_10

    :cond_1c
    move-object/from16 v4, v19

    :goto_10
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move/from16 v5, p1

    .line 615
    invoke-static/range {v0 .. v8}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 623
    invoke-virtual {v14}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->animation()Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    move-result-object v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lo/Vk;->a(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 624
    iget-object v3, v1, Lo/Vk;->k:Lo/UY;

    .line 625
    move-object/from16 v5, v18

    check-cast v5, Landroid/view/View;

    .line 624
    invoke-virtual {v3, v5, v0}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    .line 628
    sget-object v0, Lo/akj;->a:Lo/akj;

    goto :goto_12

    :cond_1d
    move-object v1, v8

    .line 427
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.v2.interactive.InteractiveChoicePointLayout"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_11
    move/from16 v2, p1

    move-object v1, v8

    move-object/from16 v17, v9

    move/from16 v21, v10

    move/from16 v22, v12

    .line 632
    :cond_1f
    :goto_12
    sget-object v0, Lo/akj;->a:Lo/akj;

    goto :goto_13

    :cond_20
    move/from16 v2, p1

    move-object v1, v8

    move-object/from16 v17, v9

    move/from16 v21, v10

    move/from16 v22, v12

    :goto_13
    add-int/lit8 v12, v22, 0x1

    move-object v8, v1

    move-object/from16 v9, v17

    move/from16 v10, v21

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_21
    move-object v1, v8

    return-void

    :cond_22
    move-object v1, v8

    .line 391
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.CommonMetaData.Layout"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected e(F)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 814
    sget-object v1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast v1, Lo/MessagePdu;

    .line 815
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object v11, v1

    check-cast v11, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 816
    invoke-virtual {v11}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->timer()Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 818
    new-instance v13, Landroid/widget/FrameLayout;

    iget-object v1, v0, Lo/Vk;->i:Landroid/widget/FrameLayout;

    const-string v2, "timerViewLayout"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 819
    iget-object v1, v0, Lo/Vk;->i:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    move-object v14, v13

    check-cast v14, Landroid/view/View;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 820
    sget-object v1, Lo/XJ;->c:Lo/XJ;

    const/4 v3, -0x2

    const/4 v4, -0x2

    .line 824
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->timerPosition()Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;->x()Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "timerLayoutSpec.timerPosition().x()"

    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 825
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->timerPosition()Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/ScreenPosition;->y()Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "timerLayoutSpec.timerPosition().y()"

    invoke-static {v2, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, v14

    move/from16 v7, p1

    .line 820
    invoke-virtual/range {v1 .. v7}, Lo/XJ;->e(Landroid/view/View;IIIIF)V

    .line 829
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->background()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v1

    const-string v15, "context"

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    .line 830
    new-instance v8, Lo/GridView;

    invoke-virtual/range {p0 .. p0}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 831
    move-object v2, v9

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2}, Lo/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 832
    move-object v2, v8

    check-cast v2, Landroid/view/View;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 833
    sget-object v2, Lo/XJ;->c:Lo/XJ;

    .line 834
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v3

    .line 836
    invoke-virtual {v11}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v9

    .line 837
    :goto_0
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v16, 0x20

    const/16 v17, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move/from16 v6, p1

    move/from16 v8, v16

    move-object/from16 v16, v14

    move-object v14, v9

    move-object/from16 v9, v17

    .line 833
    invoke-static/range {v1 .. v9}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v14

    move-object v14, v9

    .line 842
    :goto_1
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->bar()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v1

    const/4 v9, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_6

    .line 844
    move-object v2, v13

    check-cast v2, Landroid/view/ViewGroup;

    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cb:I

    invoke-static {v2, v3, v8, v9, v14}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Lo/MenuInflater;

    .line 845
    invoke-virtual {v11}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v14

    .line 846
    :goto_2
    sget-object v4, Lo/XJ;->c:Lo/XJ;

    .line 847
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v5

    .line 849
    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    .line 850
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->type()I

    move-result v7

    .line 846
    invoke-virtual {v4, v5, v3, v6, v7}, Lo/XJ;->e(Lo/ErrorCodes;Lcom/netflix/model/leafs/originals/interactive/Image;Landroid/view/ViewGroup;I)V

    .line 852
    sget-object v3, Lo/XJ;->c:Lo/XJ;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v1

    const-string v5, "it.rect()"

    invoke-static {v1, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1, v10}, Lo/XJ;->b(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/SourceRect;F)V

    .line 853
    iput-object v2, v0, Lo/Vk;->m:Lo/MenuInflater;

    goto :goto_3

    .line 844
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 856
    :cond_6
    :goto_3
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->foreground()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 857
    new-instance v7, Lo/GridView;

    invoke-virtual/range {p0 .. p0}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/16 v17, 0x0

    move-object v2, v7

    move-object v8, v7

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 858
    move-object v2, v14

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2}, Lo/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 859
    move-object v7, v8

    check-cast v7, Landroid/view/View;

    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 860
    sget-object v2, Lo/XJ;->c:Lo/XJ;

    .line 861
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v3

    invoke-virtual {v11}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v14

    .line 862
    :goto_4
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v17, 0x20

    const/16 v19, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move/from16 v6, p1

    move/from16 v8, v17

    move-object/from16 v9, v19

    .line 860
    invoke-static/range {v1 .. v9}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 867
    :cond_8
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->pug()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 868
    new-instance v8, Lo/GridView;

    invoke-virtual/range {p0 .. p0}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 869
    move-object v9, v14

    check-cast v9, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Lo/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 870
    move-object v2, v8

    check-cast v2, Landroid/view/View;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 871
    sget-object v2, Lo/XJ;->c:Lo/XJ;

    .line 872
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v3

    invoke-virtual {v11}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v4

    goto :goto_5

    :cond_9
    move-object v4, v14

    .line 873
    :goto_5
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v9, 0x20

    const/4 v14, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move/from16 v6, p1

    move v8, v9

    move-object v9, v14

    .line 871
    invoke-static/range {v1 .. v9}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 878
    :cond_a
    sget-object v1, Lo/Vq;->b:Lo/Vq;

    invoke-virtual/range {p0 .. p0}, Lo/Vk;->r()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/Vq;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)J

    move-result-wide v1

    .line 882
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "animator_duration_scale"

    .line 881
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    const/4 v5, 0x1

    cmpg-float v3, v3, v4

    if-nez v3, :cond_b

    .line 885
    iget-object v3, v0, Lo/Vk;->m:Lo/MenuInflater;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 886
    invoke-virtual {v3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "ObjectAnimator.ofFloat(t\u2026etDuration(timerDuration)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    .line 888
    sget-object v6, Lo/Vf;->h:Lo/Vf$Activity;

    invoke-virtual {v6}, Lo/Vf$Activity;->c()Landroid/view/animation/LinearInterpolator;

    move-result-object v6

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 889
    new-instance v6, Lo/Vk$PendingIntent;

    invoke-direct {v6, v2, v0, v10, v11}, Lo/Vk$PendingIntent;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lo/Vk;FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 912
    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lo/Vk;->e(Landroid/animation/Animator;)V

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    .line 914
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    const/16 v24, 0x1

    const/high16 v25, 0x3f000000    # 0.5f

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v25}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 925
    invoke-virtual {v6, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 927
    new-instance v1, Lo/Vk$FragmentManager;

    invoke-direct {v1, v6, v0, v10, v11}, Lo/Vk$FragmentManager;-><init>(Landroid/view/animation/ScaleAnimation;Lo/Vk;FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v6, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 949
    sget-object v1, Lo/Vf;->h:Lo/Vf$Activity;

    invoke-virtual {v1}, Lo/Vf$Activity;->c()Landroid/view/animation/LinearInterpolator;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 950
    invoke-virtual {v6, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 951
    iput-object v6, v0, Lo/Vk;->o:Landroid/view/animation/ScaleAnimation;

    .line 954
    :goto_6
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->animation()Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lo/Vk;->a(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 955
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 956
    new-instance v2, Lo/Vk$LoaderManager;

    invoke-direct {v2, v13, v0, v10, v11}, Lo/Vk$LoaderManager;-><init>(Landroid/widget/FrameLayout;Lo/Vk;FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V

    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 977
    iget-object v2, v0, Lo/Vk;->k:Lo/UY;

    move-object/from16 v13, v16

    invoke-virtual {v2, v13, v1}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    .line 978
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto :goto_7

    :cond_c
    move-object/from16 v13, v16

    .line 983
    :goto_7
    invoke-virtual {v12}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$Timer;->animation()Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 984
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 985
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 986
    invoke-direct {v0, v1, v10}, Lo/Vk;->d(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 987
    iget-object v1, v0, Lo/Vk;->q:Lo/UY;

    invoke-virtual {v1, v13, v2}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    .line 988
    sget-object v1, Lo/akj;->a:Lo/akj;

    .line 991
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lo/Vk;->n()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 992
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 993
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 994
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x64

    .line 998
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 999
    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1000
    iget-object v2, v0, Lo/Vk;->m:Lo/MenuInflater;

    if-eqz v2, :cond_e

    .line 1001
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1002
    iget-object v4, v0, Lo/Vk;->p:Lo/UY;

    invoke-virtual {v4, v3, v1}, Lo/UY;->d(Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    goto :goto_8

    :cond_e
    return-void

    .line 815
    :cond_f
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.CommonMetaData.Layout"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public f()V
    .locals 3

    .line 1106
    invoke-virtual {p0}, Lo/Vk;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1108
    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1097
    invoke-virtual {p0}, Lo/Vk;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1098
    :cond_0
    iget-boolean v0, p0, Lo/Vk;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Vk;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    iget-object v0, p0, Lo/Vk;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    const/4 v0, 0x0

    .line 1101
    check-cast v0, Landroid/media/MediaPlayer;

    iput-object v0, p0, Lo/Vk;->s:Landroid/media/MediaPlayer;

    return-void
.end method

.method public h()V
    .locals 3

    .line 1113
    invoke-virtual {p0}, Lo/Vk;->u()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1115
    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 86
    invoke-super {p0}, Lo/Vd;->onFinishInflate()V

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->im:I

    invoke-virtual {p0, v0}, Lo/Vk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.interactive_exit_credits)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/HorizontalScrollView;

    iput-object v0, p0, Lo/Vk;->n:Lo/HorizontalScrollView;

    .line 88
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->iz:I

    invoke-virtual {p0, v0}, Lo/Vk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.interactive_notification)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lo/Vk;->l:Landroid/widget/FrameLayout;

    .line 89
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tn:I

    invoke-virtual {p0, v0}, Lo/Vk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.timer_frame)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lo/Vk;->i:Landroid/widget/FrameLayout;

    .line 90
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cw:I

    invoke-virtual {p0, v0}, Lo/Vk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.choice_points)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lo/Vk;->g:Landroid/widget/FrameLayout;

    .line 91
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ht:I

    invoke-virtual {p0, v0}, Lo/Vk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.header_label)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/Vk;->j:Lo/ImageSwitcher;

    return-void
.end method
