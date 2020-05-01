.class public final Lcom/netflix/mediaclient/ui/player/PlayerExtras;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/player/PlayerExtras$TaskDescription;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z

.field private g:Lcom/netflix/cl/model/AppView;

.field private h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

.field private i:Z

.field private j:J

.field private l:F

.field private n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

.field private o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras$TaskDescription;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/player/PlayerExtras$TaskDescription;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1fff

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ffe

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-object/from16 v14, p14

    const/4 v15, 0x0

    const/16 v16, 0x1000

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;)V
    .locals 7

    move-object v0, p0

    move-object v1, p8

    move-object/from16 v2, p10

    move-object/from16 v3, p14

    move-object/from16 v4, p15

    const-string v5, "postplayExtras"

    invoke-static {p8, v5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fragmentAppView"

    invoke-static {v2, v5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "playerLiteMode"

    invoke-static {v3, v5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mediaTracksUserPreference"

    invoke-static {v4, v5}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v5, p1

    iput v5, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d:I

    move-wide v5, p2

    iput-wide v5, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e:J

    move v5, p4

    iput v5, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a:I

    move v5, p5

    iput-boolean v5, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b:Z

    move v5, p6

    iput-boolean v5, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c:Z

    move v5, p7

    iput-boolean v5, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f:Z

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i:Z

    iput-object v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g:Lcom/netflix/cl/model/AppView;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    move/from16 v1, p13

    iput v1, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->l:F

    iput-object v3, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    iput-object v4, v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    return-void
.end method

.method public synthetic constructor <init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V
    .locals 22

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move/from16 v4, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 19
    new-instance v9, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf

    const/4 v15, 0x0

    move-object/from16 p1, v9

    move/from16 p2, v10

    move-object/from16 p3, v11

    move-object/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v14

    move-object/from16 p7, v15

    invoke-direct/range {p1 .. p7}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;-><init>(ZLjava/lang/String;Ljava/lang/String;ZILo/amc;)V

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v5, p9

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 22
    sget-object v10, Lcom/netflix/cl/model/AppView;->playback:Lcom/netflix/cl/model/AppView;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 23
    sget-object v11, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    invoke-virtual {v11}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;->b()J

    move-result-wide v11

    goto :goto_9

    :cond_9
    move-wide/from16 v11, p11

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_a
    move/from16 v13, p13

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    .line 25
    sget-object v14, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->e:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p14

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1f

    const/16 v21, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v15

    move-object/from16 p3, v16

    move/from16 p4, v17

    move/from16 p5, v18

    move/from16 p6, v19

    move/from16 p7, v20

    move-object/from16 p8, v21

    invoke-direct/range {p1 .. p8}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILo/amc;)V

    goto :goto_c

    :cond_c
    move-object/from16 v0, p15

    :goto_c
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-wide/from16 p3, v2

    move/from16 p5, v4

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v5

    move-object/from16 p11, v10

    move-wide/from16 p12, v11

    move/from16 p14, v13

    move-object/from16 p15, v14

    move-object/from16 p16, v0

    invoke-direct/range {p1 .. p16}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a:I

    return v0
.end method

.method public final a(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c:Z

    return-void
.end method

.method public final b()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d:I

    return-void
.end method

.method public final c()V
    .locals 2

    .line 36
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    return-void
.end method

.method public final d()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d:I

    return v0
.end method

.method public final d(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 9

    .line 40
    new-instance v8, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILo/amc;)V

    iput-object v8, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    return-void
.end method

.method public final e(Lcom/netflix/cl/model/AppView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g:Lcom/netflix/cl/model/AppView;

    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/ui/player/PostPlayExtras;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d:I

    iget v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e:J

    iget-wide v2, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a:I

    iget v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b:Z

    iget-boolean v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c:Z

    iget-boolean v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f:Z

    iget-boolean v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i:Z

    iget-boolean v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g:Lcom/netflix/cl/model/AppView;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g:Lcom/netflix/cl/model/AppView;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    iget-wide v2, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->l:F

    iget v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->l:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c:Z

    return v0
.end method

.method public final g()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b:Z

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g:Lcom/netflix/cl/model/AppView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    ushr-long v5, v1, v3

    xor-long/2addr v1, v5

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->l:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_7
    add-int/2addr v0, v4

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i:Z

    return v0
.end method

.method public final k()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final l()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    return-object v0
.end method

.method public final m()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    return-wide v0
.end method

.method public final n()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->l:F

    return v0
.end method

.method public final o()Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerExtras(bookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", autoPlayCounterForIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAdvisoryDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPinVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInteractive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", postplayExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resetInteractive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fragmentAppView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userPlayStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", playerSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", playerLiteMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaTracksUserPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->h:Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->g:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->l:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->o:Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->n:Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
