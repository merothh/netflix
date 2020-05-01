.class public final Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p1, "intent"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object p1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    check-cast p1, Lo/MessagePdu;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string p2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_END"

    .line 326
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 327
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 328
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lo/Build$IntentFilter;

    invoke-direct {v1, p2}, Lo/Build$IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_1
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PIN_VERIFICATION_INCORRECT_PIN"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$18;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$18;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {v0, p2, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_2
    const-string p2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_TARGETLIST"

    .line 157
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 158
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    sget-object v0, Lo/Build$TypedArray;->c:Lo/Build$TypedArray;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_3
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_MOVIEMETADA"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "catalogId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 209
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v2, "episodeId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    :cond_3
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$5;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$5;-><init>(Ljava/util/List;)V

    check-cast p2, Lo/alO;

    .line 206
    invoke-static {v0, v1, v2, p2}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_4
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NETWORK_CONNECTIVITY_CHANGE"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$17;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$17;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {v0, p2, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_5
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_CAPABILITY"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v1, "stringBlob"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$6;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$6;-><init>(Ljava/util/List;)V

    check-cast p2, Lo/alN;

    invoke-static {v0, v2, p2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_6
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGCANCEL"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$10;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$10;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {v0, p2, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_7
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_DIALOGSHOW"

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$9;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$9;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {v0, p2, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_8
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_CONSENT_DIALOG_CANCEL"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$12;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$12;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {v0, p2, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_9
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKEND"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_a
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_CONSENT_DIALOG_SHOW"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$11;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$11;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {v0, p2, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_b
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_NEXT"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$16;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$16;-><init>(Ljava/util/List;)V

    check-cast p2, Lo/alN;

    invoke-static {v0, v2, p2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_c
    const-string p2, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_HIDE"

    .line 320
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 321
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 322
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lo/Build$IntentSender;

    invoke-direct {v1, p2}, Lo/Build$IntentSender;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_d
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$4;-><init>(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;Ljava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {v0, p2, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_4

    :sswitch_e
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_ERROR"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 265
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lo/Build$Fragment;

    .line 266
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v3, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const-string v4, "errorCode"

    .line 267
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_6
    const-string v4, ""

    if-eqz v0, :cond_7

    const-string v5, "errorDesc"

    .line 268
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, v4

    :goto_1
    if-eqz v0, :cond_8

    const-string v6, "errorDisplayCode"

    .line 269
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, v4

    .line 265
    :goto_2
    invoke-direct {v2, p2, v3, v5, v0}, Lo/Build$Fragment;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_f
    const-string p2, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_MOVIEMETADATA_AVAILABLE"

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 154
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    sget-object v0, Lo/Build$ComponentName;->e:Lo/Build$ComponentName;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_10
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_AUDIOSUB"

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->a(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$7;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$7;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {v0, p2, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto :goto_4

    :sswitch_11
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_POSTPLAY"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_9

    const-string v1, "postplayState"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    :cond_9
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$13;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$broadcastReceiver$1$onReceive$13;-><init>(Ljava/util/List;)V

    check-cast p2, Lo/alN;

    .line 310
    invoke-static {v0, v2, p2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto :goto_4

    .line 361
    :cond_a
    :goto_3
    sget-object p2, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$Application;

    check-cast p2, Lo/MessagePdu;

    .line 365
    :cond_b
    :goto_4
    check-cast p1, Ljava/lang/Iterable;

    .line 506
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Build$BroadcastReceiver;

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->e(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    .line 372
    :cond_c
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer$ActionBar;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->c(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->b(Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7296f8b3 -> :sswitch_11
        -0x659741dd -> :sswitch_10
        -0x656e0ff0 -> :sswitch_f
        -0x617e0ef1 -> :sswitch_e
        -0x60b81c68 -> :sswitch_d
        -0x5db1efe2 -> :sswitch_c
        -0x5a95a58a -> :sswitch_b
        -0x4b644d67 -> :sswitch_a
        -0x28435559 -> :sswitch_9
        -0x1f3774ea -> :sswitch_8
        -0xcc1d682 -> :sswitch_7
        0xa8dcbb -> :sswitch_6
        0x17085a51 -> :sswitch_5
        0x324db76e -> :sswitch_4
        0x54c24239 -> :sswitch_3
        0x62ca26e8 -> :sswitch_2
        0x6ceebc7e -> :sswitch_1
        0x70b0b8d8 -> :sswitch_0
    .end sparse-switch
.end method
