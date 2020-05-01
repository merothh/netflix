.class final Lcom/netflix/android/widgetry/buffet/BuffetBar$1;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 189
    :goto_0
    return v0

    .line 180
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->showView(Z)V

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->showView(Z)V

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->hideView(I)V

    move v0, v1

    .line 187
    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
