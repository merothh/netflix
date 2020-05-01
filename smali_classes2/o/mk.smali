.class public abstract Lo/mk;
.super Lo/lA;
.source ""


# instance fields
.field protected b:Lorg/json/JSONObject;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/lA;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)Lo/mu$Activity;
    .locals 6

    const-string v0, "sessionAction"

    .line 36
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7c200ac5

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x56d76835

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "startSessionResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "endSession"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    const-string v0, "appAction"

    .line 46
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appBody"

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_3

    .line 50
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "PIN_VERIFICATION_INCORRECT_PIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0xc

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "PLAYER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x7

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "MESSAGE_IGNORED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "PLAYER_CURRENT_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x6

    goto :goto_3

    :sswitch_4
    const-string v1, "PIN_VERIFICATION_SHOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0x8

    goto :goto_3

    :sswitch_5
    const-string v1, "MDX_ACTION_PIN_VERIFICATION_NOT_REQUIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0x9

    goto :goto_3

    :sswitch_6
    const-string v1, "AUDIO_SUBTITLES_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :sswitch_7
    const-string v1, "META_DATA_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0xa

    goto :goto_3

    :sswitch_8
    const-string v1, "PLAYER_CAPABILITIES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_9
    const-string v1, "HANDSHAKE_ACCEPTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :sswitch_a
    const-string v1, "AUDIO_SUBTITLES_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    goto :goto_3

    :sswitch_b
    const-string v1, "DIALOG_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x3

    goto :goto_3

    :sswitch_c
    const-string v1, "DIALOG_SHOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, -0x1

    :goto_3
    packed-switch v3, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :pswitch_0
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->q:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/lZ;

    invoke-direct {v2, p0}, Lo/lZ;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 88
    :pswitch_1
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/lW;

    invoke-direct {v2, p0}, Lo/lW;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 85
    :pswitch_2
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/ma;

    invoke-direct {v2, p0}, Lo/ma;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 82
    :pswitch_3
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/mc;

    invoke-direct {v2, p0}, Lo/mc;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 79
    :pswitch_4
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/me;

    invoke-direct {v2, p0}, Lo/me;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 76
    :pswitch_5
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/mi;

    invoke-direct {v2, p0}, Lo/mi;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 73
    :pswitch_6
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/md;

    invoke-direct {v2, p0}, Lo/md;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 70
    :pswitch_7
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/mf;

    invoke-direct {v2, p0}, Lo/mf;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 67
    :pswitch_8
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/lX;

    invoke-direct {v2, p0}, Lo/lX;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 64
    :pswitch_9
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/lU;

    invoke-direct {v2, p0}, Lo/lU;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 61
    :pswitch_a
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/lS;

    invoke-direct {v2, p0}, Lo/lS;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 58
    :pswitch_b
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/lT;

    invoke-direct {v2, p0}, Lo/lT;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 55
    :pswitch_c
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/lY;

    invoke-direct {v2, p0}, Lo/lY;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    .line 42
    :cond_5
    new-instance p0, Lo/mu$Activity;

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v1, Lo/mg;

    invoke-direct {v1}, Lo/mg;-><init>()V

    invoke-direct {p0, v0, v1}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object p0

    .line 39
    :cond_6
    new-instance v0, Lo/mu$Activity;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    new-instance v2, Lo/mj;

    invoke-direct {v2, p0}, Lo/mj;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lo/mu$Activity;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;Lo/mk;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c7fd86c -> :sswitch_c
        -0x779c52af -> :sswitch_b
        -0x468b4c30 -> :sswitch_a
        -0x345a68f1 -> :sswitch_9
        -0x335937ac -> :sswitch_8
        -0xe87c107 -> :sswitch_7
        0x2f44bd47 -> :sswitch_6
        0x3165709a -> :sswitch_5
        0x3a15f257 -> :sswitch_4
        0x55a3952d -> :sswitch_3
        0x5f8aa45a -> :sswitch_2
        0x75efa3e8 -> :sswitch_1
        0x7cb227a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public h()Lorg/json/JSONObject;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/mk;->b:Lorg/json/JSONObject;

    return-object v0
.end method
