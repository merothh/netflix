.class Lo/Gh$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Gh;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Gh;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lo/Gh;Z)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/Gh$5;->a:Lo/Gh;

    iput-boolean p2, p0, Lo/Gh$5;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ErrorManager"

    :try_start_0
    const-string v1, "Waiting 1.5 second to exit app"

    .line 38
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-boolean v1, p0, Lo/Gh$5;->d:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x5dc

    .line 40
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Wait is interrupted"

    .line 43
    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    const-string v1, "Kill app"

    .line 45
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lo/Gh$5;->a:Lo/Gh;

    invoke-static {v0}, Lo/Gh;->d(Lo/Gh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->h(Landroid/content/Context;)V

    return-void
.end method
