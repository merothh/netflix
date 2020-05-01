.class public abstract Lo/fQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private d:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    iput-object v0, p0, Lo/fQ;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 0

    .line 22
    invoke-static {p0}, Lo/fP;->b(Ljava/lang/String;)Lo/fQ;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    iget-object p0, p0, Lo/fQ;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/fQ;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-void
.end method

.method public c()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/fQ;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method
