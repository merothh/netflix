.class Lo/TJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field private final b:Lo/TC;

.field private final c:Lo/Bc;

.field private final d:Ljava/lang/Long;

.field private final e:Ljava/lang/Long;

.field private final f:Lo/Tv;

.field private final g:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

.field private final h:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final i:I


# direct methods
.method public constructor <init>(Lo/TC;Ljava/lang/Long;Ljava/lang/Long;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TJ;->b:Lo/TC;

    iput-object p2, p0, Lo/TJ;->e:Ljava/lang/Long;

    iput-object p3, p0, Lo/TJ;->d:Ljava/lang/Long;

    iput-object p4, p0, Lo/TJ;->c:Lo/Bc;

    iput-object p5, p0, Lo/TJ;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object p6, p0, Lo/TJ;->h:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput p7, p0, Lo/TJ;->i:I

    iput-object p8, p0, Lo/TJ;->g:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    iput-object p9, p0, Lo/TJ;->f:Lo/Tv;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lo/TJ;->b:Lo/TC;

    iget-object v1, p0, Lo/TJ;->e:Ljava/lang/Long;

    iget-object v2, p0, Lo/TJ;->d:Ljava/lang/Long;

    iget-object v3, p0, Lo/TJ;->c:Lo/Bc;

    iget-object v4, p0, Lo/TJ;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iget-object v5, p0, Lo/TJ;->h:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget v6, p0, Lo/TJ;->i:I

    iget-object v7, p0, Lo/TJ;->g:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    iget-object v8, p0, Lo/TJ;->f:Lo/Tv;

    invoke-static/range {v0 .. v8}, Lo/TC;->b(Lo/TC;Ljava/lang/Long;Ljava/lang/Long;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method
