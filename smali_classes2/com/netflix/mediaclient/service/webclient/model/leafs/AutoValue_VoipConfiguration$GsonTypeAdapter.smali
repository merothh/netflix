.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultDisableChatButton:Z

.field private defaultEnableVoip:Z

.field private defaultEnableVoipOverData:Z

.field private defaultEnableVoipOverWiFi:Z

.field private defaultJitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

.field private defaultOpenDialpadByDefault:Z

.field private defaultPacketLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

.field private defaultRttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

.field private defaultSampleRateInHz:I

.field private defaultShowConfirmationDialog:Z

.field private defaultShowHelpForNonMember:Z

.field private defaultSipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

.field private final disableChatButtonAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final enableVoipAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final enableVoipOverDataAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final enableVoipOverWiFiAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final jitterThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;",
            ">;"
        }
    .end annotation
.end field

.field private final openDialpadByDefaultAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final packetLosThresholdInPercentAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;",
            ">;"
        }
    .end annotation
.end field

.field private final rttThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleRateInHzAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final showConfirmationDialogAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final showHelpForNonMemberAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final sipThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoip:Z

    .line 38
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoipOverData:Z

    .line 39
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoipOverWiFi:Z

    .line 40
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultDisableChatButton:Z

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultRttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 42
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultJitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 43
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultSipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 44
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultPacketLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 45
    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultSampleRateInHz:I

    .line 46
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultShowHelpForNonMember:Z

    .line 47
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultShowConfirmationDialog:Z

    .line 48
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultOpenDialpadByDefault:Z

    .line 50
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipAdapter:Lcom/google/gson/TypeAdapter;

    .line 51
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipOverDataAdapter:Lcom/google/gson/TypeAdapter;

    .line 52
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipOverWiFiAdapter:Lcom/google/gson/TypeAdapter;

    .line 53
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->disableChatButtonAdapter:Lcom/google/gson/TypeAdapter;

    .line 54
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->rttThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    .line 55
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->jitterThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    .line 56
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->sipThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    .line 57
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->packetLosThresholdInPercentAdapter:Lcom/google/gson/TypeAdapter;

    .line 58
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->sampleRateInHzAdapter:Lcom/google/gson/TypeAdapter;

    .line 59
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->showHelpForNonMemberAdapter:Lcom/google/gson/TypeAdapter;

    .line 60
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->showConfirmationDialogAdapter:Lcom/google/gson/TypeAdapter;

    .line 61
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->openDialpadByDefaultAdapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 103
    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoip:Z

    .line 104
    iget-boolean v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoipOverData:Z

    .line 105
    iget-boolean v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoipOverWiFi:Z

    .line 106
    iget-boolean v5, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultDisableChatButton:Z

    .line 107
    iget-object v6, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultRttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 108
    iget-object v7, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultJitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 109
    iget-object v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultSipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 110
    iget-object v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultPacketLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    .line 111
    iget v10, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultSampleRateInHz:I

    .line 112
    iget-boolean v11, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultShowHelpForNonMember:Z

    .line 113
    iget-boolean v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultShowConfirmationDialog:Z

    .line 114
    iget-boolean v13, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultOpenDialpadByDefault:Z

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    .line 115
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_1

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "enableVoip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "packetLosThresholdInPercent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "disableChatButton"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "jitterThresholdInMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    const-string v4, "rttThresholdInMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "showConfirmationDialog"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_6
    const-string v4, "sampleRateInHz"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_7
    const-string v4, "openDialpadByDefault"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_8
    const-string v4, "enableVoipOverWiFi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_9
    const-string v4, "enableVoipOverData"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_a
    const-string v4, "showHelpForNonMember"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_b
    const-string v4, "sipThresholdInMs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 167
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->openDialpadByDefaultAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v26, v2

    goto/16 :goto_0

    .line 163
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->showConfirmationDialogAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v25, v2

    goto/16 :goto_0

    .line 159
    :pswitch_2
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->showHelpForNonMemberAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v24, v2

    goto/16 :goto_0

    .line 155
    :pswitch_3
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->sampleRateInHzAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v23, v2

    goto/16 :goto_0

    .line 151
    :pswitch_4
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->packetLosThresholdInPercentAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-object/from16 v22, v2

    goto/16 :goto_0

    .line 147
    :pswitch_5
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->sipThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-object/from16 v21, v2

    goto/16 :goto_0

    .line 143
    :pswitch_6
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->jitterThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-object/from16 v20, v2

    goto/16 :goto_0

    .line 139
    :pswitch_7
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->rttThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-object/from16 v19, v2

    goto/16 :goto_0

    .line 135
    :pswitch_8
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->disableChatButtonAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v18, v2

    goto/16 :goto_0

    .line 131
    :pswitch_9
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipOverWiFiAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_0

    .line 127
    :pswitch_a
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipOverDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_0

    .line 123
    :pswitch_b
    iget-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v15, v2

    goto/16 :goto_0

    .line 175
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 176
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration;

    move-object v14, v1

    invoke-direct/range {v14 .. v26}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration;-><init>(ZZZZLcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;IZZZ)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x717cce04 -> :sswitch_b
        -0x35603804 -> :sswitch_a
        -0x2faa867f -> :sswitch_9
        -0x2fa1caf4 -> :sswitch_8
        -0x1e407f8f -> :sswitch_7
        -0x140abe1f -> :sswitch_6
        0x8086bba -> :sswitch_5
        0x10d60b64 -> :sswitch_4
        0x21bdcb2a -> :sswitch_3
        0x3c0f41b2 -> :sswitch_2
        0x43e7a2fd -> :sswitch_1
        0x70d971c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultDisableChatButton(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultDisableChatButton:Z

    return-object p0
.end method

.method public setDefaultEnableVoip(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoip:Z

    return-object p0
.end method

.method public setDefaultEnableVoipOverData(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoipOverData:Z

    return-object p0
.end method

.method public setDefaultEnableVoipOverWiFi(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultEnableVoipOverWiFi:Z

    return-object p0
.end method

.method public setDefaultJitterThresholdInMs(Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultJitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object p0
.end method

.method public setDefaultOpenDialpadByDefault(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultOpenDialpadByDefault:Z

    return-object p0
.end method

.method public setDefaultPacketLosThresholdInPercent(Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultPacketLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object p0
.end method

.method public setDefaultRttThresholdInMs(Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultRttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object p0
.end method

.method public setDefaultSampleRateInHz(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 211
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultSampleRateInHz:I

    return-object p0
.end method

.method public setDefaultShowConfirmationDialog(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultShowConfirmationDialog:Z

    return-object p0
.end method

.method public setDefaultShowHelpForNonMember(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultShowHelpForNonMember:Z

    return-object p0
.end method

.method public setDefaultSipThresholdInMs(Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->defaultSipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;)V
    .locals 2

    if-nez p2, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const-string v0, "enableVoip"

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoip()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableVoipOverData"

    .line 72
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipOverDataAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverData()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "enableVoipOverWiFi"

    .line 74
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->enableVoipOverWiFiAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverWiFi()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "disableChatButton"

    .line 76
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->disableChatButtonAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isDisableChatButton()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "rttThresholdInMs"

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->rttThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "jitterThresholdInMs"

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->jitterThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "sipThresholdInMs"

    .line 82
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->sipThresholdInMsAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "packetLosThresholdInPercent"

    .line 84
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->packetLosThresholdInPercentAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "sampleRateInHz"

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->sampleRateInHzAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSampleRateInHz()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "showHelpForNonMember"

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->showHelpForNonMemberAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowHelpForNonMember()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "showConfirmationDialog"

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->showConfirmationDialogAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isShowConfirmationDialog()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    const-string v0, "openDialpadByDefault"

    .line 92
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->openDialpadByDefaultAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isOpenDialpadByDefault()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_VoipConfiguration$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;)V

    return-void
.end method
