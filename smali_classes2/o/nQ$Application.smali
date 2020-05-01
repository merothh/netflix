.class Lo/nQ$Application;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;Landroid/os/Looper;)V
    .locals 0

    .line 1588
    iput-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    .line 1589
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1593
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1604
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/nH;

    .line 1605
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-virtual {p1}, Lo/nH;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, p1}, Lo/nQ;->c(Lo/nQ;Ljava/lang/String;Lo/nE;Lo/nH;)V

    goto/16 :goto_0

    .line 1657
    :pswitch_1
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lo/nQ;->b(Lo/nQ;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1654
    :pswitch_2
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lo/nQ;->c(Lo/nQ;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1651
    :pswitch_3
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->q(Lo/nQ;)V

    goto/16 :goto_0

    .line 1648
    :pswitch_4
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/nQ;->c(Lo/nQ;Z)V

    goto/16 :goto_0

    .line 1644
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/nE;

    .line 1645
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object v2, p1, Lo/nE;->d:Ljava/lang/String;

    invoke-static {v0, v2, p1, v1}, Lo/nQ;->c(Lo/nQ;Ljava/lang/String;Lo/nE;Lo/nH;)V

    goto/16 :goto_0

    .line 1641
    :pswitch_6
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lo/nQ;->b(Lo/nQ;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1637
    :pswitch_7
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->r(Lo/nQ;)V

    goto/16 :goto_0

    .line 1634
    :pswitch_8
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lo/nQ;->a(Lo/nQ;I)V

    goto :goto_0

    .line 1630
    :pswitch_9
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->k(Lo/nQ;)V

    .line 1631
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-static {p1, v1}, Lo/nQ;->b(Lo/nQ;Lo/nO;)Lo/nO;

    goto :goto_0

    .line 1626
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 1627
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-static {v0, p1}, Lo/nQ;->b(Lo/nQ;Ljava/lang/Long;)V

    goto :goto_0

    .line 1623
    :pswitch_b
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/nQ;->c(Lo/nQ;Z)V

    goto :goto_0

    .line 1620
    :pswitch_c
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->m(Lo/nQ;)V

    goto :goto_0

    .line 1617
    :pswitch_d
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->l(Lo/nQ;)V

    goto :goto_0

    .line 1614
    :pswitch_e
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-static {p1}, Lo/nQ;->o(Lo/nQ;)V

    goto :goto_0

    .line 1611
    :pswitch_f
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lo/nQ;->a(Lo/nQ;Ljava/lang/String;)V

    goto :goto_0

    .line 1608
    :pswitch_10
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lo/nQ;->e(Lo/nQ;Ljava/lang/String;)V

    goto :goto_0

    .line 1601
    :pswitch_11
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v1, v1}, Lo/nQ;->c(Lo/nQ;Ljava/lang/String;Lo/nE;Lo/nH;)V

    goto :goto_0

    .line 1598
    :pswitch_12
    iget-object v0, p0, Lo/nQ$Application;->b:Lo/nQ;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    invoke-static {v0, p1}, Lo/nQ;->c(Lo/nQ;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    goto :goto_0

    .line 1595
    :pswitch_13
    iget-object p1, p0, Lo/nQ$Application;->b:Lo/nQ;

    invoke-virtual {p1}, Lo/nQ;->j()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
