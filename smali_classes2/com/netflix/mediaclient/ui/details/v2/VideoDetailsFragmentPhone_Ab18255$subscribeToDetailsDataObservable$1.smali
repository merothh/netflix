.class public final Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN;->a(Lio/reactivex/Observable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/FC;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/FN;

.field final synthetic e:Z


# direct methods
.method public constructor <init>(Lo/FN;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/FC;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 199
    instance-of v2, v1, Lo/FC$ActionBar;

    const-string v3, "CommonStatus.OK"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    .line 200
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 202
    check-cast v1, Lo/FC$ActionBar;

    invoke-virtual {v1}, Lo/FC$ActionBar;->c()Lo/Ay;

    move-result-object v2

    .line 205
    sget-object v7, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v7}, Lo/eG$Application;->b()Z

    move-result v7

    const-string v8, "summary.title"

    if-eqz v7, :cond_0

    .line 206
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 207
    new-instance v9, Lo/DC$Context;

    .line 208
    invoke-interface {v2}, Lo/Ay;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-interface {v2}, Lo/Ay;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, "summary.boxshotUrl"

    invoke-static {v11, v12}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-direct {v9, v10, v11}, Lo/DC$Context;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v9, Lo/VintfObject;

    .line 1162
    const-class v10, Lo/DC;

    invoke-virtual {v7, v10, v9}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 215
    new-instance v9, Lo/DC$SharedPreferences;

    .line 216
    invoke-interface {v2}, Lo/Ay;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-direct {v9, v10}, Lo/DC$SharedPreferences;-><init>(Ljava/lang/String;)V

    check-cast v9, Lo/VintfObject;

    .line 1164
    const-class v10, Lo/DC;

    invoke-virtual {v7, v10, v9}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 221
    :goto_0
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 222
    new-instance v9, Lo/DC$ContentResolver;

    .line 223
    invoke-interface {v2}, Lo/Ay;->isPreRelease()Z

    move-result v10

    .line 224
    invoke-interface {v2}, Lo/Ay;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {v9, v10, v11}, Lo/DC$ContentResolver;-><init>(ZLjava/lang/String;)V

    check-cast v9, Lo/VintfObject;

    .line 1166
    const-class v8, Lo/DC;

    invoke-virtual {v7, v8, v9}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 228
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 229
    new-instance v8, Lo/DC$StateListAnimator;

    invoke-interface {v2}, Lo/Ay;->isInQueue()Z

    move-result v9

    invoke-direct {v8, v9}, Lo/DC$StateListAnimator;-><init>(Z)V

    check-cast v8, Lo/VintfObject;

    .line 1168
    const-class v9, Lo/DC;

    invoke-virtual {v7, v9, v8}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 232
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 233
    sget-object v8, Lo/DC$Application;->a:Lo/DC$Application;

    check-cast v8, Lo/VintfObject;

    .line 1170
    const-class v9, Lo/DC;

    invoke-virtual {v7, v9, v8}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 236
    sget-object v7, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v7}, Lo/eG$Application;->d()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 237
    sget-object v7, Lo/DJ;->e:Lo/DJ;

    iget-object v8, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v8}, Lo/FN;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/DJ;->d(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 238
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 239
    sget-object v8, Lo/DC$VoiceInteractor;->e:Lo/DC$VoiceInteractor;

    check-cast v8, Lo/VintfObject;

    .line 1172
    const-class v9, Lo/DC;

    invoke-virtual {v7, v9, v8}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 243
    :cond_1
    invoke-interface {v2}, Lo/Ay;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v7, v8, :cond_2

    .line 244
    iget-object v9, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    .line 245
    invoke-interface {v2}, Lo/Ay;->getId()Ljava/lang/String;

    move-result-object v10

    const-string v1, "summary.id"

    invoke-static {v10, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-interface {v2}, Lo/Ay;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v11

    const-string v1, "summary.type"

    invoke-static {v11, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-interface {v2}, Lo/Ay;->isAvailableForDownload()Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x18

    const/16 v16, 0x0

    .line 244
    invoke-static/range {v9 .. v16}, Lo/FN;->c(Lo/FN;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;IILjava/lang/Object;)V

    goto :goto_1

    .line 249
    :cond_2
    invoke-interface {v2}, Lo/Ay;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v7, :cond_4

    sget-object v2, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v2}, Lo/eG$Application;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    invoke-virtual {v1}, Lo/FC$ActionBar;->d()Lo/Bd;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 251
    invoke-interface {v1}, Lo/Bd;->getPlayableId()Ljava/lang/String;

    move-result-object v5

    :cond_3
    new-instance v2, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$2;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$2;-><init>(Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;)V

    check-cast v2, Lo/alN;

    invoke-static {v1, v5, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 261
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v1}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v1

    .line 262
    sget-object v2, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    check-cast v2, Lo/VintfObject;

    .line 1174
    const-class v5, Lo/ApduList;

    invoke-virtual {v1, v5, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 266
    iget-boolean v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e:Z

    if-nez v1, :cond_5

    .line 268
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v1}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v1

    .line 269
    new-instance v2, Lo/DC$ApplicationInfo;

    invoke-direct {v2, v6}, Lo/DC$ApplicationInfo;-><init>(Z)V

    check-cast v2, Lo/VintfObject;

    .line 1176
    const-class v5, Lo/DC;

    invoke-virtual {v1, v5, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 275
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v1}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v1

    .line 276
    new-instance v2, Lo/DC$ApplicationInfo;

    invoke-direct {v2, v4}, Lo/DC$ApplicationInfo;-><init>(Z)V

    check-cast v2, Lo/VintfObject;

    .line 1178
    const-class v4, Lo/DC;

    invoke-virtual {v1, v4, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 283
    :cond_5
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v1}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v1

    .line 284
    sget-object v2, Lo/FH$BroadcastReceiver;->e:Lo/FH$BroadcastReceiver;

    check-cast v2, Lo/VintfObject;

    .line 1180
    const-class v4, Lo/FH;

    invoke-virtual {v1, v4, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 288
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v1}, Lo/FN;->h(Lo/FN;)Lo/DD;

    move-result-object v1

    if-eqz v1, :cond_26

    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v1, v2}, Lo/DD;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_a

    .line 290
    :cond_6
    instance-of v2, v1, Lo/FC$StateListAnimator;

    if-eqz v2, :cond_14

    .line 291
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v2}, Lo/FN;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 292
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 297
    sget-object v2, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v2}, Lo/eG$Application;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e:Z

    if-nez v2, :cond_7

    .line 298
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 299
    new-instance v7, Lo/DC$IntentSender;

    invoke-direct {v7, v6, v4}, Lo/DC$IntentSender;-><init>(ZZ)V

    check-cast v7, Lo/VintfObject;

    .line 1187
    const-class v8, Lo/DC;

    invoke-virtual {v2, v8, v7}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 306
    :cond_7
    check-cast v1, Lo/FC$StateListAnimator;

    invoke-virtual {v1}, Lo/FC$StateListAnimator;->c()Lo/Bc;

    move-result-object v2

    .line 307
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7, v2}, Lo/FN;->a(Lo/FN;Lo/Bc;)V

    .line 310
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-interface {v2}, Lo/Bc;->aW()Z

    move-result v8

    invoke-static {v7, v8}, Lo/FN;->e(Lo/FN;Z)V

    .line 312
    invoke-interface {v2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v7, v8, :cond_9

    .line 313
    instance-of v7, v2, Lo/Bb;

    if-nez v7, :cond_8

    move-object v7, v5

    goto :goto_2

    :cond_8
    move-object v7, v2

    :goto_2
    check-cast v7, Lo/Bb;

    if-eqz v7, :cond_9

    invoke-interface {v7}, Lo/Bb;->aG()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    goto :goto_3

    :cond_9
    move-object v12, v5

    .line 319
    :goto_3
    sget-object v7, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v7}, Lo/eG$Application;->b()Z

    move-result v7

    if-nez v7, :cond_a

    .line 320
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 321
    new-instance v8, Lo/DC$Context;

    .line 322
    invoke-interface {v2}, Lo/Bc;->getTitle()Ljava/lang/String;

    move-result-object v9

    const-string v10, "videoDetails.title"

    invoke-static {v9, v10}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-interface {v2}, Lo/Bc;->aX()Ljava/lang/String;

    move-result-object v10

    const-string v11, "videoDetails.storyUrl"

    invoke-static {v10, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-direct {v8, v9, v10}, Lo/DC$Context;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v8, Lo/VintfObject;

    .line 1189
    const-class v9, Lo/DC;

    invoke-virtual {v7, v9, v8}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_6

    .line 330
    :cond_a
    invoke-interface {v2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v7, v8, :cond_d

    .line 331
    instance-of v7, v2, Lo/Bb;

    if-nez v7, :cond_b

    move-object v7, v5

    goto :goto_4

    :cond_b
    move-object v7, v2

    :goto_4
    check-cast v7, Lo/Bb;

    if-eqz v7, :cond_c

    invoke-interface {v7}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_c
    move-object v7, v5

    goto :goto_5

    .line 333
    :cond_d
    invoke-interface {v2}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_e

    .line 337
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->d(Lo/FN;)Lo/FL;

    move-result-object v13

    .line 338
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->c(Lo/FN;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "videoId"

    invoke-static {v14, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x36

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lo/FI;->a(Lo/FI;Ljava/lang/String;ZZZZZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v7

    .line 339
    iget-object v8, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v8}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v8

    invoke-virtual {v8}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v8

    check-cast v8, Lio/reactivex/ObservableSource;

    invoke-virtual {v7, v8}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v13

    const-string v7, "detailsPageRepositoryAb1\u2026y.getDestroyObservable())"

    invoke-static {v13, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 341
    new-instance v7, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$$special$$inlined$let$lambda$1;

    invoke-direct {v7, v0}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1$$special$$inlined$let$lambda$1;-><init>(Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;)V

    move-object/from16 v16, v7

    check-cast v16, Lo/alA;

    const/16 v17, 0x3

    const/16 v18, 0x0

    .line 340
    invoke-static/range {v13 .. v18}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 370
    :cond_e
    :goto_6
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 371
    new-instance v14, Lo/DC$ClipData;

    .line 372
    invoke-interface {v2}, Lo/Bc;->aI()I

    move-result v9

    .line 373
    invoke-interface {v2}, Lo/Bc;->bj()Ljava/util/List;

    move-result-object v10

    .line 374
    invoke-interface {v2}, Lo/Bc;->aQ()Ljava/lang/String;

    move-result-object v11

    .line 376
    invoke-interface {v2}, Lo/Bc;->bb()Lo/AK;

    move-result-object v8

    const-string v15, "videoDetails.playable"

    invoke-static {v8, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lo/AK;->S()I

    move-result v13

    move-object v8, v14

    .line 371
    invoke-direct/range {v8 .. v13}, Lo/DC$ClipData;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v14, Lo/VintfObject;

    .line 1191
    const-class v8, Lo/DC;

    invoke-virtual {v7, v8, v14}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 379
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7, v2}, Lo/FN;->b(Lo/FN;Lo/Bc;)V

    .line 382
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v7, v2}, Lo/FN;->k(Lo/Bc;)V

    .line 384
    invoke-interface {v2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v7, v8, :cond_f

    .line 385
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    .line 386
    invoke-interface {v2}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "videoDetails.id"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-interface {v2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v8

    const-string v9, "videoDetails.type"

    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-interface {v2}, Lo/Bc;->bb()Lo/AK;

    move-result-object v9

    invoke-static {v9, v15}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lo/AK;->e()Z

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 385
    invoke-static/range {v16 .. v23}, Lo/FN;->c(Lo/FN;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLjava/lang/String;IILjava/lang/Object;)V

    goto :goto_8

    .line 390
    :cond_f
    invoke-interface {v2}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v7, v8, :cond_11

    .line 391
    instance-of v7, v2, Lo/Bb;

    if-nez v7, :cond_10

    goto :goto_7

    :cond_10
    move-object v5, v2

    :goto_7
    check-cast v5, Lo/Bb;

    if-eqz v5, :cond_11

    .line 392
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7, v5}, Lo/FN;->d(Lo/FN;Lo/Bb;)V

    .line 393
    sget-object v5, Lo/akj;->a:Lo/akj;

    .line 397
    :cond_11
    :goto_8
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v5, v2}, Lo/FN;->i(Lo/Bc;)V

    .line 400
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v5}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v5

    .line 401
    sget-object v7, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {v7, v2}, Lo/DJ;->d(Lo/Bc;)Lo/DC$Intent;

    move-result-object v7

    check-cast v7, Lo/VintfObject;

    .line 1193
    const-class v8, Lo/DC;

    invoke-virtual {v5, v8, v7}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 405
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v5, v2}, Lo/FN;->j(Lo/Bc;)V

    .line 408
    invoke-interface {v2}, Lo/Bc;->bo()Lcom/netflix/model/leafs/originals/ContentWarning;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 409
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v7}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v7

    .line 410
    new-instance v8, Lo/DC$BroadcastReceiver;

    const-string v9, "contentWarning"

    .line 411
    invoke-static {v5, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-direct {v8, v5}, Lo/DC$BroadcastReceiver;-><init>(Lcom/netflix/model/leafs/originals/ContentWarning;)V

    check-cast v8, Lo/VintfObject;

    .line 1195
    const-class v5, Lo/DC;

    invoke-virtual {v7, v5, v8}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 414
    sget-object v5, Lo/akj;->a:Lo/akj;

    .line 417
    :cond_12
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v5}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v5

    .line 418
    new-instance v7, Lo/DC$ComponentName;

    .line 419
    sget-object v8, Lo/DJ;->e:Lo/DJ;

    .line 420
    invoke-virtual {v1}, Lo/FC$StateListAnimator;->c()Lo/Bc;

    move-result-object v9

    .line 421
    iget-object v10, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v10}, Lo/FN;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 419
    invoke-virtual {v8, v9, v10}, Lo/DJ;->b(Lo/Bc;Landroid/content/Context;)Z

    move-result v8

    .line 418
    invoke-direct {v7, v8}, Lo/DC$ComponentName;-><init>(Z)V

    check-cast v7, Lo/VintfObject;

    .line 1197
    const-class v8, Lo/DC;

    invoke-virtual {v5, v8, v7}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 427
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v5}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v5

    .line 428
    new-instance v7, Lo/DC$AssistContent;

    .line 429
    invoke-virtual {v1}, Lo/FC$StateListAnimator;->c()Lo/Bc;

    move-result-object v8

    invoke-interface {v8}, Lo/Bc;->bb()Lo/AK;

    move-result-object v8

    const-string v9, "detailsPageData.videoDetails.playable"

    invoke-static {v8, v9}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lo/AK;->P()I

    move-result v8

    .line 430
    invoke-virtual {v1}, Lo/FC$StateListAnimator;->c()Lo/Bc;

    move-result-object v1

    invoke-interface {v1}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->resetUserState()Z

    move-result v1

    if-ne v1, v6, :cond_13

    const/4 v4, 0x1

    .line 428
    :cond_13
    invoke-direct {v7, v8, v4}, Lo/DC$AssistContent;-><init>(IZ)V

    check-cast v7, Lo/VintfObject;

    .line 1199
    const-class v1, Lo/DC;

    invoke-virtual {v5, v1, v7}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 434
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v1, v2}, Lo/FN;->c(Lo/FN;Lo/Bc;)V

    .line 436
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v1}, Lo/FN;->g(Lo/FN;)V

    .line 439
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v1}, Lo/FN;->h(Lo/FN;)Lo/DD;

    move-result-object v1

    if-eqz v1, :cond_26

    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v1, v2}, Lo/DD;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    sget-object v1, Lo/akj;->a:Lo/akj;

    goto/16 :goto_a

    .line 442
    :cond_14
    instance-of v2, v1, Lo/FC$Activity;

    if-eqz v2, :cond_20

    .line 443
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 447
    sget-object v2, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v2}, Lo/eG$Application;->d()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e:Z

    if-nez v2, :cond_15

    .line 448
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 449
    new-instance v3, Lo/DC$IntentSender;

    invoke-direct {v3, v4, v4}, Lo/DC$IntentSender;-><init>(ZZ)V

    check-cast v3, Lo/VintfObject;

    .line 1206
    const-class v7, Lo/DC;

    invoke-virtual {v2, v7, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 456
    :cond_15
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2, v4}, Lo/FN;->b(Lo/FN;Z)V

    .line 457
    check-cast v1, Lo/FC$Activity;

    invoke-virtual {v1}, Lo/FC$Activity;->b()Lo/Bc;

    move-result-object v1

    .line 458
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2, v1}, Lo/FN;->a(Lo/FN;Lo/Bc;)V

    .line 460
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->f(Lo/FN;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 461
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 462
    new-instance v3, Lo/FH$PictureInPictureParams;

    .line 463
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v4}, Lo/FN;->f(Lo/FN;)Landroid/os/Parcelable;

    move-result-object v4

    const-string v7, "layoutManagerSavedState"

    invoke-static {v4, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-direct {v3, v4}, Lo/FH$PictureInPictureParams;-><init>(Landroid/os/Parcelable;)V

    check-cast v3, Lo/VintfObject;

    .line 1208
    const-class v4, Lo/FH;

    invoke-virtual {v2, v4, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 466
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    check-cast v5, Landroid/os/Parcelable;

    invoke-static {v2, v5}, Lo/FN;->e(Lo/FN;Landroid/os/Parcelable;)V

    .line 470
    :cond_16
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2, v1}, Lo/FN;->e(Lo/FN;Lo/Bc;)V

    .line 476
    sget-object v2, Lo/DJ;->e:Lo/DJ;

    invoke-virtual {v2, v1}, Lo/DJ;->b(Lo/Bc;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 478
    sget-object v3, Lo/DJ;->e:Lo/DJ;

    iget-object v4, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v4}, Lo/FN;->j(Lo/FN;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lo/DJ;->b(Ljava/util/List;I)Lo/DQ;

    move-result-object v3

    .line 481
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v4}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v4

    .line 482
    new-instance v5, Lo/DC$Fragment;

    .line 484
    invoke-interface {v1}, Lo/Bc;->bl()Ljava/lang/String;

    move-result-object v7

    .line 482
    invoke-direct {v5, v2, v7}, Lo/DC$Fragment;-><init>(Ljava/util/List;Ljava/lang/String;)V

    check-cast v5, Lo/VintfObject;

    .line 1210
    const-class v2, Lo/DC;

    invoke-virtual {v4, v2, v5}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 488
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->j(Lo/FN;)I

    move-result v4

    invoke-virtual {v2, v4}, Lo/FN;->c(I)V

    if-eqz v3, :cond_1a

    .line 491
    invoke-virtual {v3}, Lo/DQ;->e()I

    move-result v2

    if-eqz v2, :cond_19

    if-eq v2, v6, :cond_18

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    goto :goto_9

    .line 493
    :cond_17
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v2}, Lo/FN;->Z()V

    goto :goto_9

    .line 492
    :cond_18
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v2}, Lo/FN;->X()V

    goto :goto_9

    .line 494
    :cond_19
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v2}, Lo/FN;->aa()V

    .line 501
    :cond_1a
    :goto_9
    invoke-interface {v1}, Lo/Bc;->isPreRelease()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->e(Lo/FN;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_1b

    .line 502
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-virtual {v2}, Lo/FN;->Z()V

    .line 503
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->j(Lo/FN;)I

    move-result v3

    invoke-virtual {v2, v3}, Lo/FN;->c(I)V

    .line 505
    :cond_1b
    sget-object v2, Lo/akj;->a:Lo/akj;

    .line 508
    :cond_1c
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 509
    new-instance v3, Lo/FH$Activity;

    invoke-direct {v3, v1}, Lo/FH$Activity;-><init>(Lo/Bc;)V

    check-cast v3, Lo/VintfObject;

    .line 1212
    const-class v4, Lo/FH;

    invoke-virtual {v2, v4, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 512
    sget-object v2, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v2}, Lo/eG$Application;->d()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-interface {v1}, Lo/Bc;->isPreRelease()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-interface {v1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_1e

    .line 515
    :cond_1d
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 516
    sget-object v3, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    check-cast v3, Lo/VintfObject;

    .line 1214
    const-class v4, Lo/ApduList;

    invoke-virtual {v2, v4, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 521
    :cond_1e
    invoke-interface {v1}, Lo/Bc;->isPreRelease()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-interface {v1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_26

    .line 523
    :cond_1f
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v1, v2}, Lo/FN;->a(Lo/FN;Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_a

    .line 526
    :cond_20
    instance-of v2, v1, Lo/FC$AssistContent;

    if-eqz v2, :cond_21

    .line 527
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 528
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2, v6}, Lo/FN;->a(Lo/FN;Z)V

    .line 529
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 530
    sget-object v3, Lo/DC$Activity;->d:Lo/DC$Activity;

    check-cast v3, Lo/VintfObject;

    .line 1221
    const-class v4, Lo/DC;

    invoke-virtual {v2, v4, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 533
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    check-cast v1, Lo/FC$AssistContent;

    invoke-virtual {v1}, Lo/FC$AssistContent;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lo/FN;->b(Lo/FN;Ljava/util/List;)V

    goto/16 :goto_a

    .line 535
    :cond_21
    instance-of v2, v1, Lo/FC$PictureInPictureParams;

    if-eqz v2, :cond_22

    .line 536
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 537
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    check-cast v1, Lo/FC$PictureInPictureParams;

    invoke-virtual {v1}, Lo/FC$PictureInPictureParams;->d()Lo/Bc;

    move-result-object v1

    invoke-static {v2, v1}, Lo/FN;->d(Lo/FN;Lo/Bc;)V

    goto/16 :goto_a

    .line 539
    :cond_22
    instance-of v2, v1, Lo/FC$TaskStackBuilder;

    if-eqz v2, :cond_23

    .line 540
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 541
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    check-cast v1, Lo/FC$TaskStackBuilder;

    invoke-virtual {v1}, Lo/FC$TaskStackBuilder;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lo/FN;->e(Lo/FN;Ljava/util/List;)V

    goto/16 :goto_a

    .line 543
    :cond_23
    instance-of v2, v1, Lo/FC$TaskDescription;

    if-eqz v2, :cond_24

    .line 544
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 546
    iget-boolean v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e:Z

    if-nez v2, :cond_26

    .line 547
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    check-cast v1, Lo/FC$TaskDescription;

    invoke-virtual {v1}, Lo/FC$TaskDescription;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v3

    invoke-static {v2, v3}, Lo/FN;->c(Lo/FN;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 548
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->h(Lo/FN;)Lo/DD;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lo/FC$TaskDescription;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/DD;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    sget-object v1, Lo/akj;->a:Lo/akj;

    goto :goto_a

    .line 551
    :cond_24
    instance-of v2, v1, Lo/FC$LoaderManager;

    if-eqz v2, :cond_25

    .line 552
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 554
    iget-boolean v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e:Z

    if-nez v2, :cond_26

    .line 555
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 556
    new-instance v3, Lo/DC$IntentSender;

    invoke-direct {v3, v6, v6}, Lo/DC$IntentSender;-><init>(ZZ)V

    check-cast v3, Lo/VintfObject;

    .line 1243
    const-class v4, Lo/DC;

    invoke-virtual {v2, v4, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 561
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->h(Lo/FN;)Lo/DD;

    move-result-object v2

    if-eqz v2, :cond_26

    check-cast v1, Lo/FC$LoaderManager;

    invoke-virtual {v1}, Lo/FC$LoaderManager;->d()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/DD;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    sget-object v1, Lo/akj;->a:Lo/akj;

    goto :goto_a

    .line 564
    :cond_25
    instance-of v2, v1, Lo/FC$Fragment;

    if-eqz v2, :cond_26

    .line 565
    sget-object v2, Lo/FN;->u:Lo/FN$Application;

    check-cast v2, Lo/MessagePdu;

    .line 567
    iget-boolean v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e:Z

    if-nez v2, :cond_26

    .line 568
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 569
    new-instance v3, Lo/DC$IntentSender;

    invoke-direct {v3, v4, v6}, Lo/DC$IntentSender;-><init>(ZZ)V

    check-cast v3, Lo/VintfObject;

    .line 1250
    const-class v4, Lo/DC;

    invoke-virtual {v2, v4, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 575
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    invoke-static {v2}, Lo/FN;->a(Lo/FN;)Lo/UpdateEngine;

    move-result-object v2

    .line 576
    new-instance v3, Lo/DC$PendingIntent;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    check-cast v3, Lo/VintfObject;

    .line 1252
    const-class v4, Lo/DC;

    invoke-virtual {v2, v4, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 580
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->b:Lo/FN;

    check-cast v1, Lo/FC$Fragment;

    invoke-virtual {v1}, Lo/FC$Fragment;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-static {v2, v1}, Lo/FN;->a(Lo/FN;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_26
    :goto_a
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Lo/FC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/VideoDetailsFragmentPhone_Ab18255$subscribeToDetailsDataObservable$1;->e(Lo/FC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
