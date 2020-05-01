.class Lo/ip$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ip;->c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;
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
.field final synthetic a:Lo/bY$TaskDescription;

.field final synthetic b:Lo/ip;


# direct methods
.method constructor <init>(Lo/ip;Lo/bY$TaskDescription;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lo/ip$4;->b:Lo/ip;

    iput-object p2, p0, Lo/ip$4;->a:Lo/bY$TaskDescription;

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

    .line 168
    iget-object v0, p0, Lo/ip$4;->b:Lo/ip;

    iget-object v1, p0, Lo/ip$4;->a:Lo/bY$TaskDescription;

    invoke-virtual {v1}, Lo/bY$TaskDescription;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/ip;->b(Lo/ip;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    .line 169
    iget-object p1, p0, Lo/ip$4;->b:Lo/ip;

    iget-object v0, p0, Lo/ip$4;->a:Lo/bY$TaskDescription;

    invoke-virtual {v0}, Lo/bY$TaskDescription;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ip;->a(Lo/ip;Ljava/lang/String;)V

    return-void
.end method
