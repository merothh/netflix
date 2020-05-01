.class Lo/nQ$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic d:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;Ljava/lang/String;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lo/nQ$17;->d:Lo/nQ;

    iput-object p2, p0, Lo/nQ$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1101
    iget-object v0, p0, Lo/nQ$17;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/nQ$17;->d:Lo/nQ;

    invoke-static {v1}, Lo/nQ;->f(Lo/nQ;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-interface {v0}, Lo/ov;->e()Lo/oC;

    move-result-object v1

    .line 1106
    iget-object v2, p0, Lo/nQ$17;->d:Lo/nQ;

    invoke-virtual {v2}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lo/oc;->b(Landroid/content/Context;Lo/oC;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 1107
    invoke-interface {v1, v2}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1108
    iget-object v1, p0, Lo/nQ$17;->d:Lo/nQ;

    invoke-virtual {v1}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lo/nQ;->e(Lo/nQ;Landroid/content/Context;)V

    .line 1109
    iget-object v1, p0, Lo/nQ$17;->d:Lo/nQ;

    invoke-static {v1, v0, v2}, Lo/nQ;->b(Lo/nQ;Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
