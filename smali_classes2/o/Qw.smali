.class public final Lo/Qw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nK;


# instance fields
.field private final b:Landroid/content/Context;

.field private final d:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final e:Lo/nS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Qw;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/Qw;->e:Lo/nS;

    iput-object p3, p0, Lo/Qw;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Lo/Bi;Lo/nH;)V
    .locals 0

    const-string p3, "playableId"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "offlinePlayable"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
