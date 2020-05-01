.class public Lo/Lp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lo/AR;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/AR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "uiLabel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoSummary"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgUrl"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgDescription"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomo"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Lp;->c:Ljava/lang/String;

    iput-object p2, p0, Lo/Lp;->d:Lo/AR;

    iput-object p3, p0, Lo/Lp;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/Lp;->a:Ljava/lang/String;

    iput-object p5, p0, Lo/Lp;->e:Ljava/lang/String;

    iput-object p6, p0, Lo/Lp;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iput-object p7, p0, Lo/Lp;->j:Ljava/lang/String;

    iput-object p8, p0, Lo/Lp;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/Lp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/Lp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/Lp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/Lp;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lo/AR;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/Lp;->d:Lo/AR;

    return-object v0
.end method

.method public final f()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/Lp;->i:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/Lp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/Lp;->j:Ljava/lang/String;

    return-object v0
.end method
