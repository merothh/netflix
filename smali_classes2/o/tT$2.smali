.class Lo/tT$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/tT;


# direct methods
.method constructor <init>(Lo/tT;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lo/tT$2;->a:Lo/tT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 672
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    invoke-static {v0}, Lo/tT;->d(Lo/tT;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 675
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 713
    :pswitch_0
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ug;

    invoke-static {v0, p1}, Lo/tT;->c(Lo/tT;Lo/ug;)V

    goto/16 :goto_1

    .line 710
    :pswitch_1
    iget-object p1, p0, Lo/tT$2;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->e(Lo/tT;)V

    goto :goto_1

    .line 707
    :pswitch_2
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ug;

    invoke-static {v0, p1}, Lo/tT;->b(Lo/tT;Lo/ug;)V

    goto :goto_1

    .line 704
    :pswitch_3
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lo/tT;->a(Lo/tT;Z)V

    goto :goto_1

    .line 701
    :pswitch_4
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-static {v0, p1}, Lo/tT;->b(Lo/tT;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_1

    .line 686
    :pswitch_5
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/tT$TaskDescription;

    invoke-static {v0, p1}, Lo/tT;->c(Lo/tT;Lo/tT$TaskDescription;)V

    goto :goto_1

    .line 695
    :pswitch_6
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/uf;

    invoke-static {v0, p1}, Lo/tT;->c(Lo/tT;Lo/uf;)V

    goto :goto_1

    .line 683
    :pswitch_7
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/tT$Activity;

    invoke-static {v0, p1}, Lo/tT;->b(Lo/tT;Lo/tT$Activity;)V

    goto :goto_1

    .line 698
    :pswitch_8
    iget-object p1, p0, Lo/tT$2;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->b(Lo/tT;)V

    goto :goto_1

    .line 692
    :pswitch_9
    iget-object p1, p0, Lo/tT$2;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->c(Lo/tT;)V

    goto :goto_1

    .line 689
    :pswitch_a
    iget-object p1, p0, Lo/tT$2;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->a(Lo/tT;)V

    goto :goto_1

    .line 680
    :pswitch_b
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/Bj;

    invoke-static {v0, p1}, Lo/tT;->d(Lo/tT;Lo/Bj;)V

    goto :goto_1

    .line 677
    :pswitch_c
    iget-object v0, p0, Lo/tT$2;->a:Lo/tT;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/ug;

    invoke-static {v0, p1}, Lo/tT;->d(Lo/tT;Lo/ug;)V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1000
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
