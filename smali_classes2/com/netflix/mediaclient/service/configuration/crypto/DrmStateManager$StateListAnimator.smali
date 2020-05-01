.class Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;->c:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;->c:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->a(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_msl_DrmStateManager"

    const-string v1, "Playback is still in progress, postpone DRM suspend..."

    .line 167
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;->c:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->e(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$StateListAnimator;->c:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)V

    return-void
.end method
