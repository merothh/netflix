.class public final Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TS;-><init>(Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/TS;


# direct methods
.method public constructor <init>(Lo/TS;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)V
    .locals 9

    .line 102
    instance-of v0, p1, Lo/UP$VoiceInteractor;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    check-cast p1, Lo/UP$VoiceInteractor;

    invoke-virtual {p1}, Lo/UP$VoiceInteractor;->b()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object p1

    invoke-static {v0, p1}, Lo/TS;->b(Lo/TS;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    goto/16 :goto_8

    .line 105
    :cond_0
    sget-object v0, Lo/UP$Mode;->b:Lo/UP$Mode;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    invoke-static {p1}, Lo/TS;->c(Lo/TS;)V

    goto/16 :goto_8

    .line 108
    :cond_1
    sget-object v0, Lo/UP$PackageManager;->d:Lo/UP$PackageManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    invoke-static {p1}, Lo/TS;->a(Lo/TS;)V

    goto/16 :goto_8

    .line 111
    :cond_2
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_3

    .line 112
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    invoke-static {p1}, Lo/TS;->b(Lo/TS;)V

    goto/16 :goto_8

    .line 114
    :cond_3
    instance-of v0, p1, Lo/UP$LoaderManager;

    if-eqz v0, :cond_4

    .line 115
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    check-cast p1, Lo/UP$LoaderManager;

    invoke-virtual {p1}, Lo/UP$LoaderManager;->b()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    move-result-object v2

    invoke-virtual {p1}, Lo/UP$LoaderManager;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lo/UP$LoaderManager;->d()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v4

    invoke-virtual {p1}, Lo/UP$LoaderManager;->e()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lo/TS;->e(Lo/TS;Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V

    goto/16 :goto_8

    .line 117
    :cond_4
    instance-of v0, p1, Lo/UP$PictureInPictureParams;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 118
    :cond_5
    sget-object v0, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 119
    :cond_6
    sget-object v0, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    invoke-static {p1}, Lo/TS;->e(Lo/TS;)V

    goto/16 :goto_8

    .line 122
    :cond_7
    sget-object v0, Lo/UP$FragmentManager;->c:Lo/UP$FragmentManager;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 123
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    invoke-static {p1}, Lo/TS;->b(Lo/TS;)V

    goto/16 :goto_8

    .line 125
    :cond_8
    instance-of v0, p1, Lo/UP$ContextWrapper;

    if-eqz v0, :cond_18

    .line 126
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    check-cast p1, Lo/UP$ContextWrapper;

    invoke-virtual {p1}, Lo/UP$ContextWrapper;->b()Z

    move-result v1

    const-string v2, "id"

    const-string v3, "segmentId"

    if-eqz v1, :cond_b

    .line 128
    invoke-virtual {p1}, Lo/UP$ContextWrapper;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-virtual {p1}, Lo/UP$ContextWrapper;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    invoke-static {v1}, Lo/TS;->d(Lo/TS;)Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 130
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 131
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->choicePointsMetadata()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;->choicePoints()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lo/UP$ContextWrapper;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;

    if-eqz p1, :cond_9

    .line 132
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;->startTimeMs()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v1, "startTime"

    .line 133
    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "startTimeMs"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    :cond_9
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 136
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 137
    sget-object v2, Lcom/netflix/cl/model/AppView;->ikoChoicePointUnlocked:Lcom/netflix/cl/model/AppView;

    .line 138
    new-instance v3, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3$Application;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3$Application;-><init>(Lorg/json/JSONObject;)V

    check-cast v3, Lcom/netflix/cl/model/TrackingInfo;

    .line 136
    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    .line 135
    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 140
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 141
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 142
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 144
    :cond_a
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto/16 :goto_8

    .line 146
    :cond_b
    invoke-virtual {p1}, Lo/UP$ContextWrapper;->d()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->choices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v6}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lo/UP$ContextWrapper;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v6}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lo/UP$ContextWrapper;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_1

    :cond_d
    const/4 v6, 0x0

    goto :goto_2

    :cond_e
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_c

    goto :goto_3

    :cond_f
    move-object v5, v4

    :goto_3
    move-object v1, v5

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/Choice;

    goto :goto_4

    :cond_10
    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_11

    .line 148
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {p1}, Lo/UP$ContextWrapper;->c()Ljava/lang/String;

    move-result-object v5

    :goto_5
    if-eqz v1, :cond_12

    .line 149
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {p1}, Lo/UP$ContextWrapper;->c()Ljava/lang/String;

    move-result-object v6

    .line 150
    :goto_6
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {p1}, Lo/UP$ContextWrapper;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 153
    invoke-virtual {p1}, Lo/UP$ContextWrapper;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    if-eqz v1, :cond_14

    .line 155
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->optionType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v2, "optionType"

    .line 156
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_14
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 159
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 160
    sget-object v3, Lcom/netflix/cl/model/AppView;->ikoChoicePointOption:Lcom/netflix/cl/model/AppView;

    .line 161
    new-instance v5, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3$Activity;

    invoke-direct {v5, v0}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3$Activity;-><init>(Lorg/json/JSONObject;)V

    check-cast v5, Lcom/netflix/cl/model/TrackingInfo;

    .line 159
    invoke-direct {v2, v3, v5}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    .line 158
    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lo/UP$ContextWrapper;->e()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 164
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    invoke-static {v1}, Lo/TS;->i(Lo/TS;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_15

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 166
    sget-object v3, Lo/TS;->a:Lo/TS$Activity;

    check-cast v3, Lo/MessagePdu;

    .line 167
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 168
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    check-cast v4, Ljava/lang/Long;

    invoke-static {v1, v4}, Lo/TS;->e(Lo/TS;Ljava/lang/Long;)V

    :cond_15
    if-eqz p1, :cond_17

    .line 170
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 171
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_7

    .line 174
    :cond_16
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    invoke-static {p1}, Lo/TS;->i(Lo/TS;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_17

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 175
    sget-object p1, Lo/TS;->a:Lo/TS$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 176
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 177
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e:Lo/TS;

    check-cast v4, Ljava/lang/Long;

    invoke-static {p1, v4}, Lo/TS;->e(Lo/TS;Ljava/lang/Long;)V

    .line 180
    :cond_17
    :goto_7
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_18
    :goto_8
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerInteractivePresenter$3;->e(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
