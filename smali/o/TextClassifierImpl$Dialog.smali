.class final Lo/TextClassifierImpl$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TextClassifierImpl;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/cb;

.field final synthetic d:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V
    .locals 0

    iput-object p1, p0, Lo/TextClassifierImpl$Dialog;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;

    iput-object p2, p0, Lo/TextClassifierImpl$Dialog;->b:Lo/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lo/Am;->n()Lo/cc;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TextClassifierImpl$Dialog;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;

    iget-object v1, p0, Lo/TextClassifierImpl$Dialog;->b:Lo/cb;

    invoke-interface {p1, v0, v1}, Lo/cc;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V

    :cond_0
    return-void
.end method
