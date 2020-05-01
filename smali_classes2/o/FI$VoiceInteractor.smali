.class final Lo/FI$VoiceInteractor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI;->e(Ljava/lang/String;ZZZZZ)Lio/reactivex/Observable;
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
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic i:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZZZZ)V
    .locals 0

    iput-object p1, p0, Lo/FI$VoiceInteractor;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lo/FI$VoiceInteractor;->d:Z

    iput-boolean p3, p0, Lo/FI$VoiceInteractor;->b:Z

    iput-boolean p4, p0, Lo/FI$VoiceInteractor;->c:Z

    iput-boolean p5, p0, Lo/FI$VoiceInteractor;->a:Z

    iput-boolean p6, p0, Lo/FI$VoiceInteractor;->i:Z

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
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lo/agg;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    if-nez v0, :cond_0

    .line 652
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/FI;->e:Lo/FI$Application;

    invoke-virtual {v2}, Lo/FI$Application;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": getFullVideoDetailsInfo - browseAgent is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 656
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 655
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 658
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 660
    :cond_0
    sget-object v1, Lo/FI;->e:Lo/FI$Application;

    check-cast v1, Lo/MessagePdu;

    .line 663
    new-instance v1, Lo/KeymasterLongArgument;

    .line 664
    iget-object v3, p0, Lo/FI$VoiceInteractor;->e:Ljava/lang/String;

    .line 665
    iget-boolean v4, p0, Lo/FI$VoiceInteractor;->d:Z

    .line 666
    iget-boolean v5, p0, Lo/FI$VoiceInteractor;->b:Z

    .line 667
    iget-boolean v6, p0, Lo/FI$VoiceInteractor;->c:Z

    .line 668
    iget-boolean v7, p0, Lo/FI$VoiceInteractor;->a:Z

    .line 669
    iget-boolean v8, p0, Lo/FI$VoiceInteractor;->i:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v12, 0x0

    move-object v2, v1

    .line 663
    invoke-direct/range {v2 .. v12}, Lo/KeymasterLongArgument;-><init>(Ljava/lang/String;ZZZZZZLcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;ILo/amc;)V

    check-cast v1, Lo/SettingsValidators;

    .line 670
    new-instance v2, Lo/FI$VoiceInteractor$5;

    invoke-direct {v2, p0, p1}, Lo/FI$VoiceInteractor$5;-><init>(Lo/FI$VoiceInteractor;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lo/ci;

    .line 662
    invoke-interface {v0, v1, v2}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :goto_0
    return-void
.end method
