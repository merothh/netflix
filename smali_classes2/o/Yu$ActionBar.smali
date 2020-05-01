.class final Lo/Yu$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yu;->b(Lo/Am;Ljava/lang/String;IIZ)Lio/reactivex/Observable;
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
.field final synthetic a:I

.field final synthetic b:Lo/Yu;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/Am;

.field final synthetic j:Z


# direct methods
.method constructor <init>(Lo/Yu;IILo/Am;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lo/Yu$ActionBar;->b:Lo/Yu;

    iput p2, p0, Lo/Yu$ActionBar;->c:I

    iput p3, p0, Lo/Yu$ActionBar;->a:I

    iput-object p4, p0, Lo/Yu$ActionBar;->e:Lo/Am;

    iput-object p5, p0, Lo/Yu$ActionBar;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lo/Yu$ActionBar;->j:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/Yu;->a:Lo/Yu$Application;

    invoke-virtual {v2}, Lo/Yu$Application;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": fetchPreviews - browseAgent is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 42
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lo/YE;->a:Lo/YE;

    iget v1, p0, Lo/Yu$ActionBar;->c:I

    invoke-virtual {v0, v1}, Lo/YE;->e(I)V

    .line 45
    sget-object v0, Lo/YE;->a:Lo/YE;

    iget v1, p0, Lo/Yu$ActionBar;->a:I

    invoke-virtual {v0, v1}, Lo/YE;->a(I)V

    .line 47
    iget-object v0, p0, Lo/Yu$ActionBar;->e:Lo/Am;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    sget-object v0, Lo/YE;->a:Lo/YE;

    invoke-virtual {v0}, Lo/YE;->c()I

    move-result v2

    .line 49
    sget-object v0, Lo/YE;->a:Lo/YE;

    invoke-virtual {v0}, Lo/YE;->d()I

    move-result v3

    .line 50
    iget-object v4, p0, Lo/Yu$ActionBar;->d:Ljava/lang/String;

    .line 51
    new-instance v0, Lo/Yu$ActionBar$3;

    sget-object v5, Lo/Yu;->a:Lo/Yu$Application;

    invoke-virtual {v5}, Lo/Yu$Application;->getLogTag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, p1, v5}, Lo/Yu$ActionBar$3;-><init>(Lo/Yu$ActionBar;Lio/reactivex/ObservableEmitter;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lo/zU;

    .line 58
    iget-boolean v6, p0, Lo/Yu$ActionBar;->j:Z

    .line 47
    invoke-interface/range {v1 .. v6}, Lo/zG;->d(IILjava/lang/String;Lo/zU;Z)Z

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lo/Yu$ActionBar;->b:Lo/Yu;

    .line 61
    sget-object v0, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 63
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_0
    return-void
.end method
