.class public Lo/tn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/wx;


# instance fields
.field private final b:Lo/zS;


# direct methods
.method public constructor <init>(Lo/zS;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lo/tn;->b:Lo/zS;

    return-void
.end method


# virtual methods
.method public a(Lo/wo;)V
    .locals 4

    .line 16
    new-instance v0, Lo/to;

    invoke-virtual {p1}, Lo/wo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/wo;->f()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    move-result-object v2

    invoke-virtual {p1}, Lo/wo;->g()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lo/to;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;ZLjava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lo/tn;->b:Lo/zS;

    invoke-interface {p1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method
