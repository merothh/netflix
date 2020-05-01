.class Lo/kJ$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kJ;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:Lo/kJ;


# direct methods
.method constructor <init>(Lo/kJ;Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/kJ$2;->e:Lo/kJ;

    iput-object p2, p0, Lo/kJ$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lo/kJ$2;->e:Lo/kJ;

    invoke-static {v0}, Lo/kJ;->d(Lo/kJ;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lo/kJ$2;->a:Ljava/lang/String;

    const-string v2, "urn:x-cast:mdx-netflix-com:service:target:2"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/framework/CastSession;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lo/kJ$2$4;

    invoke-direct {v1, p0}, Lo/kJ$2$4;-><init>(Lo/kJ$2;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "CafSessionManager"

    const-string v1, "sendCastMessage - session doesn\'t exist or isn\'t connected - ignoring message"

    .line 165
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
