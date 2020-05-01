.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field final synthetic b:Lo/ym;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 1750
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$14;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$14;->b:Lo/ym;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$14;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1753
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$14;->b:Lo/ym;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$14;->e:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1}, Lo/ym;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
