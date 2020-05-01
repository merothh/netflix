.class Lo/TH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:Lo/TC;

.field private final c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final d:Lo/Bc;

.field private final e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

.field private final g:Lo/Tv;

.field private final j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;


# direct methods
.method public constructor <init>(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TH;->b:Lo/TC;

    iput-object p2, p0, Lo/TH;->d:Lo/Bc;

    iput-object p3, p0, Lo/TH;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iput-object p4, p0, Lo/TH;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput p5, p0, Lo/TH;->a:I

    iput-object p6, p0, Lo/TH;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    iput-object p7, p0, Lo/TH;->g:Lo/Tv;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lo/TH;->b:Lo/TC;

    iget-object v1, p0, Lo/TH;->d:Lo/Bc;

    iget-object v2, p0, Lo/TH;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    iget-object v3, p0, Lo/TH;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget v4, p0, Lo/TH;->a:I

    iget-object v5, p0, Lo/TH;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    iget-object v6, p0, Lo/TH;->g:Lo/Tv;

    invoke-static/range {v0 .. v6}, Lo/TC;->e(Lo/TC;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;Lo/Tv;)V

    return-void
.end method
