.class public final Lo/Nl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;-><init>(Landroid/view/View;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lo/Nl;


# direct methods
.method constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V
    .locals 12

    .line 138
    iget-object v0, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 139
    sget-object v1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 140
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v1}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 141
    :cond_1
    sget-object v1, Lo/Ni;->b:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 260
    :pswitch_0
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->k()V

    goto/16 :goto_3

    .line 240
    :pswitch_1
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->o(Lo/Nl;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->m(Lo/Nl;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-virtual {p1}, Lo/Nl;->b()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/GridView;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;ZZZILjava/lang/Object;)V

    .line 247
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1, v0, v5, v2, v4}, Lo/Nl;->c(Lo/Nl;Lo/Nh;ZILjava/lang/Object;)V

    goto :goto_1

    .line 241
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Z)V

    .line 249
    :goto_1
    invoke-virtual {v0, v5}, Lo/Nh;->e(Z)V

    .line 251
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->g(Lo/Nl;)Lcom/netflix/cl/model/event/session/action/Play;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 252
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 253
    new-instance v0, Lcom/netflix/cl/model/event/session/SessionCanceled;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/session/SessionCanceled;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    .line 254
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v0, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 255
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    check-cast v4, Lcom/netflix/cl/model/event/session/action/Play;

    invoke-static {p1, v4}, Lo/Nl;->b(Lo/Nl;Lcom/netflix/cl/model/event/session/action/Play;)V

    goto/16 :goto_3

    .line 200
    :pswitch_2
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v1}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v1

    invoke-virtual {v1, v5}, Lo/HZ;->c(I)V

    .line 201
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-virtual {v1}, Lo/Nl;->b()Lo/GridView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lo/GridView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v1}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Z)V

    .line 203
    invoke-virtual {v0, v3}, Lo/Nh;->e(Z)V

    .line 204
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v1}, Lo/Nl;->j(Lo/Nl;)J

    move-result-wide v1

    const-wide/16 v5, -0x1

    cmp-long v3, v1, v5

    if-eqz v3, :cond_4

    .line 205
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v5}, Lo/Nl;->j(Lo/Nl;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-static {v1, v2, v3}, Lo/Nl;->e(Lo/Nl;J)V

    .line 206
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v1}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v3}, Lo/Nl;->i(Lo/Nl;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " msec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 208
    :cond_4
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v1}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lo/Nh;->l()Z

    move-result v1

    if-nez v1, :cond_5

    .line 209
    iget-object v1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v1}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v1

    invoke-virtual {v1}, Lo/HZ;->f()Lio/reactivex/Observable;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v2}, Lo/Nl;->k(Lo/Nl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v5

    const-string v1, "video.clicks()\n         \u2026        .takeUntil(idles)"

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$1;-><init>(Lo/Nl$2;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    move-object v8, v1

    check-cast v8, Lo/alA;

    const/4 v7, 0x0

    .line 216
    new-instance v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$3$$special$$inlined$let$lambda$2;-><init>(Lo/Nl$2;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;)V

    move-object v6, v1

    check-cast v6, Lo/alA;

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 211
    invoke-static/range {v5 .. v10}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 218
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->l(Lo/Nl;)V

    .line 227
    :cond_5
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    .line 221
    new-instance v1, Lcom/netflix/cl/model/event/session/action/Play;

    .line 222
    invoke-static {p1}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object v2

    invoke-virtual {v2}, Lo/HZ;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 224
    invoke-virtual {v0}, Lo/Nh;->d()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 225
    iget-object v3, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v3}, Lo/Nl;->n(Lo/Nl;)Z

    move-result v3

    .line 223
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/cl/model/TrackingInfo;Z)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 221
    invoke-direct {v1, v2, v0}, Lcom/netflix/cl/model/event/session/action/Play;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 228
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 229
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v2, v1

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 227
    invoke-static {p1, v1}, Lo/Nl;->b(Lo/Nl;Lcom/netflix/cl/model/event/session/action/Play;)V

    .line 232
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->h(Lo/Nl;)Lcom/netflix/cl/model/event/session/action/StartPlay;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 233
    sget-object v0, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 234
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/action/StartPlay;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 235
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    check-cast v4, Lcom/netflix/cl/model/event/session/action/StartPlay;

    invoke-static {p1, v4}, Lo/Nl;->a(Lo/Nl;Lcom/netflix/cl/model/event/session/action/StartPlay;)V

    goto/16 :goto_3

    .line 152
    :pswitch_3
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lo/Nh;->l()Z

    move-result p1

    if-ne p1, v3, :cond_6

    .line 154
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->b(Lo/Nl;)Lo/HZ;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lo/HZ;->a(J)V

    .line 155
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-virtual {p1, v3}, Lo/Nl;->c(Z)V

    goto/16 :goto_3

    .line 157
    :cond_6
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-virtual {p1}, Lo/Nl;->b()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/GridView;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->g(Lo/Nl;)Lcom/netflix/cl/model/event/session/action/Play;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 160
    sget-object v1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 161
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/action/Play;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 162
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    check-cast v4, Lcom/netflix/cl/model/event/session/action/Play;

    invoke-static {p1, v4}, Lo/Nl;->b(Lo/Nl;Lcom/netflix/cl/model/event/session/action/Play;)V

    .line 164
    :cond_7
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1, v0, v3}, Lo/Nl;->b(Lo/Nl;Lo/Nh;Z)V

    .line 165
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 166
    invoke-virtual {p1}, Lo/Nh;->s()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lo/Nh;->r()Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->a(Lo/Nl;)Lo/UpdateEngine;

    move-result-object v0

    .line 193
    new-instance v1, Lo/Nj$Fragment;

    invoke-virtual {p1}, Lo/Nh;->f()I

    move-result p1

    invoke-direct {v1, p1}, Lo/Nj$Fragment;-><init>(I)V

    check-cast v1, Lo/VintfObject;

    .line 918
    const-class p1, Lo/Nj;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_3

    .line 147
    :pswitch_4
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-virtual {p1}, Lo/Nl;->b()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/GridView;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lo/Nl$2;->c:Lo/Nl;

    invoke-static {p1, v0, v5, v2, v4}, Lo/Nl;->c(Lo/Nl;Lo/Nh;ZILjava/lang/Object;)V

    goto :goto_3

    .line 271
    :goto_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :cond_8
    :goto_3
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
