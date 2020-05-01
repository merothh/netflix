.class Lo/MimeTypeMap$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MimeTypeMap;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Lo/MimeTypeMap;


# direct methods
.method constructor <init>(Lo/MimeTypeMap;J)V
    .locals 0

    .line 167
    iput-object p1, p0, Lo/MimeTypeMap$3;->c:Lo/MimeTypeMap;

    iput-wide p2, p0, Lo/MimeTypeMap$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 172
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/UserInputTime;

    iget-wide v2, p0, Lo/MimeTypeMap$3;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/UserInputTime;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 174
    iget-object v0, p0, Lo/MimeTypeMap$3;->c:Lo/MimeTypeMap;

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

    .line 175
    iget-object v2, p0, Lo/MimeTypeMap$3;->c:Lo/MimeTypeMap;

    invoke-interface {v1, v2}, Lo/JavascriptInterface;->e(Lo/Plugin;)V

    goto :goto_0

    :cond_0
    return-void
.end method
