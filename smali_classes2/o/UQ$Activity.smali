.class public final Lo/UQ$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UQ;->d(Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/UU;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lo/UQ;


# direct methods
.method constructor <init>(Lo/UQ;)V
    .locals 0

    iput-object p1, p0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lo/UQ$Activity;->e(Lo/UU;)V

    return-void
.end method

.method public final e(Lo/UU;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 189
    instance-of v2, v1, Lo/UW$LoaderManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 192
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 193
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 194
    new-instance v5, Lcom/netflix/cl/model/event/session/Presentation;

    .line 195
    sget-object v6, Lcom/netflix/cl/model/AppView;->playbackInterrupter:Lcom/netflix/cl/model/AppView;

    .line 194
    invoke-direct {v5, v6, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v5, Lcom/netflix/cl/model/event/session/Session;

    .line 193
    invoke-virtual {v2, v5}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v2

    .line 192
    invoke-interface {v1, v2}, Lo/UI;->d(Ljava/lang/Long;)V

    .line 201
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->am()V

    .line 202
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    sget-object v2, Lo/UP$Intent;->a:Lo/UP$Intent;

    check-cast v2, Lo/UP;

    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    .line 203
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v4}, Lo/UI;->g(Z)V

    .line 205
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ax()V

    goto/16 :goto_6

    .line 207
    :cond_0
    instance-of v2, v1, Lo/UW$Activity;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    .line 208
    check-cast v3, Lcom/netflix/model/leafs/advisory/ContentAction;

    .line 209
    check-cast v1, Lo/UW$Activity;

    invoke-virtual {v1}, Lo/UW$Activity;->a()I

    move-result v2

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    goto/16 :goto_0

    .line 238
    :cond_1
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ak()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_4

    .line 240
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 241
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Lo/UI;->d(Ljava/lang/Long;)V

    goto :goto_0

    .line 228
    :cond_2
    sget-object v3, Lcom/netflix/model/leafs/advisory/ContentAction;->NEVER_SHOW_AGAIN:Lcom/netflix/model/leafs/advisory/ContentAction;

    .line 230
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ak()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_4

    .line 232
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 233
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Lo/UI;->d(Ljava/lang/Long;)V

    goto :goto_0

    .line 211
    :cond_3
    sget-object v3, Lcom/netflix/model/leafs/advisory/ContentAction;->LOG_WHEN_SHOWN:Lcom/netflix/model/leafs/advisory/ContentAction;

    .line 212
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 213
    sget-object v5, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 215
    sget-object v6, Lcom/netflix/cl/model/AppView;->contentWarning:Lcom/netflix/cl/model/AppView;

    .line 217
    sget-object v8, Lo/amj;->c:Lo/amj;

    new-array v4, v4, [Ljava/lang/Object;

    .line 219
    invoke-virtual {v1}, Lo/UW$Activity;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 217
    array-length v7, v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v7, "{\"videoId\":\"%s\", \"advisoryType\":\"contentExpiry\"}"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v4, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    .line 214
    new-instance v7, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-direct {v7, v6, v4}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v7, Lcom/netflix/cl/model/event/session/Session;

    .line 213
    invoke-virtual {v5, v7}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v4

    .line 212
    invoke-interface {v2, v4}, Lo/UI;->a(Ljava/lang/Long;)V

    :cond_4
    :goto_0
    if-eqz v3, :cond_53

    .line 246
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ai()Lo/hW;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 247
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ai()Lo/hW;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 249
    invoke-virtual {v1}, Lo/UW$Activity;->b()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-interface {v2, v1, v3}, Lo/hW;->c(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ContentAction;)V

    sget-object v1, Lo/akj;->a:Lo/akj;

    .line 253
    :cond_5
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_6

    .line 255
    :cond_6
    instance-of v2, v1, Lo/UW$AssistContent;

    if-eqz v2, :cond_7

    goto/16 :goto_6

    .line 258
    :cond_7
    instance-of v2, v1, Lo/UW$PictureInPictureParams;

    if-eqz v2, :cond_8

    .line 259
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    check-cast v1, Lo/UW$PictureInPictureParams;

    invoke-virtual {v1}, Lo/UW$PictureInPictureParams;->b()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/UI;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    .line 260
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 261
    new-instance v3, Lo/UP$Drawable;

    .line 262
    invoke-virtual {v1}, Lo/UW$PictureInPictureParams;->b()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    .line 261
    invoke-direct {v3, v1}, Lo/UP$Drawable;-><init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    check-cast v3, Lo/UP;

    .line 260
    invoke-interface {v2, v3}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 266
    :cond_8
    instance-of v2, v1, Lo/UW$VoiceInteractor;

    if-eqz v2, :cond_a

    .line 267
    check-cast v1, Lo/UW$VoiceInteractor;

    invoke-virtual {v1}, Lo/UW$VoiceInteractor;->b()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    move-result-object v6

    .line 268
    invoke-virtual {v1}, Lo/UW$VoiceInteractor;->a()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v8

    .line 269
    invoke-virtual {v1}, Lo/UW$VoiceInteractor;->e()Ljava/util/List;

    move-result-object v7

    .line 270
    invoke-virtual {v1}, Lo/UW$VoiceInteractor;->c()F

    move-result v9

    .line 271
    invoke-virtual {v1}, Lo/UW$VoiceInteractor;->d()J

    move-result-wide v10

    .line 273
    sget-object v1, Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;->e:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    if-eq v6, v1, :cond_9

    .line 274
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    sget-object v2, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    check-cast v2, Lo/UP;

    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    .line 275
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v4}, Lo/UI;->i(Z)V

    .line 278
    :cond_9
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 279
    new-instance v2, Lo/UP$LoaderManager;

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lo/UP$LoaderManager;-><init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/Moment;FJ)V

    check-cast v2, Lo/UP;

    .line 278
    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 290
    :cond_a
    instance-of v2, v1, Lo/UU$ActionBar;

    if-eqz v2, :cond_b

    .line 291
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 292
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 293
    sget-object v5, Lcom/netflix/cl/model/AppView;->closeButton:Lcom/netflix/cl/model/AppView;

    .line 292
    invoke-direct {v2, v5, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 295
    new-instance v3, Lcom/netflix/cl/model/event/session/command/CloseCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/CloseCommand;-><init>()V

    check-cast v3, Lcom/netflix/cl/model/event/session/command/Command;

    .line 291
    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 297
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v4}, Lo/UI;->d(Z)V

    .line 298
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ad()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->exit()V

    goto/16 :goto_6

    .line 300
    :cond_b
    instance-of v2, v1, Lo/UU$SharedPreferences;

    if-eqz v2, :cond_c

    .line 301
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aj()V

    .line 302
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ao()V

    goto/16 :goto_6

    .line 304
    :cond_c
    instance-of v2, v1, Lo/UU$DialogInterface;

    if-eqz v2, :cond_d

    goto/16 :goto_6

    .line 307
    :cond_d
    instance-of v2, v1, Lo/UU$VoiceInteractor;

    if-eqz v2, :cond_f

    .line 308
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result v1

    if-ne v1, v4, :cond_e

    .line 309
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 310
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 311
    sget-object v4, Lcom/netflix/cl/model/AppView;->pauseButton:Lcom/netflix/cl/model/AppView;

    .line 310
    invoke-direct {v2, v4, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 313
    new-instance v3, Lcom/netflix/cl/model/event/session/command/PauseCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/PauseCommand;-><init>()V

    check-cast v3, Lcom/netflix/cl/model/event/session/command/Command;

    .line 309
    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 315
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->am()V

    goto/16 :goto_6

    .line 317
    :cond_e
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 318
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 319
    sget-object v4, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    .line 318
    invoke-direct {v2, v4, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 321
    new-instance v3, Lcom/netflix/cl/model/event/session/command/UnpauseCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/UnpauseCommand;-><init>()V

    check-cast v3, Lcom/netflix/cl/model/event/session/command/Command;

    .line 317
    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 323
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->al()V

    goto/16 :goto_6

    .line 326
    :cond_f
    instance-of v2, v1, Lo/UU$ClipData;

    if-eqz v2, :cond_12

    .line 327
    check-cast v1, Lo/UU$ClipData;

    invoke-virtual {v1}, Lo/UU$ClipData;->d()Z

    move-result v2

    .line 328
    invoke-virtual {v1}, Lo/UU$ClipData;->c()I

    move-result v5

    if-eqz v2, :cond_10

    .line 331
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 332
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 333
    sget-object v4, Lcom/netflix/cl/model/AppView;->trickplayScrubberThumb:Lcom/netflix/cl/model/AppView;

    .line 332
    invoke-direct {v2, v4, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 335
    new-instance v3, Lcom/netflix/cl/model/event/session/command/SeekCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/SeekCommand;-><init>()V

    check-cast v3, Lcom/netflix/cl/model/event/session/command/Command;

    .line 331
    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 337
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7}, Lo/UI;->h(Z)V

    .line 338
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    sget-object v2, Lo/UP$Rect;->b:Lo/UP$Rect;

    check-cast v2, Lo/UP;

    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    .line 339
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v5, v7}, Lo/UI;->e(IZ)V

    goto/16 :goto_6

    .line 341
    :cond_10
    invoke-virtual {v1}, Lo/UU$ClipData;->e()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 342
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    neg-int v2, v5

    invoke-interface {v1, v2, v4}, Lo/UI;->e(IZ)V

    goto/16 :goto_6

    .line 344
    :cond_11
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v5, v4}, Lo/UI;->e(IZ)V

    goto/16 :goto_6

    .line 348
    :cond_12
    instance-of v2, v1, Lo/UU$LoaderManager;

    if-eqz v2, :cond_13

    .line 349
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ar()V

    .line 350
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2, v4}, Lo/UI;->h(Z)V

    .line 352
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 353
    new-instance v3, Lo/UP$Paint;

    .line 354
    check-cast v1, Lo/UU$LoaderManager;

    invoke-virtual {v1}, Lo/UU$LoaderManager;->a()I

    move-result v4

    invoke-virtual {v1}, Lo/UU$LoaderManager;->b()I

    move-result v1

    .line 353
    invoke-direct {v3, v4, v1}, Lo/UP$Paint;-><init>(II)V

    check-cast v3, Lo/UP;

    .line 352
    invoke-interface {v2, v3}, Lo/UI;->c(Lo/UP;)V

    .line 358
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->am()V

    .line 359
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aq()V

    goto/16 :goto_6

    .line 361
    :cond_13
    instance-of v2, v1, Lo/UU$AssistContent;

    if-eqz v2, :cond_14

    .line 362
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->am()V

    .line 363
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 364
    new-instance v3, Lo/UP$Point;

    .line 365
    check-cast v1, Lo/UU$AssistContent;

    invoke-virtual {v1}, Lo/UU$AssistContent;->c()I

    move-result v4

    .line 366
    invoke-virtual {v1}, Lo/UU$AssistContent;->b()I

    move-result v5

    .line 367
    invoke-virtual {v1}, Lo/UU$AssistContent;->a()Z

    move-result v1

    .line 364
    invoke-direct {v3, v4, v5, v1}, Lo/UP$Point;-><init>(IIZ)V

    check-cast v3, Lo/UP;

    .line 363
    invoke-interface {v2, v3}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 371
    :cond_14
    instance-of v2, v1, Lo/UU$ComponentCallbacks2;

    if-eqz v2, :cond_16

    .line 372
    check-cast v1, Lo/UU$ComponentCallbacks2;

    invoke-virtual {v1}, Lo/UU$ComponentCallbacks2;->e()Z

    move-result v1

    .line 374
    sget-object v2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 375
    new-instance v4, Lcom/netflix/cl/model/event/session/Focus;

    if-eqz v1, :cond_15

    .line 376
    sget-object v5, Lcom/netflix/cl/model/AppView;->skipBackButton:Lcom/netflix/cl/model/AppView;

    goto :goto_1

    :cond_15
    sget-object v5, Lcom/netflix/cl/model/AppView;->skipAheadButton:Lcom/netflix/cl/model/AppView;

    .line 375
    :goto_1
    invoke-direct {v4, v5, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 374
    invoke-virtual {v2, v4, v1, v7}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;ZZ)V

    goto/16 :goto_6

    .line 382
    :cond_16
    instance-of v2, v1, Lo/UU$IntentFilter;

    if-eqz v2, :cond_17

    .line 383
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 384
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 385
    sget-object v4, Lcom/netflix/cl/model/AppView;->episodesSelector:Lcom/netflix/cl/model/AppView;

    .line 384
    invoke-direct {v2, v4, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 387
    new-instance v3, Lcom/netflix/cl/model/event/session/command/ViewEpisodesSelectorCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/ViewEpisodesSelectorCommand;-><init>()V

    check-cast v3, Lcom/netflix/cl/model/event/session/command/Command;

    .line 383
    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 390
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ar()V

    .line 391
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ap()V

    goto/16 :goto_6

    .line 393
    :cond_17
    instance-of v2, v1, Lo/UU$Context;

    if-eqz v2, :cond_18

    .line 394
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ar()V

    .line 395
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->an()V

    goto/16 :goto_6

    .line 399
    :cond_18
    instance-of v2, v1, Lo/UU$TaskStackBuilder;

    if-eqz v2, :cond_19

    .line 400
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->at()Lo/agg;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 401
    sget-object v2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 402
    new-instance v4, Lcom/netflix/cl/model/event/session/Focus;

    .line 403
    sget-object v5, Lcom/netflix/cl/model/AppView;->nextEpisodeButton:Lcom/netflix/cl/model/AppView;

    .line 407
    sget v6, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "trackId"

    .line 405
    invoke-static {v7, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 404
    invoke-static {v6}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v6

    .line 402
    invoke-direct {v4, v5, v6}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 411
    new-instance v5, Lcom/netflix/cl/model/event/session/command/PlayNextCommand;

    invoke-direct {v5}, Lcom/netflix/cl/model/event/session/command/PlayNextCommand;-><init>()V

    check-cast v5, Lcom/netflix/cl/model/event/session/command/Command;

    .line 401
    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 413
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 414
    new-instance v4, Lo/Tv;

    .line 415
    move-object v5, v1

    check-cast v5, Lo/Bc;

    .line 416
    sget-object v6, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 417
    invoke-interface {v1}, Lo/agg;->P()I

    move-result v1

    .line 414
    invoke-direct {v4, v5, v6, v1, v3}, Lo/Tv;-><init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 413
    invoke-interface {v2, v4}, Lo/UI;->d(Lo/Tv;)V

    .line 421
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_6

    .line 423
    :cond_19
    instance-of v2, v1, Lo/UU$PackageManager;

    if-eqz v2, :cond_1d

    .line 424
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 425
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 426
    sget-object v4, Lcom/netflix/cl/model/AppView;->skipIntroButton:Lcom/netflix/cl/model/AppView;

    .line 425
    invoke-direct {v2, v4, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 428
    new-instance v4, Lcom/netflix/cl/model/event/session/command/SkipAheadCommand;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/command/SkipAheadCommand;-><init>()V

    check-cast v4, Lcom/netflix/cl/model/event/session/command/Command;

    .line 424
    invoke-virtual {v1, v2, v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 430
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ae()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 432
    invoke-static {v1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v1

    .line 434
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lo/Bi;

    invoke-interface {v2, v4}, Lo/UI;->c(Lo/Bi;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 435
    sget-object v2, Lo/eI;->d:Lo/eI$TaskDescription;

    invoke-virtual {v2}, Lo/eI$TaskDescription;->b()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_53

    .line 438
    invoke-virtual {v1}, Lo/Tf;->aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-interface {v1}, Lcom/netflix/model/leafs/VideoInfo$TimeCodes;->getTimeCodesData()Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 437
    invoke-virtual {v1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 439
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 440
    invoke-virtual {v1}, Lcom/netflix/model/leafs/blades/CreditMarks;->endCredit()I

    move-result v1

    .line 439
    invoke-interface {v2, v1, v7}, Lo/UI;->e(IZ)V

    .line 443
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_6

    .line 446
    :cond_1a
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ae()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lo/AK;->aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/netflix/model/leafs/VideoInfo$TimeCodes;->getTimeCodesData()Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v1

    if-eqz v1, :cond_1b

    move-object v3, v1

    goto :goto_2

    .line 447
    :cond_1b
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ae()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lo/AK;->al()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v3

    :cond_1c
    :goto_2
    if-eqz v3, :cond_53

    .line 450
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 451
    invoke-virtual {v3}, Lcom/netflix/model/leafs/blades/CreditMarks;->endCredit()I

    move-result v2

    .line 450
    invoke-interface {v1, v2, v7}, Lo/UI;->e(IZ)V

    .line 454
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_6

    .line 458
    :cond_1d
    instance-of v2, v1, Lo/UU$AssetManager;

    if-eqz v2, :cond_22

    .line 459
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 460
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 461
    sget-object v4, Lcom/netflix/cl/model/AppView;->skipRecapButton:Lcom/netflix/cl/model/AppView;

    .line 460
    invoke-direct {v2, v4, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 463
    new-instance v4, Lcom/netflix/cl/model/event/session/command/SkipAheadCommand;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/command/SkipAheadCommand;-><init>()V

    check-cast v4, Lcom/netflix/cl/model/event/session/command/Command;

    .line 459
    invoke-virtual {v1, v2, v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 466
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aG()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 467
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aw()V

    goto/16 :goto_6

    .line 469
    :cond_1e
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ae()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 471
    invoke-static {v1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v1

    .line 473
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lo/Bi;

    invoke-interface {v2, v4}, Lo/UI;->c(Lo/Bi;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 474
    sget-object v2, Lo/eI;->d:Lo/eI$TaskDescription;

    invoke-virtual {v2}, Lo/eI$TaskDescription;->b()Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_53

    .line 477
    invoke-virtual {v1}, Lo/Tf;->aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-interface {v1}, Lcom/netflix/model/leafs/VideoInfo$TimeCodes;->getTimeCodesData()Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 476
    invoke-virtual {v1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 478
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 479
    invoke-virtual {v1}, Lcom/netflix/model/leafs/blades/CreditMarks;->endRecap()I

    move-result v1

    .line 478
    invoke-interface {v2, v1, v7}, Lo/UI;->e(IZ)V

    .line 482
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_6

    .line 485
    :cond_1f
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ae()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Lo/AK;->aj()Lcom/netflix/model/leafs/VideoInfo$TimeCodes;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Lcom/netflix/model/leafs/VideoInfo$TimeCodes;->getTimeCodesData()Lcom/netflix/model/leafs/TimeCodesData;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/netflix/model/leafs/TimeCodesData;->creditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v1

    if-eqz v1, :cond_20

    move-object v3, v1

    goto :goto_3

    .line 486
    :cond_20
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->ae()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-interface {v1}, Lo/AK;->al()Lcom/netflix/model/leafs/blades/CreditMarks;

    move-result-object v3

    :cond_21
    :goto_3
    if-eqz v3, :cond_53

    .line 489
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 490
    invoke-virtual {v3}, Lcom/netflix/model/leafs/blades/CreditMarks;->endRecap()I

    move-result v2

    .line 489
    invoke-interface {v1, v2, v7}, Lo/UI;->e(IZ)V

    .line 493
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_6

    .line 498
    :cond_22
    instance-of v2, v1, Lo/UU$IntentSender;

    if-eqz v2, :cond_24

    .line 499
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->aG()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 500
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aw()V

    goto/16 :goto_6

    .line 502
    :cond_23
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 503
    check-cast v1, Lo/UU$IntentSender;

    invoke-virtual {v1}, Lo/UU$IntentSender;->d()I

    move-result v1

    .line 502
    invoke-interface {v2, v1, v7}, Lo/UI;->e(IZ)V

    goto/16 :goto_6

    .line 508
    :cond_24
    instance-of v2, v1, Lo/UW$Fragment;

    if-eqz v2, :cond_25

    .line 509
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ah()V

    .line 510
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    check-cast v1, Lo/UW$Fragment;

    invoke-virtual {v1}, Lo/UW$Fragment;->a()Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/UI;->b(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;)V

    goto/16 :goto_6

    .line 512
    :cond_25
    instance-of v2, v1, Lo/UW$FragmentManager;

    if-eqz v2, :cond_26

    .line 513
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->N()V

    goto/16 :goto_6

    .line 515
    :cond_26
    instance-of v2, v1, Lo/UU$ServiceConnection;

    if-eqz v2, :cond_27

    goto/16 :goto_6

    .line 518
    :cond_27
    instance-of v2, v1, Lo/UU$PackageItemInfo;

    if-eqz v2, :cond_28

    goto/16 :goto_6

    .line 521
    :cond_28
    instance-of v2, v1, Lo/UU$Configuration;

    if-eqz v2, :cond_29

    goto/16 :goto_6

    .line 524
    :cond_29
    instance-of v2, v1, Lo/UU$BroadcastReceiver;

    if-eqz v2, :cond_2b

    .line 525
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->az()Z

    move-result v2

    if-nez v2, :cond_53

    .line 526
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ay()Z

    move-result v2

    if-nez v2, :cond_53

    .line 527
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->au()Z

    move-result v2

    if-nez v2, :cond_53

    .line 530
    check-cast v1, Lo/UU$BroadcastReceiver;

    invoke-virtual {v1}, Lo/UU$BroadcastReceiver;->d()Z

    move-result v2

    .line 532
    invoke-virtual {v1}, Lo/UU$BroadcastReceiver;->c()Z

    move-result v1

    .line 533
    iget-object v5, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v5}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v5

    xor-int/2addr v1, v4

    invoke-interface {v5, v1}, Lo/UI;->i(Z)V

    .line 535
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 536
    new-instance v5, Lo/UP$Fragment;

    invoke-direct {v5, v2}, Lo/UP$Fragment;-><init>(Z)V

    check-cast v5, Lo/UP;

    .line 535
    invoke-interface {v1, v5}, Lo/UI;->c(Lo/UP;)V

    if-eqz v2, :cond_2a

    .line 541
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 542
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 543
    sget-object v5, Lcom/netflix/cl/model/AppView;->skipBackButton:Lcom/netflix/cl/model/AppView;

    .line 542
    invoke-direct {v2, v5, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 541
    invoke-virtual {v1, v2, v4, v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;ZZ)V

    .line 548
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    const/16 v2, -0x2710

    invoke-interface {v1, v2, v4}, Lo/UI;->e(IZ)V

    goto/16 :goto_6

    .line 550
    :cond_2a
    sget-object v1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 551
    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    .line 552
    sget-object v5, Lcom/netflix/cl/model/AppView;->skipAheadButton:Lcom/netflix/cl/model/AppView;

    .line 551
    invoke-direct {v2, v5, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 550
    invoke-virtual {v1, v2, v7, v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;ZZ)V

    .line 557
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-interface {v1, v2, v4}, Lo/UI;->e(IZ)V

    goto/16 :goto_6

    .line 561
    :cond_2b
    instance-of v2, v1, Lo/UU$Activity;

    if-eqz v2, :cond_2d

    .line 563
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->az()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->au()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 564
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7}, Lo/UI;->j(Z)V

    .line 565
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v4}, Lo/UI;->n(Z)V

    .line 566
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 567
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 568
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->as()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlaybackBackgroundable(Z)V

    sget-object v1, Lo/akj;->a:Lo/akj;

    .line 572
    :cond_2c
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    sget-object v2, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    check-cast v2, Lo/UP;

    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 574
    :cond_2d
    instance-of v2, v1, Lo/UU$ContextWrapper;

    if-eqz v2, :cond_2e

    .line 576
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    sget-object v2, Lo/UP$FragmentManager;->c:Lo/UP$FragmentManager;

    check-cast v2, Lo/UP;

    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 578
    :cond_2e
    instance-of v2, v1, Lo/UU$SharedElementCallback;

    if-eqz v2, :cond_2f

    .line 579
    new-instance v1, Lcom/netflix/cl/model/event/session/command/FitVideoCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/FitVideoCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 580
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7}, Lo/UI;->f(Z)V

    goto/16 :goto_6

    .line 582
    :cond_2f
    instance-of v2, v1, Lo/UU$PictureInPictureParams;

    if-eqz v2, :cond_30

    .line 583
    new-instance v1, Lcom/netflix/cl/model/event/session/command/FillVideoCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/FillVideoCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 584
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v4}, Lo/UI;->f(Z)V

    goto/16 :goto_6

    .line 586
    :cond_30
    instance-of v2, v1, Lo/UU$Cursor;

    if-eqz v2, :cond_31

    goto/16 :goto_6

    .line 591
    :cond_31
    instance-of v2, v1, Lo/UU$ComponentCallbacks;

    if-eqz v2, :cond_33

    .line 593
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->az()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->au()Z

    move-result v1

    if-nez v1, :cond_32

    .line 594
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7}, Lo/UI;->j(Z)V

    .line 595
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v4}, Lo/UI;->n(Z)V

    .line 596
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 597
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 598
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->as()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlaybackBackgroundable(Z)V

    sget-object v1, Lo/akj;->a:Lo/akj;

    .line 602
    :cond_32
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    sget-object v2, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    check-cast v2, Lo/UP;

    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 604
    :cond_33
    instance-of v2, v1, Lo/UU$ComponentName;

    if-eqz v2, :cond_35

    .line 605
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->az()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 606
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7}, Lo/UI;->j(Z)V

    .line 607
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v4}, Lo/UI;->n(Z)V

    .line 610
    :cond_34
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    sget-object v2, Lo/UP$StateListAnimator;->c:Lo/UP$StateListAnimator;

    check-cast v2, Lo/UP;

    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    .line 611
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aw()V

    goto/16 :goto_6

    .line 613
    :cond_35
    instance-of v2, v1, Lo/UU$Fragment;

    if-eqz v2, :cond_37

    .line 614
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aB()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-lez v3, :cond_36

    .line 615
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->aB()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 616
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/UI;->d(Ljava/lang/Long;)V

    .line 618
    :cond_36
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7}, Lo/UI;->g(Z)V

    .line 619
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->al()V

    goto/16 :goto_6

    .line 621
    :cond_37
    instance-of v2, v1, Lo/UU$FragmentManager;

    if-eqz v2, :cond_39

    .line 622
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aB()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-lez v3, :cond_38

    .line 623
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->aB()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 624
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/UI;->d(Ljava/lang/Long;)V

    .line 627
    :cond_38
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7}, Lo/UI;->g(Z)V

    .line 628
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7, v7}, Lo/UI;->e(IZ)V

    goto/16 :goto_6

    .line 630
    :cond_39
    instance-of v2, v1, Lo/UU$PendingIntent;

    if-eqz v2, :cond_3b

    .line 631
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aB()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-lez v3, :cond_3a

    .line 632
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->aB()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 633
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/UI;->d(Ljava/lang/Long;)V

    .line 636
    :cond_3a
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1, v7}, Lo/UI;->g(Z)V

    .line 637
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aA()V

    goto/16 :goto_6

    .line 639
    :cond_3b
    instance-of v2, v1, Lo/UU$ColorStateList;

    if-eqz v2, :cond_3c

    .line 640
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    check-cast v1, Lo/UU$ColorStateList;

    invoke-virtual {v1}, Lo/UU$ColorStateList;->d()Lo/Tv;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/UI;->d(Lo/Tv;)V

    goto/16 :goto_6

    .line 642
    :cond_3c
    instance-of v2, v1, Lo/UU$ContentResolver;

    if-eqz v2, :cond_3d

    goto/16 :goto_6

    .line 647
    :cond_3d
    instance-of v2, v1, Lo/UU$Intent;

    if-eqz v2, :cond_3f

    .line 648
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ay()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 649
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2, v4}, Lo/UI;->d(IZ)V

    goto/16 :goto_6

    .line 654
    :cond_3e
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 655
    check-cast v1, Lo/UU$Intent;

    invoke-virtual {v1}, Lo/UU$Intent;->c()I

    move-result v3

    .line 656
    invoke-virtual {v1}, Lo/UU$Intent;->b()Z

    move-result v1

    .line 654
    invoke-interface {v2, v3, v1}, Lo/UI;->d(IZ)V

    goto/16 :goto_6

    .line 660
    :cond_3f
    instance-of v2, v1, Lo/UW$ActionBar;

    if-eqz v2, :cond_43

    .line 661
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v2

    .line 662
    check-cast v1, Lo/UW$ActionBar;

    invoke-virtual {v1}, Lo/UW$ActionBar;->c()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 663
    iget-object v4, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v4}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v4

    invoke-interface {v4, v3}, Lo/UI;->a(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    .line 664
    sget-object v3, Lo/akj;->a:Lo/akj;

    .line 665
    :cond_40
    invoke-virtual {v1}, Lo/UW$ActionBar;->b()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 666
    iget-object v3, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v3}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v3

    invoke-interface {v3}, Lo/UI;->af()V

    .line 668
    :cond_41
    iget-object v3, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v3}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v3

    .line 669
    new-instance v4, Lo/UP$ContextWrapper;

    .line 670
    invoke-virtual {v1}, Lo/UW$ActionBar;->d()Ljava/lang/String;

    move-result-object v8

    .line 671
    invoke-virtual {v1}, Lo/UW$ActionBar;->e()Ljava/lang/String;

    move-result-object v9

    .line 672
    invoke-virtual {v1}, Lo/UW$ActionBar;->a()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v10

    .line 673
    invoke-virtual {v1}, Lo/UW$ActionBar;->b()Z

    move-result v11

    const/4 v12, 0x0

    .line 675
    invoke-virtual {v1}, Lo/UW$ActionBar;->i()Ljava/lang/String;

    move-result-object v13

    move-object v7, v4

    .line 669
    invoke-direct/range {v7 .. v13}, Lo/UP$ContextWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Moment;ZZLjava/lang/String;)V

    check-cast v4, Lo/UP;

    .line 668
    invoke-interface {v3, v4}, Lo/UI;->c(Lo/UP;)V

    .line 678
    instance-of v3, v2, Lo/XO;

    if-eqz v3, :cond_53

    .line 679
    invoke-virtual {v1}, Lo/UW$ActionBar;->e()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-static {v3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 682
    check-cast v2, Lo/XO;

    invoke-virtual {v2}, Lo/XO;->o()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 683
    invoke-virtual {v1}, Lo/UW$ActionBar;->g()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 685
    iget-object v3, v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    .line 686
    invoke-virtual {v1}, Lo/UW$ActionBar;->e()Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-virtual {v2, v3, v1}, Lo/XO;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto/16 :goto_6

    .line 689
    :cond_42
    invoke-virtual {v1}, Lo/UW$ActionBar;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 690
    new-instance v4, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    iget-object v3, v3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->a:Ljava/lang/String;

    invoke-direct {v4, v3, v1, v5, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 691
    invoke-virtual {v2, v4}, Lo/XO;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    .line 692
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_6

    .line 697
    :cond_43
    instance-of v2, v1, Lo/UW$Application;

    if-eqz v2, :cond_44

    .line 699
    move-object v2, v1

    check-cast v2, Lo/UW$Application;

    invoke-virtual {v2}, Lo/UW$Application;->c()Ljava/lang/String;

    move-result-object v2

    .line 700
    iget-object v3, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v3}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v3

    invoke-interface {v3}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v3

    .line 701
    new-instance v4, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;

    invoke-direct {v4, v0, v1}, Lcom/netflix/mediaclient/ui/player/v2/PlayerUI$initializeUserEventsObservable$1$7;-><init>(Lo/UQ$Activity;Lo/UU;)V

    check-cast v4, Lo/alN;

    .line 698
    invoke-static {v2, v3, v4}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 738
    :cond_44
    instance-of v2, v1, Lo/UW$PendingIntent;

    if-eqz v2, :cond_46

    .line 739
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    check-cast v1, Lo/UW$PendingIntent;

    invoke-virtual {v1}, Lo/UW$PendingIntent;->e()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/UI;->a(Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    .line 740
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aC()Lo/Tv;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 741
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 742
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/context/iko/UserState;

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/context/iko/UserState;-><init>(Lorg/json/JSONObject;)V

    check-cast v3, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 744
    :cond_45
    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_6

    .line 746
    :cond_46
    instance-of v2, v1, Lo/UW$StateListAnimator;

    if-eqz v2, :cond_47

    .line 747
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 748
    new-instance v3, Lo/UP$Activity;

    .line 749
    check-cast v1, Lo/UW$StateListAnimator;

    invoke-virtual {v1}, Lo/UW$StateListAnimator;->d()I

    move-result v4

    .line 750
    invoke-virtual {v1}, Lo/UW$StateListAnimator;->a()Z

    move-result v1

    .line 748
    invoke-direct {v3, v4, v1}, Lo/UP$Activity;-><init>(IZ)V

    check-cast v3, Lo/UP;

    .line 747
    invoke-interface {v2, v3}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 754
    :cond_47
    instance-of v2, v1, Lo/UW$TaskDescription;

    if-eqz v2, :cond_4b

    .line 755
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->at()Lo/agg;

    move-result-object v2

    .line 756
    new-instance v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 757
    check-cast v1, Lo/UW$TaskDescription;

    invoke-virtual {v1}, Lo/UW$TaskDescription;->b()Ljava/lang/String;

    move-result-object v5

    .line 758
    invoke-virtual {v1}, Lo/UW$TaskDescription;->c()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_48

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    :cond_48
    const/4 v6, -0x1

    .line 756
    :goto_4
    invoke-direct {v4, v5, v6, v7, v7}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 762
    iget-object v5, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v5}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v5

    .line 763
    new-instance v15, Lo/UP$ContextWrapper;

    .line 764
    invoke-virtual {v1}, Lo/UW$TaskDescription;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 766
    invoke-virtual {v1}, Lo/UW$TaskDescription;->d()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x20

    const/4 v14, 0x0

    move-object v6, v15

    .line 763
    invoke-direct/range {v6 .. v14}, Lo/UP$ContextWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Moment;ZZLjava/lang/String;ILo/amc;)V

    check-cast v15, Lo/UP;

    .line 762
    invoke-interface {v5, v15}, Lo/UI;->c(Lo/UP;)V

    .line 771
    invoke-virtual {v1}, Lo/UW$TaskDescription;->i()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 772
    iget-object v5, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v5}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v5

    invoke-interface {v5}, Lo/UI;->af()V

    goto :goto_5

    .line 774
    :cond_49
    iget-object v5, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v5}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v5

    invoke-interface {v5}, Lo/UI;->aD()V

    :goto_5
    if-eqz v2, :cond_4a

    .line 777
    iget-object v5, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v5}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v5

    .line 778
    new-instance v6, Lo/Tv;

    .line 779
    check-cast v2, Lo/Bc;

    .line 780
    check-cast v4, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 781
    invoke-virtual {v1}, Lo/UW$TaskDescription;->g()I

    move-result v1

    .line 778
    invoke-direct {v6, v2, v4, v1, v3}, Lo/Tv;-><init>(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V

    .line 777
    invoke-interface {v5, v6}, Lo/UI;->d(Lo/Tv;)V

    goto/16 :goto_6

    .line 786
    :cond_4a
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->aA()V

    .line 787
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    invoke-interface {v2}, Lo/UI;->ad()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    .line 791
    invoke-virtual {v1}, Lo/UW$TaskDescription;->e()Ljava/lang/String;

    move-result-object v3

    .line 792
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 793
    check-cast v4, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 794
    new-instance v15, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v6, v15

    .line 795
    invoke-virtual {v1}, Lo/UW$TaskDescription;->g()I

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 797
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aF()I

    move-result v10

    const/4 v14, 0x0

    const/4 v1, 0x0

    move-object/from16 v24, v15

    move v15, v1

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1fda

    const/16 v23, 0x0

    .line 794
    invoke-direct/range {v6 .. v23}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    move-object/from16 v1, v24

    .line 789
    invoke-static {v2, v3, v5, v4, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto/16 :goto_6

    .line 802
    :cond_4b
    sget-object v2, Lo/UW$Dialog;->d:Lo/UW$Dialog;

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 803
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->aE()V

    goto/16 :goto_6

    .line 805
    :cond_4c
    instance-of v2, v1, Lo/UU$TypedArray;

    if-eqz v2, :cond_4d

    .line 806
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    .line 807
    new-instance v3, Lo/UP$TypedArray;

    check-cast v1, Lo/UU$TypedArray;

    invoke-virtual {v1}, Lo/UU$TypedArray;->e()Lcom/netflix/model/leafs/PostPlayItem;

    move-result-object v1

    invoke-direct {v3, v1}, Lo/UP$TypedArray;-><init>(Lcom/netflix/model/leafs/PostPlayItem;)V

    check-cast v3, Lo/UP;

    .line 806
    invoke-interface {v2, v3}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 810
    :cond_4d
    instance-of v2, v1, Lo/UU$ApplicationInfo;

    if-eqz v2, :cond_4e

    .line 811
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->F()V

    goto/16 :goto_6

    .line 813
    :cond_4e
    instance-of v2, v1, Lo/UU$Theme;

    if-eqz v2, :cond_4f

    .line 814
    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v2

    check-cast v1, Lo/UU$Theme;

    invoke-virtual {v1}, Lo/UU$Theme;->d()F

    move-result v1

    invoke-interface {v2, v1}, Lo/UI;->b(F)V

    .line 815
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 816
    sget-object v2, Lo/UP$TaskStackBuilder;->e:Lo/UP$TaskStackBuilder;

    check-cast v2, Lo/UP;

    .line 815
    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    goto/16 :goto_6

    .line 819
    :cond_4f
    instance-of v2, v1, Lo/UU$Dialog;

    if-eqz v2, :cond_51

    .line 820
    check-cast v1, Lo/UU$Dialog;

    invoke-virtual {v1}, Lo/UU$Dialog;->b()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 822
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 823
    new-instance v2, Lo/UP$SQLiteDatabase;

    iget-object v3, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v3}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v3

    invoke-interface {v3}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lo/UP$SQLiteDatabase;-><init>(ZLcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    check-cast v2, Lo/UP;

    .line 822
    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    .line 825
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 826
    sget-object v2, Lo/UP$DialogInterface;->d:Lo/UP$DialogInterface;

    check-cast v2, Lo/UP;

    .line 825
    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    .line 828
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/UiLocked;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/UiLocked;-><init>()V

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lo/UQ;->d(Lo/UQ;Ljava/lang/Long;)V

    goto :goto_6

    .line 830
    :cond_50
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 831
    new-instance v2, Lo/UP$SQLiteDatabase;

    iget-object v3, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v3}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v3

    invoke-interface {v3}, Lo/UI;->av()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lo/UP$SQLiteDatabase;-><init>(ZLcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    check-cast v2, Lo/UP;

    .line 830
    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    .line 833
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v2}, Lo/UQ;->b(Lo/UQ;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_6

    .line 836
    :cond_51
    instance-of v2, v1, Lo/UU$Application;

    if-eqz v2, :cond_52

    .line 837
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    .line 838
    sget-object v2, Lo/UP$TaskStackBuilder;->e:Lo/UP$TaskStackBuilder;

    check-cast v2, Lo/UP;

    .line 837
    invoke-interface {v1, v2}, Lo/UI;->c(Lo/UP;)V

    goto :goto_6

    .line 841
    :cond_52
    instance-of v1, v1, Lo/UU$DatabaseErrorHandler;

    if-eqz v1, :cond_53

    .line 842
    iget-object v1, v0, Lo/UQ$Activity;->c:Lo/UQ;

    invoke-static {v1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v1

    invoke-interface {v1}, Lo/UI;->G()V

    :cond_53
    :goto_6
    return-void
.end method
