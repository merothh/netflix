.class public final Lo/IJ$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/Bc;

.field private final b:Lo/AU;

.field private final c:Z

.field private final d:Lcom/netflix/mediaclient/android/app/Status;

.field private final e:Lo/AR;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AR;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lo/IJ$ActionBar;-><init>(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lo/AU;",
            "Lo/AR;",
            "Lo/Bc;",
            "Ljava/util/List<",
            "+",
            "Lo/AR;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lo/AS;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/IJ$ActionBar;->c:Z

    iput-object p2, p0, Lo/IJ$ActionBar;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/IJ$ActionBar;->b:Lo/AU;

    iput-object p4, p0, Lo/IJ$ActionBar;->e:Lo/AR;

    iput-object p5, p0, Lo/IJ$ActionBar;->a:Lo/Bc;

    iput-object p6, p0, Lo/IJ$ActionBar;->h:Ljava/util/List;

    iput-object p7, p0, Lo/IJ$ActionBar;->j:Ljava/util/List;

    iput-object p8, p0, Lo/IJ$ActionBar;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILo/amc;)V
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 16
    move-object v2, v3

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 17
    move-object v4, v3

    check-cast v4, Lo/AU;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 18
    move-object v5, v3

    check-cast v5, Lo/AR;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 19
    move-object v6, v3

    check-cast v6, Lo/Bc;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 20
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 21
    move-object v8, v3

    check-cast v8, Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 22
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v0, p8

    :goto_7
    move-object p1, p0

    move p2, v1

    move-object p3, v2

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v0

    invoke-direct/range {p1 .. p9}, Lo/IJ$ActionBar;-><init>(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lo/IJ$ActionBar;ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lo/IJ$ActionBar;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lo/IJ$ActionBar;->c:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lo/IJ$ActionBar;->d:Lcom/netflix/mediaclient/android/app/Status;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lo/IJ$ActionBar;->b:Lo/AU;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lo/IJ$ActionBar;->e:Lo/AR;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lo/IJ$ActionBar;->a:Lo/Bc;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lo/IJ$ActionBar;->h:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lo/IJ$ActionBar;->j:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lo/IJ$ActionBar;->g:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lo/IJ$ActionBar;->d(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lo/IJ$ActionBar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/IJ$ActionBar;->c:Z

    return v0
.end method

.method public final b()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/IJ$ActionBar;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final c()Lo/Bc;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/IJ$ActionBar;->a:Lo/Bc;

    return-object v0
.end method

.method public final d()Lo/AU;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/IJ$ActionBar;->b:Lo/AU;

    return-object v0
.end method

.method public final d(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lo/IJ$ActionBar;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lo/AU;",
            "Lo/AR;",
            "Lo/Bc;",
            "Ljava/util/List<",
            "+",
            "Lo/AR;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lo/AS;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lo/IJ$ActionBar;"
        }
    .end annotation

    new-instance v9, Lo/IJ$ActionBar;

    move-object v0, v9

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lo/IJ$ActionBar;-><init>(ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v9
.end method

.method public final e()Lo/AR;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/IJ$ActionBar;->e:Lo/AR;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/IJ$ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lo/IJ$ActionBar;

    iget-boolean v0, p0, Lo/IJ$ActionBar;->c:Z

    iget-boolean v1, p1, Lo/IJ$ActionBar;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/IJ$ActionBar;->d:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v1, p1, Lo/IJ$ActionBar;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IJ$ActionBar;->b:Lo/AU;

    iget-object v1, p1, Lo/IJ$ActionBar;->b:Lo/AU;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IJ$ActionBar;->e:Lo/AR;

    iget-object v1, p1, Lo/IJ$ActionBar;->e:Lo/AR;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IJ$ActionBar;->a:Lo/Bc;

    iget-object v1, p1, Lo/IJ$ActionBar;->a:Lo/Bc;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IJ$ActionBar;->h:Ljava/util/List;

    iget-object v1, p1, Lo/IJ$ActionBar;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IJ$ActionBar;->j:Ljava/util/List;

    iget-object v1, p1, Lo/IJ$ActionBar;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IJ$ActionBar;->g:Ljava/lang/String;

    iget-object p1, p1, Lo/IJ$ActionBar;->g:Ljava/lang/String;

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

.method public final h()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/IJ$ActionBar;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lo/IJ$ActionBar;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/IJ$ActionBar;->d:Lcom/netflix/mediaclient/android/app/Status;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/IJ$ActionBar;->b:Lo/AU;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/IJ$ActionBar;->e:Lo/AR;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/IJ$ActionBar;->a:Lo/Bc;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/IJ$ActionBar;->h:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/IJ$ActionBar;->j:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/IJ$ActionBar;->g:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    return v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lo/IJ$ActionBar;->h:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharacterState(loading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/IJ$ActionBar;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IJ$ActionBar;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", characterDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IJ$ActionBar;->b:Lo/AU;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommendedVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IJ$ActionBar;->e:Lo/AR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IJ$ActionBar;->a:Lo/Bc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedVideos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IJ$ActionBar;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", episodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IJ$ActionBar;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentEpisodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IJ$ActionBar;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
