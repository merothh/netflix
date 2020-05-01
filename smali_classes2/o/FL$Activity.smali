.class final Lo/FL$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL;->b(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;ZLo/hW;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/FL;

.field final synthetic c:Z

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic e:Lo/hW;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lo/Am;


# direct methods
.method constructor <init>(Lo/FL;Lo/hW;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/Am;)V
    .locals 0

    iput-object p1, p0, Lo/FL$Activity;->b:Lo/FL;

    iput-object p2, p0, Lo/FL$Activity;->e:Lo/hW;

    iput-object p3, p0, Lo/FL$Activity;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lo/FL$Activity;->c:Z

    iput-object p5, p0, Lo/FL$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p6, p0, Lo/FL$Activity;->h:Ljava/lang/String;

    iput-object p7, p0, Lo/FL$Activity;->i:Lo/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lo/FL$Activity;->e:Lo/hW;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lo/FC$TaskDescription;

    sget-object v1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INTERNAL_ERROR"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {v0, v1}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 187
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_1

    .line 192
    :cond_0
    new-instance v1, Lo/KeymasterLongArgument;

    .line 193
    iget-object v3, p0, Lo/FL$Activity;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 194
    invoke-static {}, Lo/ady;->i()Z

    move-result v9

    .line 195
    iget-boolean v2, p0, Lo/FL$Activity;->c:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    :goto_0
    move-object v10, v2

    const/16 v11, 0x3e

    const/4 v12, 0x0

    move-object v2, v1

    .line 192
    invoke-direct/range {v2 .. v12}, Lo/KeymasterLongArgument;-><init>(Ljava/lang/String;ZZZZZZLcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;ILo/amc;)V

    check-cast v1, Lo/SettingsValidators;

    .line 197
    new-instance v2, Lo/FL$Activity$5;

    invoke-direct {v2, p0, p1}, Lo/FL$Activity$5;-><init>(Lo/FL$Activity;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lo/ci;

    .line 191
    invoke-interface {v0, v1, v2}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :goto_1
    return-void
.end method
