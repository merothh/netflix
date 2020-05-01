.class public Lo/kO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/cz;

.field private final b:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

.field private final c:Lo/kZ;

.field private final e:Lo/zS;


# direct methods
.method public constructor <init>(Lo/zS;Lo/cz;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/kO;->e:Lo/zS;

    .line 30
    iput-object p2, p0, Lo/kO;->a:Lo/cz;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;-><init>(Lo/zS;Lo/cz;)V

    iput-object v0, p0, Lo/kO;->b:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    .line 32
    new-instance v0, Lo/kZ;

    invoke-direct {v0, p1, p2}, Lo/kZ;-><init>(Lo/zS;Lo/cz;)V

    iput-object v0, p0, Lo/kO;->c:Lo/kZ;

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lo/kO;->a:Lo/cz;

    invoke-interface {v0}, Lo/cz;->af()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v0

    invoke-static {v0}, Lo/kP;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Lo/kV;

    invoke-direct {v1, v0, p1, p2, p3}, Lo/kV;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lo/kO;->e:Lo/zS;

    invoke-interface {p1, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;)V

    .line 62
    iget-object v1, p0, Lo/kO;->e:Lo/zS;

    invoke-interface {v1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c()Lo/kZ;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/kO;->c:Lo/kZ;

    return-object v0
.end method

.method public c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;)V
    .locals 3

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->o:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 97
    iget-object p1, p0, Lo/kO;->e:Lo/zS;

    invoke-interface {p1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->k:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 92
    iget-object p1, p0, Lo/kO;->e:Lo/zS;

    invoke-interface {p1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 4

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->n:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uuid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " network_changes="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " network_changes_dialog="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " gpsOld="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 113
    iget-object p1, p0, Lo/kO;->e:Lo/zS;

    invoke-interface {p1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method public d()Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/kO;->b:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->l:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 102
    iget-object p1, p0, Lo/kO;->e:Lo/zS;

    invoke-interface {p1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->e:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;)V

    .line 57
    iget-object v1, p0, Lo/kO;->e:Lo/zS;

    invoke-interface {v1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->h:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 87
    iget-object p1, p0, Lo/kO;->e:Lo/zS;

    invoke-interface {p1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method
