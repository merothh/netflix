.class final Lo/Lv$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lv;->d(Lio/reactivex/Observable;Lio/reactivex/subjects/PublishSubject;Z)Lio/reactivex/disposables/Disposable;
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
        "Lio/reactivex/functions/Consumer<",
        "Lo/Lz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Lv;

.field final synthetic b:Lio/reactivex/subjects/PublishSubject;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lo/Lv;Lio/reactivex/subjects/PublishSubject;Z)V
    .locals 0

    iput-object p1, p0, Lo/Lv$Application;->a:Lo/Lv;

    iput-object p2, p0, Lo/Lv$Application;->b:Lio/reactivex/subjects/PublishSubject;

    iput-boolean p3, p0, Lo/Lv$Application;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lo/Lz;

    invoke-virtual {p0, p1}, Lo/Lv$Application;->b(Lo/Lz;)V

    return-void
.end method

.method public final b(Lo/Lz;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lo/Lv$Application;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 230
    iget-boolean p1, p0, Lo/Lv$Application;->d:Z

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lo/Lv$Application;->a:Lo/Lv;

    invoke-virtual {p1}, Lo/Lv;->dismiss()V

    :cond_0
    return-void
.end method
