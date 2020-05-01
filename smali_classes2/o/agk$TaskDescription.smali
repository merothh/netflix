.class public final Lo/agk$TaskDescription;
.super Lo/BlockedNumberContract;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;",
            ">;"
        }
    .end annotation
.end field

.field private aspectRatio:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aspectRatio"
    .end annotation
.end field

.field private images:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AG;",
            ">;"
        }
    .end annotation
.end field

.field private impressionVideoId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "impressionVideoId"
    .end annotation
.end field

.field private isSilent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSilent"
    .end annotation
.end field

.field private postCategoryType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postCategoryType"
    .end annotation
.end field

.field private postId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postId"
    .end annotation
.end field

.field private postSubtitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postSubtitle"
    .end annotation
.end field

.field private postText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postText"
    .end annotation
.end field

.field private postTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postTitle"
    .end annotation
.end field

.field private postType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postType"
    .end annotation
.end field

.field private shouldLoop:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldLoop"
    .end annotation
.end field

.field private titleTreatmentUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleTreatmentUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lo/agk$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;ZZLjava/util/List;Ljava/util/List;Ljava/lang/String;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;ZZLjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;",
            "ZZ",
            "Ljava/util/List<",
            "Lo/AG;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "images"

    invoke-static {p11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p12, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    iput-object p1, p0, Lo/agk$TaskDescription;->postId:Ljava/lang/String;

    iput-object p2, p0, Lo/agk$TaskDescription;->postCategoryType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    iput-object p3, p0, Lo/agk$TaskDescription;->postTitle:Ljava/lang/String;

    iput-object p4, p0, Lo/agk$TaskDescription;->postSubtitle:Ljava/lang/String;

    iput-object p5, p0, Lo/agk$TaskDescription;->postText:Ljava/lang/String;

    iput-object p6, p0, Lo/agk$TaskDescription;->postType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    iput-object p7, p0, Lo/agk$TaskDescription;->titleTreatmentUrl:Ljava/lang/String;

    iput-object p8, p0, Lo/agk$TaskDescription;->aspectRatio:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    iput-boolean p9, p0, Lo/agk$TaskDescription;->shouldLoop:Z

    iput-boolean p10, p0, Lo/agk$TaskDescription;->isSilent:Z

    iput-object p11, p0, Lo/agk$TaskDescription;->images:Ljava/util/List;

    iput-object p12, p0, Lo/agk$TaskDescription;->actions:Ljava/util/List;

    iput-object p13, p0, Lo/agk$TaskDescription;->impressionVideoId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;ZZLjava/util/List;Ljava/util/List;Ljava/lang/String;ILo/amc;)V
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 32
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 33
    move-object v3, v2

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    .line 34
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 35
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 36
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 37
    move-object v7, v2

    check-cast v7, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 39
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 40
    move-object v9, v2

    check-cast v9, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    .line 43
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 44
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 45
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v0, p13

    :goto_c
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v0

    invoke-direct/range {p1 .. p14}, Lo/agk$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;ZZLjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/agk$TaskDescription;->postTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/agk$TaskDescription;->postText:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/agk$TaskDescription;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/agk$TaskDescription;->postCategoryType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/agk$TaskDescription;->postSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lo/agk$TaskDescription;

    iget-object v0, p0, Lo/agk$TaskDescription;->postId:Ljava/lang/String;

    iget-object v1, p1, Lo/agk$TaskDescription;->postId:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->postCategoryType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    iget-object v1, p1, Lo/agk$TaskDescription;->postCategoryType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->postTitle:Ljava/lang/String;

    iget-object v1, p1, Lo/agk$TaskDescription;->postTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->postSubtitle:Ljava/lang/String;

    iget-object v1, p1, Lo/agk$TaskDescription;->postSubtitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->postText:Ljava/lang/String;

    iget-object v1, p1, Lo/agk$TaskDescription;->postText:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->postType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    iget-object v1, p1, Lo/agk$TaskDescription;->postType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->titleTreatmentUrl:Ljava/lang/String;

    iget-object v1, p1, Lo/agk$TaskDescription;->titleTreatmentUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->aspectRatio:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    iget-object v1, p1, Lo/agk$TaskDescription;->aspectRatio:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/agk$TaskDescription;->shouldLoop:Z

    iget-boolean v1, p1, Lo/agk$TaskDescription;->shouldLoop:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/agk$TaskDescription;->isSilent:Z

    iget-boolean v1, p1, Lo/agk$TaskDescription;->isSilent:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->images:Ljava/util/List;

    iget-object v1, p1, Lo/agk$TaskDescription;->images:Ljava/util/List;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->actions:Ljava/util/List;

    iget-object v1, p1, Lo/agk$TaskDescription;->actions:Ljava/util/List;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agk$TaskDescription;->impressionVideoId:Ljava/lang/String;

    iget-object p1, p1, Lo/agk$TaskDescription;->impressionVideoId:Ljava/lang/String;

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

    .line 42
    iget-boolean v0, p0, Lo/agk$TaskDescription;->isSilent:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lo/agk$TaskDescription;->shouldLoop:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/agk$TaskDescription;->titleTreatmentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lo/agk$TaskDescription;->postId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->postCategoryType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->postTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->postSubtitle:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->postText:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->postType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->titleTreatmentUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->aspectRatio:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/agk$TaskDescription;->shouldLoop:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/agk$TaskDescription;->isSilent:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->images:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->actions:Ljava/util/List;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/agk$TaskDescription;->impressionVideoId:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/agk$TaskDescription;->postType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    return-object v0
.end method

.method public final j()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/agk$TaskDescription;->aspectRatio:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/agk$TaskDescription;->impressionVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AG;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/agk$TaskDescription;->images:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/agk$TaskDescription;->actions:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtrasData(postId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->postId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", postCategoryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->postCategoryType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->postTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", postSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->postSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", postText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->postText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", postType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->postType:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titleTreatmentUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->titleTreatmentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->aspectRatio:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldLoop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/agk$TaskDescription;->shouldLoop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSilent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/agk$TaskDescription;->isSilent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->images:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionVideoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agk$TaskDescription;->impressionVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
