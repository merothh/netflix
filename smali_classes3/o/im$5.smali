.class Lo/im$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/im;->d(Ljava/util/Collection;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lo/bY$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/im;


# direct methods
.method constructor <init>(Lo/im;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/im$5;->a:Lo/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/bY$ActionBar;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lo/im$5;->a:Lo/im;

    const-string v1, "dummy"

    invoke-static {v0, v1, p1}, Lo/im;->c(Lo/im;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    .line 59
    iget-object p1, p0, Lo/im$5;->a:Lo/im;

    invoke-static {p1, v1}, Lo/im;->a(Lo/im;Ljava/lang/String;)V

    return-void
.end method
