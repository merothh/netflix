.class public final Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/cl/Logger;
    .locals 1

    .line 33
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/inject/Named;
        value = "webViewBaseUrl"
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lo/cH;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/netflix/cl/ExtLogger;
    .locals 1

    .line 36
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Lo/EntityConfidence;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lo/EntityConfidence;->b:Lo/EntityConfidence$TaskDescription;

    invoke-virtual {v0, p1}, Lo/EntityConfidence$TaskDescription;->e(Landroid/content/Context;)Lo/EntityConfidence;

    move-result-object p1

    return-object p1
.end method
