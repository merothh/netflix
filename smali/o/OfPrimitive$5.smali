.class Lo/OfPrimitive$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OfPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/OfPrimitive;


# direct methods
.method constructor <init>(Lo/OfPrimitive;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 257
    iget-object v0, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lo/OfPrimitive;->access$002(Lo/OfPrimitive;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 261
    iget-object v0, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-virtual {v0}, Lo/OfPrimitive;->cancelPendingModelBuild()V

    .line 263
    iget-object v0, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v0}, Lo/OfPrimitive;->access$100(Lo/OfPrimitive;)Lo/Random;

    move-result-object v0

    invoke-virtual {v0}, Lo/Random;->resetAutoModels()V

    .line 265
    iget-object v0, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    new-instance v1, Lcom/airbnb/epoxy/ControllerModelList;

    invoke-static {v0}, Lo/OfPrimitive;->access$300(Lo/OfPrimitive;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/airbnb/epoxy/ControllerModelList;-><init>(I)V

    invoke-static {v0, v1}, Lo/OfPrimitive;->access$202(Lo/OfPrimitive;Lcom/airbnb/epoxy/ControllerModelList;)Lcom/airbnb/epoxy/ControllerModelList;

    .line 267
    iget-object v0, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v0}, Lo/OfPrimitive;->access$400(Lo/OfPrimitive;)Lo/CipherOutputStream;

    move-result-object v0

    const-string v1, "Models built"

    invoke-interface {v0, v1}, Lo/CipherOutputStream;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    :try_start_0
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-virtual {v2}, Lo/OfPrimitive;->buildModels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-virtual {v2}, Lo/OfPrimitive;->addCurrentlyStagedModelIfExists()V

    .line 287
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2}, Lo/OfPrimitive;->access$400(Lo/OfPrimitive;)Lo/CipherOutputStream;

    move-result-object v2

    invoke-interface {v2}, Lo/CipherOutputStream;->a()V

    .line 289
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2}, Lo/OfPrimitive;->access$700(Lo/OfPrimitive;)V

    .line 290
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2}, Lo/OfPrimitive;->access$200(Lo/OfPrimitive;)Lcom/airbnb/epoxy/ControllerModelList;

    move-result-object v3

    invoke-static {v2, v3}, Lo/OfPrimitive;->access$800(Lo/OfPrimitive;Ljava/util/List;)V

    .line 291
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2}, Lo/OfPrimitive;->access$200(Lo/OfPrimitive;)Lcom/airbnb/epoxy/ControllerModelList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/epoxy/ControllerModelList;->a()V

    .line 293
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2}, Lo/OfPrimitive;->access$400(Lo/OfPrimitive;)Lo/CipherOutputStream;

    move-result-object v2

    const-string v3, "Models diffed"

    invoke-interface {v2, v3}, Lo/CipherOutputStream;->a(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2}, Lo/OfPrimitive;->access$900(Lo/OfPrimitive;)Lo/OfLong;

    move-result-object v2

    iget-object v3, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v3}, Lo/OfPrimitive;->access$200(Lo/OfPrimitive;)Lcom/airbnb/epoxy/ControllerModelList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/OfLong;->d(Lcom/airbnb/epoxy/ControllerModelList;)V

    .line 296
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2}, Lo/OfPrimitive;->access$400(Lo/OfPrimitive;)Lo/CipherOutputStream;

    move-result-object v2

    invoke-interface {v2}, Lo/CipherOutputStream;->a()V

    .line 298
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2, v1}, Lo/OfPrimitive;->access$202(Lo/OfPrimitive;Lcom/airbnb/epoxy/ControllerModelList;)Lcom/airbnb/epoxy/ControllerModelList;

    .line 299
    iget-object v2, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v2, v0}, Lo/OfPrimitive;->access$502(Lo/OfPrimitive;Z)Z

    .line 300
    iget-object v0, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v0, v1}, Lo/OfPrimitive;->access$002(Lo/OfPrimitive;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v2

    .line 278
    iget-object v3, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v3}, Lo/OfPrimitive;->access$400(Lo/OfPrimitive;)Lo/CipherOutputStream;

    move-result-object v3

    invoke-interface {v3}, Lo/CipherOutputStream;->a()V

    .line 279
    iget-object v3, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v3, v1}, Lo/OfPrimitive;->access$202(Lo/OfPrimitive;Lcom/airbnb/epoxy/ControllerModelList;)Lcom/airbnb/epoxy/ControllerModelList;

    .line 280
    iget-object v3, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v3, v0}, Lo/OfPrimitive;->access$502(Lo/OfPrimitive;Z)Z

    .line 281
    iget-object v0, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v0, v1}, Lo/OfPrimitive;->access$002(Lo/OfPrimitive;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 282
    iget-object v0, p0, Lo/OfPrimitive$5;->c:Lo/OfPrimitive;

    invoke-static {v0, v1}, Lo/OfPrimitive;->access$602(Lo/OfPrimitive;Lo/BiConsumer;)Lo/BiConsumer;

    .line 283
    throw v2
.end method
