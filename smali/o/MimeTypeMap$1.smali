.class Lo/MimeTypeMap$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MimeTypeMap;->e(Landroid/app/Activity;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/MimeTypeMap;

.field final synthetic c:J

.field final synthetic d:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lo/MimeTypeMap;JLandroid/content/Intent;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lo/MimeTypeMap$1;->b:Lo/MimeTypeMap;

    iput-wide p2, p0, Lo/MimeTypeMap$1;->c:J

    iput-object p4, p0, Lo/MimeTypeMap$1;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 258
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/UserInputTime;

    iget-wide v2, p0, Lo/MimeTypeMap$1;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/UserInputTime;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 260
    iget-object v0, p0, Lo/MimeTypeMap$1;->b:Lo/MimeTypeMap;

    iget-object v0, v0, Lo/MimeTypeMap;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/JavascriptInterface;

    .line 261
    iget-object v2, p0, Lo/MimeTypeMap$1;->b:Lo/MimeTypeMap;

    iget-object v3, p0, Lo/MimeTypeMap$1;->d:Landroid/content/Intent;

    invoke-interface {v1, v2, v3}, Lo/JavascriptInterface;->a(Lo/Plugin;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method
