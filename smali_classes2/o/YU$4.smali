.class Lo/YU$4;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/YU;


# direct methods
.method constructor <init>(Lo/YU;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lo/YU$4;->c:Lo/YU;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 264
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lo/YU$4;->c:Lo/YU;

    invoke-virtual {v0, p1}, Lo/YU;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    .line 267
    :cond_0
    sget-object v0, Lo/YV;->b:Lo/YV;

    iget-object v1, p0, Lo/YU$4;->c:Lo/YU;

    .line 269
    invoke-static {v1}, Lo/YU;->f(Lo/YU;)Z

    move-result v1

    iget-object v2, p0, Lo/YU$4;->c:Lo/YU;

    .line 270
    invoke-static {v2}, Lo/YU;->g(Lo/YU;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    iget-object v3, p0, Lo/YU$4;->c:Lo/YU;

    .line 271
    invoke-static {v3}, Lo/YU;->n(Lo/YU;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {v0, p1, v1, v2, v3}, Lo/YV;->b(Lcom/netflix/mediaclient/android/app/Status;ZLcom/netflix/cl/model/ProfileSettings;Ljava/lang/String;)V

    return-void
.end method
