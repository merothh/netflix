.class Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;
.super Landroid/os/Handler;
.source "TargetSelector.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, "nf_mdxTargetSelector"

    const-string/jumbo v1, "TargetSelector: unknown message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "nf_mdxTargetSelector"

    const-string/jumbo v2, "TargetSelector: target stickiness expired"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "mdx_target_lastactive"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putLongPref(Ljava/lang/String;J)Z

    const-string/jumbo v1, "mdx_target_uuid"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "mdx_selected_uuid"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "mdx_selected_dialuuid"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "mdx_selected_fname"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$100(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;->onStickinessExpired()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_mdxTargetSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TargetSelector: new target is selected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$200(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "mdx_target_lastactive"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putLongPref(Ljava/lang/String;J)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    :pswitch_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_mdxTargetSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TargetSelector: upadte selected target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$200(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$300(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$400(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$500(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "mdx_target_uuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$200(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "mdx_selected_uuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$300(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "mdx_selected_dialuuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$400(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "mdx_selected_fname"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$500(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v1, "mdx_target_lastactive"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putLongPref(Ljava/lang/String;J)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
