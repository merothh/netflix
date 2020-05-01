.class final Lcom/netflix/partner/PServiceCardEventHandler$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ait$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/partner/PServiceCardEventHandler;->e(Landroid/content/Context;ILjava/lang/String;ZZLo/aiq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/partner/PServiceCardEventHandler;


# direct methods
.method constructor <init>(Lcom/netflix/partner/PServiceCardEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/partner/PServiceCardEventHandler$Application;->c:Lcom/netflix/partner/PServiceCardEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(ILjava/lang/String;)V
    .locals 4

    .line 117
    :try_start_0
    invoke-static {}, Lcom/netflix/partner/PServiceCardEventHandler;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sending onCardEvent %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    iget-object v0, p0, Lcom/netflix/partner/PServiceCardEventHandler$Application;->c:Lcom/netflix/partner/PServiceCardEventHandler;

    invoke-static {v0, p1, p2}, Lcom/netflix/partner/PServiceCardEventHandler;->d(Lcom/netflix/partner/PServiceCardEventHandler;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-static {}, Lcom/netflix/partner/PServiceCardEventHandler;->a()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, " remote Exception"

    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iget-object p1, p0, Lcom/netflix/partner/PServiceCardEventHandler$Application;->c:Lcom/netflix/partner/PServiceCardEventHandler;

    const/4 p2, -0x4

    invoke-static {p1, p2}, Lcom/netflix/partner/PServiceCardEventHandler;->b(Lcom/netflix/partner/PServiceCardEventHandler;I)V

    :goto_0
    return-void
.end method
