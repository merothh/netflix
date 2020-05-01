.class Lo/im$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/im;->c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;
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

.field final synthetic b:Lo/bY$TaskDescription;


# direct methods
.method constructor <init>(Lo/im;Lo/bY$TaskDescription;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lo/im$1;->a:Lo/im;

    iput-object p2, p0, Lo/im$1;->b:Lo/bY$TaskDescription;

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

    .line 74
    iget-object v0, p0, Lo/im$1;->a:Lo/im;

    iget-object v1, p0, Lo/im$1;->b:Lo/bY$TaskDescription;

    invoke-virtual {v1}, Lo/bY$TaskDescription;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/im;->c(Lo/im;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    .line 75
    iget-object p1, p0, Lo/im$1;->a:Lo/im;

    iget-object v0, p0, Lo/im$1;->b:Lo/bY$TaskDescription;

    invoke-virtual {v0}, Lo/bY$TaskDescription;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/im;->a(Lo/im;Ljava/lang/String;)V

    return-void
.end method
