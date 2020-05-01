.class public final Lo/YN;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private h:Lcom/netflix/android/imageloader/api/ImageDataSource;

.field private final i:Ljava/lang/String;

.field private j:Lcom/netflix/android/imageloader/api/ImageDataSource;

.field private final k:Z

.field private final l:I

.field private final n:I

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Lcom/netflix/android/imageloader/api/ImageDataSource;Lcom/netflix/android/imageloader/api/ImageDataSource;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
            "Landroid/graphics/Bitmap;",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Lcom/netflix/android/imageloader/api/ImageDataSource;",
            "Lcom/netflix/android/imageloader/api/ImageDataSource;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    const-string v0, "playContext"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxArtUrl"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleTreatmentUrl"

    invoke-static {p10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentDescription"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/YN;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p2, p0, Lo/YN;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lo/YN;->c:Lo/CompatibilityInfo;

    iput-object p4, p0, Lo/YN;->b:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lo/YN;->d:Lo/CompatibilityInfo;

    iput-object p6, p0, Lo/YN;->h:Lcom/netflix/android/imageloader/api/ImageDataSource;

    iput-object p7, p0, Lo/YN;->j:Lcom/netflix/android/imageloader/api/ImageDataSource;

    iput-object p8, p0, Lo/YN;->f:Ljava/lang/String;

    iput-boolean p9, p0, Lo/YN;->g:Z

    iput-object p10, p0, Lo/YN;->i:Ljava/lang/String;

    iput-object p11, p0, Lo/YN;->o:Ljava/lang/String;

    iput-boolean p12, p0, Lo/YN;->k:Z

    iput p13, p0, Lo/YN;->l:I

    iput p14, p0, Lo/YN;->n:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Lcom/netflix/android/imageloader/api/ImageDataSource;Lcom/netflix/android/imageloader/api/ImageDataSource;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIILo/amc;)V
    .locals 13

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 14
    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    .line 15
    move-object v3, v2

    check-cast v3, Lo/CompatibilityInfo;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    .line 16
    move-object v4, v2

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    .line 17
    move-object v5, v2

    check-cast v5, Lo/CompatibilityInfo;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    .line 18
    move-object v6, v2

    check-cast v6, Lcom/netflix/android/imageloader/api/ImageDataSource;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 19
    check-cast v2, Lcom/netflix/android/imageloader/api/ImageDataSource;

    goto :goto_5

    :cond_5
    move-object/from16 v2, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    const-string v8, ""

    if-eqz v7, :cond_6

    move-object v7, v8

    goto :goto_6

    :cond_6
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    move-object v11, v8

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v8, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v10, p12

    :goto_a
    and-int/lit16 v12, v0, 0x1000

    if-eqz v12, :cond_b

    const/4 v12, -0x1

    goto :goto_b

    :cond_b
    move/from16 v12, p13

    :goto_b
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c

    const/high16 v0, -0x1000000

    goto :goto_c

    :cond_c
    move/from16 v0, p14

    :goto_c
    move-object p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v2

    move-object/from16 p10, v7

    move/from16 p11, v9

    move-object/from16 p12, v11

    move-object/from16 p13, v8

    move/from16 p14, v10

    move/from16 p15, v12

    move/from16 p16, v0

    .line 26
    invoke-direct/range {p2 .. p16}, Lo/YN;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Landroid/graphics/Bitmap;Lo/CompatibilityInfo;Lcom/netflix/android/imageloader/api/ImageDataSource;Lcom/netflix/android/imageloader/api/ImageDataSource;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/YN;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lo/YN;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Lo/CompatibilityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lo/YN;->d:Lo/CompatibilityInfo;

    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/YN;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b(Lcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/YN;->h:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-void
.end method

.method public final b(Lo/CompatibilityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lo/YN;->c:Lo/CompatibilityInfo;

    return-void
.end method

.method public final c()Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/YN;->h:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object v0
.end method

.method public final d()Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/YN;->c:Lo/CompatibilityInfo;

    return-object v0
.end method

.method public final e()Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lo/YN;->d:Lo/CompatibilityInfo;

    return-object v0
.end method

.method public final e(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/YN;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final e(Lcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/YN;->j:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/YN;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/YN;->j:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/YN;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lo/YN;->g:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/YN;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 25
    iget v0, p0, Lo/YN;->l:I

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/YN;->k:Z

    return v0
.end method

.method public final n()I
    .locals 1

    .line 26
    iget v0, p0, Lo/YN;->n:I

    return v0
.end method
