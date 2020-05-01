.class public Lo/mq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field private c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field private d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

.field private e:J

.field private j:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;Landroid/os/Looper;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lo/mq;->e:J

    .line 42
    iput-wide v0, p0, Lo/mq;->j:J

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lo/mq;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iput-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 47
    iput-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 49
    new-instance p1, Lo/mq$2;

    invoke-direct {p1, p0, p2}, Lo/mq$2;-><init>(Lo/mq;Landroid/os/Looper;)V

    iput-object p1, p0, Lo/mq;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lo/mq;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/mq;->d()V

    return-void
.end method

.method static synthetic a(Lo/mq;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/mq;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/os/Message;)Z
    .locals 8

    .line 702
    iget v0, p1, Landroid/os/Message;->what:I

    .line 704
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "MdxTargetStateV2"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->a()I

    move-result v0

    int-to-long v0, v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 706
    iget-object v6, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "SendMessageFail @%s, retry after %d"

    invoke-static {v3, v5, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 707
    iget-object v2, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 708
    iget-object v2, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    iget-object v2, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 711
    iget-object v2, p0, Lo/mq;->a:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 713
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 740
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 741
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    .line 742
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-direct {p0, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_5

    .line 744
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 745
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-direct {p0, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_5

    .line 750
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    new-array v0, v4, [Ljava/lang/Object;

    .line 751
    iget-object v1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "start session failure @%s"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 753
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/mj;

    .line 754
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lo/mj;->a()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->w:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v0, p1, v1, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    goto :goto_0

    .line 756
    :cond_4
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v4, [Ljava/lang/Object;

    .line 757
    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    const-string v0, "session handshake failure @%s"

    invoke-static {v3, v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 759
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->x:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v1, "session handshake was rejected"

    invoke-virtual {p1, v1, v0, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    .line 767
    :goto_0
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 768
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lo/ku;)V

    .line 771
    :cond_5
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    .line 772
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-direct {p0, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto/16 :goto_5

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    .line 763
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "event %d not handled @%s"

    invoke-static {v3, v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v5

    .line 714
    :cond_7
    :goto_1
    invoke-direct {p0}, Lo/mq;->g()Z

    move-result v1

    if-nez v1, :cond_c

    .line 718
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e(I)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 719
    invoke-virtual {p0}, Lo/mq;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->n:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->r:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    :goto_2
    move-object v0, v1

    goto :goto_4

    .line 722
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 723
    invoke-virtual {p0}, Lo/mq;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->k:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->p:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    :goto_3
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 726
    :goto_4
    iget-object v2, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v2, v1, p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object p1

    .line 727
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Lo/ku;)V

    .line 729
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 730
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lo/ku;)V

    .line 733
    :cond_b
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-direct {p0, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto :goto_5

    :cond_c
    new-array p1, v2, [Ljava/lang/Object;

    .line 737
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "handle event %d, remaining @%s"

    invoke-static {v3, v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_5
    return v4
.end method

.method static synthetic b(Lo/mq;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/mq;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    return-object p0
.end method

.method static synthetic c(Lo/mq;Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 9

    .line 639
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    .line 641
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x31

    if-eq v7, v8, :cond_6

    const/16 v8, 0x660

    if-eq v7, v8, :cond_5

    const v8, 0x5a3fc7c4

    if-eq v7, v8, :cond_4

    const/16 v8, 0x65d

    if-eq v7, v8, :cond_3

    const/16 v8, 0x65e

    if-eq v7, v8, :cond_2

    const/16 v8, 0x71e

    if-eq v7, v8, :cond_1

    const/16 v8, 0x71f

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v7, "43"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x5

    goto/16 :goto_1

    :pswitch_1
    const-string v7, "42"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_1

    :pswitch_2
    const-string v7, "41"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    goto :goto_1

    :pswitch_3
    const-string v7, "40"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    const-string v7, "98"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const-string v7, "97"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x6

    goto :goto_1

    :cond_2
    const-string v7, "31"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const-string v7, "30"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xa

    goto :goto_1

    :cond_4
    const-string v7, "PROFILE_MISMATCH"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    goto :goto_1

    :cond_5
    const-string v7, "33"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x9

    goto :goto_1

    :cond_6
    const-string v7, "1"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    .line 665
    :pswitch_4
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    :pswitch_5
    return v6

    .line 675
    :cond_9
    :goto_2
    sget-object p1, Lo/mq$5;->a:[I

    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_b

    if-eq p1, v1, :cond_b

    .line 683
    iget-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    return v6

    .line 687
    :cond_a
    iget-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->i()V

    .line 688
    iget-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-direct {p0, p1}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    :cond_b
    return v5

    :pswitch_data_0
    .packed-switch 0x67c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic d(Lo/mq;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 487
    iget-object v0, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->s:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v1

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 515
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "MdxTargetStateV2"

    const-string v2, "(%d) state %s => %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 519
    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->j()V

    .line 521
    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iput-object v0, p0, Lo/mq;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 522
    iput-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 525
    :cond_0
    iget-object p1, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    sget-object p1, Lo/mq$5;->a:[I

    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 582
    :pswitch_0
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->K()Z

    move-result p1

    if-nez p1, :cond_4

    .line 583
    iget-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iput-object p1, p0, Lo/mq;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 584
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iput-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    return-void

    .line 579
    :pswitch_1
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->L()V

    goto/16 :goto_0

    .line 576
    :pswitch_2
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->J()V

    goto/16 :goto_0

    .line 573
    :pswitch_3
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->F()V

    goto/16 :goto_0

    .line 570
    :pswitch_4
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->E()V

    goto/16 :goto_0

    .line 559
    :pswitch_5
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->H()V

    .line 560
    iget-wide v0, p0, Lo/mq;->e:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    .line 561
    iget-object p1, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v0

    iget-wide v1, p0, Lo/mq;->e:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 567
    :pswitch_6
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/kH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :pswitch_7
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 552
    iget-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->j()V

    .line 555
    :cond_1
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->G()V

    goto :goto_0

    .line 536
    :pswitch_8
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 537
    iget-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->j()V

    .line 538
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->I()V

    goto :goto_0

    .line 542
    :cond_2
    iget-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iget-object v0, p0, Lo/mq;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 543
    iget-object p1, p0, Lo/mq;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iput-object p1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    :cond_3
    return-void

    .line 548
    :pswitch_9
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p()V

    return-void

    .line 532
    :pswitch_a
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->p()V

    .line 533
    iget-object p1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    :pswitch_b
    return-void

    .line 591
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v0

    iget-object v1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic e(Lo/mq;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/mq;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lo/mq;Landroid/os/Message;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/mq;->b(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private g()Z
    .locals 1

    const-string v0, ""

    .line 698
    invoke-direct {p0, v0}, Lo/mq;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 4

    .line 594
    sget-object v0, Lo/mq$5;->a:[I

    iget-object v1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 601
    :pswitch_0
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->j:Lo/kH;

    iget-object v1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/kH;->a(Ljava/lang/String;)V

    .line 606
    :pswitch_1
    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->n:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 610
    iget-object v1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 614
    :cond_0
    iget-object v1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 615
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 614
    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;Ljava/lang/String;)Lo/ku;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c(Lo/ku;)V

    .line 621
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-direct {p0, v0}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    goto :goto_0

    .line 623
    :cond_2
    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->i()V

    .line 624
    iget-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-direct {p0, v0}, Lo/mq;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)V

    :goto_0
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private j()Z
    .locals 6

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/mq;->j:J

    const-wide/16 v4, 0x61a8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/mq;->j:J

    .line 780
    iget-object v0, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->L()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j(Lo/mq;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/mq;->g()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lo/mq;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 472
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iput-object v0, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    return-void
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .line 490
    iget-object v0, p0, Lo/mq;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public b(J)V
    .locals 3

    const-wide/32 v0, 0x1d4c0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 494
    iput-wide p1, p0, Lo/mq;->e:J

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 475
    iget-object v0, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lo/mq;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;Ljava/lang/Object;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lo/mq;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lo/mq;->a:Landroid/os/Handler;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d()I

    move-result v1

    iget p1, p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->p:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public e()Z
    .locals 4

    .line 503
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iget-object v1, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 504
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iget-object v3, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 506
    :goto_1
    invoke-static {}, Lo/dQ;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lo/mq;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_3

    .line 507
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iget-object v3, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    iget-object v3, p0, Lo/mq;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 508
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :cond_4
    :goto_3
    return v0
.end method
