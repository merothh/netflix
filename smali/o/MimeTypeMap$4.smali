.class Lo/MimeTypeMap$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MimeTypeMap;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/MimeTypeMap;


# direct methods
.method constructor <init>(Lo/MimeTypeMap;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lo/MimeTypeMap$4;->a:Lo/MimeTypeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 295
    iget-object v0, p0, Lo/MimeTypeMap$4;->a:Lo/MimeTypeMap;

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

    .line 296
    iget-object v2, p0, Lo/MimeTypeMap$4;->a:Lo/MimeTypeMap;

    invoke-interface {v1, v2}, Lo/JavascriptInterface;->b(Lo/Plugin;)V

    goto :goto_0

    .line 299
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v1, Lcom/netflix/cl/model/context/UserInputTime;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    return-void
.end method
