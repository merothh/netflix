.class public Lo/Bl$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Bo;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:J

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

.field private g:J

.field private h:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lo/Bl$Activity;->e:J

    const-wide/16 v0, -0x1

    .line 60
    iput-wide v0, p0, Lo/Bl$Activity;->b:J

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lo/Bl$Activity;->a:Ljava/util/List;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lo/Bl$Activity;->j:Ljava/util/List;

    .line 63
    iput-wide v0, p0, Lo/Bl$Activity;->h:J

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;->unknownTransitionHint:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    iput-object v0, p0, Lo/Bl$Activity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    .line 68
    iput-wide p1, p0, Lo/Bl$Activity;->c:J

    return-void
.end method

.method static synthetic b(Lo/Bl$Activity;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lo/Bl$Activity;->h:J

    return-wide p1
.end method

.method static synthetic b(Lo/Bl$Activity;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;
    .locals 0

    .line 56
    iput-object p1, p0, Lo/Bl$Activity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    return-object p1
.end method

.method static synthetic b(Lo/Bl$Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lo/Bl$Activity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lo/Bl$Activity;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lo/Bl$Activity;->e:J

    return-wide p1
.end method

.method static synthetic c(Lo/Bl$Activity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/Bl$Activity;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lo/Bl$Activity;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lo/Bl$Activity;->b:J

    return-wide p1
.end method

.method static synthetic e(Lo/Bl$Activity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/Bl$Activity;->j:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(J)Lo/Bl$Activity;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    iput-wide p1, p0, Lo/Bl$Activity;->g:J

    return-object p0
.end method

.method public a(Lo/Bo;)Lo/Bl$Activity;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/Bl$Activity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lo/Bl;
    .locals 17

    move-object/from16 v0, p0

    .line 72
    new-instance v16, Lo/Bl;

    iget-object v2, v0, Lo/Bl$Activity;->d:Ljava/lang/String;

    iget-wide v3, v0, Lo/Bl$Activity;->e:J

    iget-wide v5, v0, Lo/Bl$Activity;->b:J

    iget-object v1, v0, Lo/Bl$Activity;->a:Ljava/util/List;

    const/4 v7, 0x0

    new-array v7, v7, [Lo/Bo;

    .line 73
    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Lo/Bo;

    iget-object v8, v0, Lo/Bl$Activity;->j:Ljava/util/List;

    iget-wide v9, v0, Lo/Bl$Activity;->h:J

    iget-object v11, v0, Lo/Bl$Activity;->f:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    iget-wide v12, v0, Lo/Bl$Activity;->c:J

    iget-wide v14, v0, Lo/Bl$Activity;->g:J

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lo/Bl;-><init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;JJ)V

    return-object v16
.end method

.method public c(Ljava/lang/String;)Lo/Bl$Activity;
    .locals 0

    .line 78
    iput-object p1, p0, Lo/Bl$Activity;->d:Ljava/lang/String;

    return-object p0
.end method
