.class Lo/mq$2;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/mq;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/mq;


# direct methods
.method constructor <init>(Lo/mq;Landroid/os/Looper;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic a(Lo/mq$2;)V
    .locals 0

    invoke-direct {p0}, Lo/mq$2;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 401
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {}, Lo/kD;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/bO;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    .line 54
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1}, Lo/mq;->b(Lo/mq;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lo/mq$2;->a:Lo/mq;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v3}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "MdxTargetStateV2"

    const-string v7, "(%d) stateId %s, eventId %d"

    invoke-static {v3, v7, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    sget-object v2, Lo/mq$5;->a:[I

    iget-object v7, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v7}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v7

    aget v2, v2, v7

    const/16 v7, 0x11

    const v8, 0x102000b

    const-string v9, "event %d, %d not handled @%s"

    const-string v10, "event %d not handled @%s"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 450
    :pswitch_0
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->R()V

    .line 453
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->N()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 454
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 457
    :cond_1
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 460
    :cond_2
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_39

    new-array v1, v1, [Ljava/lang/Object;

    .line 461
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {v3, v9, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 436
    :pswitch_1
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p1, Landroid/os/Message;->arg1:I

    sget-object v7, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    iget v7, v7, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->p:I

    if-ne v2, v7, :cond_4

    .line 437
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->N()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 438
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 441
    :cond_3
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 444
    :cond_4
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_39

    new-array v1, v1, [Ljava/lang/Object;

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {v3, v9, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 422
    :pswitch_2
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p1, Landroid/os/Message;->arg1:I

    sget-object v7, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    iget v7, v7, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->p:I

    if-ne v2, v7, :cond_6

    .line 423
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->N()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 424
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 427
    :cond_5
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 430
    :cond_6
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_39

    new-array v1, v1, [Ljava/lang/Object;

    .line 431
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {v3, v9, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 396
    :pswitch_3
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 397
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->O()V

    .line 399
    invoke-static {}, Lo/dQ;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 400
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l()Lo/lc;

    move-result-object p1

    invoke-virtual {p1}, Lo/lc;->g()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lo/mz;

    invoke-direct {v0, p0}, Lo/mz;-><init>(Lo/mq$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    :cond_7
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->N()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 410
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 413
    :cond_8
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 416
    :cond_9
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_39

    new-array p1, v6, [Ljava/lang/Object;

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v3, v10, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 386
    :pswitch_4
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 387
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    .line 388
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->a(Lo/mq;)V

    goto/16 :goto_7

    .line 390
    :cond_a
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_39

    new-array p1, v6, [Ljava/lang/Object;

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v3, v10, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 320
    :pswitch_5
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->x:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 321
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l()Lo/lc;

    move-result-object p1

    invoke-virtual {p1}, Lo/lc;->b()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/j$ActionBar;->b:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    .line 322
    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 321
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-static {p1, v4}, Lo/adk;->d(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 327
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 329
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 330
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 331
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 334
    :cond_b
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 337
    :cond_c
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l()Lo/lc;

    move-result-object p1

    check-cast p1, Lo/lf;

    .line 339
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    .line 340
    invoke-virtual {p1}, Lo/lf;->s()V

    .line 341
    sget-object v0, Lo/aiY;->b:Lo/aiY;

    invoke-virtual {p1, v4, v0}, Lo/lf;->c(ZLo/aiY;)V

    goto/16 :goto_7

    .line 343
    :cond_d
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->w:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 344
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ms$ActionBar;

    .line 345
    invoke-virtual {p1}, Lo/ms$ActionBar;->g()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, v0}, Lo/mq;->a(Lo/mq;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 348
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->q:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 349
    invoke-virtual {p1}, Lo/ms$ActionBar;->c()Lo/kx;

    move-result-object v2

    if-nez v2, :cond_e

    .line 352
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i()Lo/kx;

    move-result-object v2

    :cond_e
    if-eqz v2, :cond_f

    .line 355
    invoke-virtual {v2}, Lo/kx;->d()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 356
    sget-object v3, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->a:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {v2, v3}, Lo/kx;->a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 357
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->t:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    goto :goto_0

    .line 361
    :cond_f
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->s:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 364
    :cond_10
    :goto_0
    invoke-virtual {p1}, Lo/ms$ActionBar;->i()Ljava/lang/String;

    move-result-object p1

    .line 365
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    .line 367
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k()Lo/kH;

    move-result-object v0

    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    .line 368
    invoke-static {v1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i()Lo/kx;

    move-result-object v2

    invoke-virtual {v2}, Lo/kx;->c()I

    move-result v2

    invoke-virtual {p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-interface {v0, v1, v2, v3}, Lo/kH;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    .line 373
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 374
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lo/ku;)V

    .line 377
    :cond_11
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 380
    :cond_12
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_39

    new-array p1, v6, [Ljava/lang/Object;

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v3, v10, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 294
    :pswitch_6
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 295
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 297
    :cond_13
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 298
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ms$ActionBar;

    .line 299
    invoke-virtual {p1}, Lo/ms$ActionBar;->g()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, v0}, Lo/mq;->a(Lo/mq;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 302
    invoke-virtual {p1}, Lo/ms$ActionBar;->i()Ljava/lang/String;

    move-result-object p1

    .line 303
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->l:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v1, p1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    .line 305
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    .line 307
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 308
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lo/ku;)V

    .line 311
    :cond_14
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 314
    :cond_15
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_39

    new-array p1, v6, [Ljava/lang/Object;

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v3, v10, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 279
    :pswitch_7
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->t:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 280
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 282
    :cond_16
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->q:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 283
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    .line 284
    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->o:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v2, 0x0

    const-string v3, "remote login cancelled"

    invoke-virtual {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object v0

    .line 283
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    .line 287
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 289
    :cond_17
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_39

    new-array p1, v6, [Ljava/lang/Object;

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v3, v10, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 178
    :pswitch_8
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 179
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 180
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l()Lo/lc;

    move-result-object p1

    invoke-virtual {p1}, Lo/lc;->b()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/j$ActionBar;->a:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    .line 181
    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {p1, v4}, Lo/adk;->d(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 186
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 188
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 189
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 190
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    :cond_18
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 196
    :cond_19
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k()Lo/kH;

    move-result-object p1

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    .line 197
    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i()Lo/kx;

    move-result-object v1

    invoke-virtual {v1}, Lo/kx;->c()I

    move-result v1

    .line 196
    invoke-interface {p1, v0, v1}, Lo/kH;->b(Ljava/lang/String;I)V

    .line 201
    :cond_1a
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 203
    :cond_1b
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 204
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ms$ActionBar;

    .line 206
    invoke-virtual {p1}, Lo/ms$ActionBar;->g()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lo/ms$ActionBar;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "33"

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 216
    iget-object v3, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v3}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v3

    const-string v6, "30"

    if-eqz v3, :cond_1e

    if-nez v2, :cond_1c

    .line 217
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    :cond_1c
    const/4 v4, 0x1

    :cond_1d
    move v2, v4

    goto :goto_3

    :cond_1e
    if-eqz v2, :cond_1f

    .line 225
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_1

    :cond_1f
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_20

    .line 230
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v2, 0x1

    goto :goto_2

    :cond_20
    const/4 v2, 0x0

    .line 232
    :goto_2
    invoke-virtual {p1}, Lo/ms$ActionBar;->d()Z

    move-result p1

    if-eqz p1, :cond_21

    if-nez v2, :cond_21

    .line 233
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    .line 234
    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->B()Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 v4, 0x1

    :cond_21
    if-eqz v4, :cond_22

    .line 237
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 242
    :cond_22
    :goto_3
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->B()Z

    move-result p1

    if-eqz p1, :cond_23

    if-eqz v2, :cond_23

    .line 245
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p()V

    .line 247
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 249
    :cond_23
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1, v0}, Lo/mq;->a(Lo/mq;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 252
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 253
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->q:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {p1, v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    .line 256
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k()Lo/kH;

    move-result-object v0

    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    .line 257
    invoke-static {v1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i()Lo/kx;

    move-result-object v2

    invoke-virtual {v2}, Lo/kx;->c()I

    move-result v2

    invoke-virtual {p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-interface {v0, v1, v2, v3}, Lo/kH;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 261
    :cond_24
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->k:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {p1, v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    .line 264
    :goto_4
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    .line 266
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 267
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lo/ku;)V

    .line 270
    :cond_25
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 273
    :cond_26
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_39

    new-array p1, v6, [Ljava/lang/Object;

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v3, v10, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 102
    :pswitch_9
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 103
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/mr$StateListAnimator;

    .line 105
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lo/mr$StateListAnimator;->e()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 106
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->l()Lo/lc;

    move-result-object p1

    invoke-virtual {p1}, Lo/lc;->b()Landroid/content/Context;

    move-result-object p1

    sget v0, Lo/j$ActionBar;->a:I

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    .line 107
    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {p1, v4}, Lo/adk;->d(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 112
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 114
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 115
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 116
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    :cond_27
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_28
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k()Lo/kH;

    move-result-object p1

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    .line 123
    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i()Lo/kx;

    move-result-object v1

    invoke-virtual {v1}, Lo/kx;->c()I

    move-result v1

    .line 122
    invoke-interface {p1, v0, v1}, Lo/kH;->b(Ljava/lang/String;I)V

    .line 126
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    return-void

    .line 130
    :cond_29
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 131
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->N()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 132
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 135
    :cond_2a
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 139
    :cond_2b
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 142
    :cond_2c
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_5

    .line 172
    :cond_2d
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_39

    new-array p1, v6, [Ljava/lang/Object;

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v3, v10, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 143
    :cond_2e
    :goto_5
    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v1}, Lo/mq;->j(Lo/mq;)Z

    move-result v1

    if-eqz v1, :cond_2f

    return-void

    :cond_2f
    const-string v1, "mdxping failed"

    .line 150
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 151
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->t:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;)Lo/ku;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->k()Lo/kH;

    move-result-object v0

    iget-object v1, p0, Lo/mq$2;->a:Lo/mq;

    .line 154
    invoke-static {v1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i()Lo/kx;

    move-result-object v2

    invoke-virtual {v2}, Lo/kx;->c()I

    move-result v2

    invoke-virtual {p1}, Lo/ku;->e()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-interface {v0, v1, v2, v3}, Lo/kH;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    .line 157
    :cond_30
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 158
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    goto :goto_6

    .line 161
    :cond_31
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;)Lo/ku;

    move-result-object p1

    .line 164
    :goto_6
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    .line 166
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 167
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lo/ku;)V

    .line 170
    :cond_32
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 87
    :pswitch_a
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 88
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_7

    .line 90
    :cond_33
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->s:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 91
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->e(Lo/mq;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 92
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    .line 94
    :cond_34
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->a(Lo/mq;)V

    goto/16 :goto_7

    .line 96
    :cond_35
    iget-object v2, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v2, p1}, Lo/mq;->e(Lo/mq;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_39

    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {v3, v9, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_7

    .line 67
    :pswitch_b
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 68
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->D()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result p1

    if-nez p1, :cond_36

    .line 69
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto :goto_7

    .line 72
    :cond_36
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->i()Lo/kx;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {v0}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p1, :cond_37

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->a:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    .line 74
    invoke-virtual {p1, v0}, Lo/kx;->a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z

    move-result p1

    if-eqz p1, :cond_37

    const/4 v4, 0x1

    :cond_37
    if-eqz v4, :cond_38

    .line 77
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    invoke-static {p1}, Lo/mq;->d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->M()V

    .line 78
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto :goto_7

    .line 81
    :cond_38
    iget-object p1, p0, Lo/mq$2;->a:Lo/mq;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {p1, v0}, Lo/mq;->c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    :cond_39
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
