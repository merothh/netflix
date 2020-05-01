.class public final Lo/HZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HZ$StateListAnimator;
    }
.end annotation


# static fields
.field private static final c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

.field public static final e:Lo/HZ$StateListAnimator;


# instance fields
.field private final a:I

.field private b:I

.field private final d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/HZ$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HZ$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/HZ;->e:Lo/HZ$StateListAnimator;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    const-string v1, "-1"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lo/HZ;->c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lo/HZ;->a:I

    if-eqz p3, :cond_2

    .line 36
    sget-object p2, Lo/HZ;->e:Lo/HZ$StateListAnimator;

    check-cast p2, Lo/MessagePdu;

    .line 37
    iget p2, p0, Lo/HZ;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/Ii;

    const-string p3, "trailerVideoView"

    .line 38
    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/Ii;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Lo/MenuInflater;

    .line 39
    invoke-virtual {p2}, Lo/Ii;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/MenuInflater$StateListAnimator;

    .line 40
    move-object v1, p2

    check-cast v1, Landroid/view/View;

    invoke-virtual {p3, v1}, Lo/MenuInflater;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 41
    invoke-virtual {p3, v1}, Lo/MenuInflater;->removeView(Landroid/view/View;)V

    .line 42
    new-instance v1, Lo/XT;

    invoke-virtual {p3}, Lo/MenuInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lo/XT;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p2}, Lo/Ii;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Lo/XT;->setId(I)V

    .line 42
    check-cast v1, Landroid/view/View;

    .line 44
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 42
    invoke-virtual {p3, v1, v2, v0}, Lo/MenuInflater;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    :goto_0
    iget p2, p0, Lo/HZ;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView.findViewById(id)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    iput-object p1, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    .line 62
    iget-object p1, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getVisibility()I

    move-result p1

    iput p1, p0, Lo/HZ;->b:I

    return-void
.end method

.method public static synthetic a(Lo/HZ;IIIIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    .line 77
    iget-object p1, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_3

    .line 78
    iget-object p2, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    .line 79
    iget-object p3, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_4

    iget p3, p3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :cond_5
    :goto_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_7

    .line 80
    iget-object p4, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->K()Landroid/graphics/Rect;

    move-result-object p4

    if-eqz p4, :cond_6

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_6
    const/4 p4, 0x0

    :cond_7
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/HZ;->d(IIII)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->c(J)V

    return-void
.end method

.method public final a(JZ)V
    .locals 2

    .line 112
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    instance-of v1, v0, Lo/Ii;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Lo/Ii;

    invoke-virtual {v0, p1, p2, p3}, Lo/Ii;->setViewInFocus(JZ)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0, p3}, Lo/HZ;->c(Z)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayerStatusChangeListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;)V

    return-void
.end method

.method public final a(Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayProgressListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;)V

    return-void
.end method

.method public final a(Lo/Ii$TaskDescription;IJ)V
    .locals 2

    .line 100
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    instance-of v1, v0, Lo/Ii;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Lo/Ii;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/Ii;->setRetryPolicy(Lo/Ii$TaskDescription;IJ)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;
    .locals 2

    .line 52
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->z()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.IPlayer.PlayerState"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(F)V
    .locals 1

    .line 179
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVolume(F)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setVisibility(I)V

    .line 65
    iput p1, p0, Lo/HZ;->b:I

    return-void
.end method

.method public final c(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;JZLo/Bn;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v5, p4

    const-string v1, "group"

    move-object/from16 v6, p3

    invoke-static {v6, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playableString"

    invoke-static {v5, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoType"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "experience"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playContext"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v1, v0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    instance-of v2, v1, Lo/XT;

    if-eqz v2, :cond_1

    if-nez p11, :cond_0

    .line 143
    invoke-static {}, Lo/amh;->c()V

    .line 144
    :cond_0
    sget-object v1, Lo/HZ;->e:Lo/HZ$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 145
    iget-object v1, v0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-object v2, v1

    check-cast v2, Lo/XT;

    .line 148
    invoke-virtual/range {p11 .. p11}, Lo/Bn;->d()Lo/Bm;

    move-result-object v1

    .line 152
    new-instance v10, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    .line 153
    invoke-virtual/range {p11 .. p11}, Lo/Bn;->d()Lo/Bm;

    move-result-object v3

    invoke-virtual {v3}, Lo/Bm;->a()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v11, 0x0

    .line 152
    invoke-direct {v10, v3, v5, v11, v12}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v12, 0x0

    move-wide v3, p1

    move-object/from16 v5, p3

    move-object v6, v1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v11, p10

    .line 145
    invoke-virtual/range {v2 .. v12}, Lo/XT;->a(JLo/Ab;Lo/Bm;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    goto :goto_0

    .line 161
    :cond_1
    instance-of v2, v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz v2, :cond_2

    .line 171
    sget-object v10, Lo/HZ;->c:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    const/4 v11, 0x0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, v10

    move/from16 v10, p10

    .line 162
    invoke-virtual/range {v1 .. v11}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setViewInFocus(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 58
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getBottom()I

    move-result v0

    return v0
.end method

.method public final d(IIII)V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(IIII)V

    return-void
.end method

.method public final e()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final e(J)V
    .locals 1

    .line 183
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(J)V

    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setErrorListener(Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;)V

    return-void
.end method

.method public final f()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    check-cast v0, Landroid/view/View;

    .line 187
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "RxView.clicks(this).map(AnyToUnit)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g()V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ak()V

    return-void
.end method

.method public final h()V
    .locals 1

    .line 125
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ab()V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->aa()V

    return-void
.end method

.method public final j()I
    .locals 1

    .line 70
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->getWidth()I

    move-result v0

    return v0
.end method

.method public final m()V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/HZ;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b()V

    return-void
.end method
