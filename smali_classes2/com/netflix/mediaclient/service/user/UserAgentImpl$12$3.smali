.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$12$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 1599
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12$3;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12$3;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12$3;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;->b:Lo/ym;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12$3;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1}, Lo/ym;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
