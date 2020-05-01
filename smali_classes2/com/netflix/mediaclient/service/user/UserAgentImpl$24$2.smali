.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$24$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl$24;->a(ZLcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$24;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl$24;ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 2426
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24$2;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$24;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24$2;->b:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24$2;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2429
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24$2;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl$24;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24;->e:Lo/ym;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24$2;->b:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24$2;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ym;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
