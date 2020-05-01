.class public final Lo/UK$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final b:Lo/Bc;

.field private c:I

.field private final d:Lcom/netflix/mediaclient/android/app/Status;

.field private final e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field private h:Lo/Tv;

.field private j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;


# direct methods
.method public constructor <init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/UK$TaskDescription;->b:Lo/Bc;

    iput-object p2, p0, Lo/UK$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/UK$TaskDescription;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object p4, p0, Lo/UK$TaskDescription;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput p5, p0, Lo/UK$TaskDescription;->c:I

    iput-object p6, p0, Lo/UK$TaskDescription;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    iput-object p7, p0, Lo/UK$TaskDescription;->h:Lo/Tv;

    return-void
.end method

.method public synthetic constructor <init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;ILo/amc;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    move-object v0, v1

    check-cast v0, Lo/Bc;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const/4 v7, -0x1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    .line 65
    move-object v0, v1

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    .line 66
    move-object v0, v1

    check-cast v0, Lo/Tv;

    move-object v9, v0

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    move-object v2, p0

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Lo/UK$TaskDescription;-><init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 64
    iget v0, p0, Lo/UK$TaskDescription;->c:I

    return v0
.end method

.method public final b()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/UK$TaskDescription;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final b(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lo/UK$TaskDescription;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-void
.end method

.method public final b(Lo/Tv;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lo/UK$TaskDescription;->h:Lo/Tv;

    return-void
.end method

.method public final c()Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/UK$TaskDescription;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/UK$TaskDescription;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .line 64
    iput p1, p0, Lo/UK$TaskDescription;->c:I

    return-void
.end method

.method public final e()Lo/Bc;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/UK$TaskDescription;->b:Lo/Bc;

    return-object v0
.end method

.method public final g()Lo/Tv;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/UK$TaskDescription;->h:Lo/Tv;

    return-object v0
.end method

.method public final h()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/UK$TaskDescription;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-object v0
.end method
