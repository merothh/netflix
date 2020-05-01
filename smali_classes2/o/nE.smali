.class Lo/nE;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field public final b:Z

.field public final c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/nE;->d:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lo/nE;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 25
    iput-object p3, p0, Lo/nE;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 26
    iput-boolean p4, p0, Lo/nE;->b:Z

    return-void
.end method
