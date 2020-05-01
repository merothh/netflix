.class public final Lo/Yu$ActionBar$3;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yu$ActionBar;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Yu$ActionBar;

.field final synthetic d:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lo/Yu$ActionBar;Lio/reactivex/ObservableEmitter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lo/Yu$ActionBar$3;->b:Lo/Yu$ActionBar;

    iput-object p2, p0, Lo/Yu$ActionBar$3;->d:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0, p3}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AM;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lo/zP;->e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 55
    iget-object v0, p0, Lo/Yu$ActionBar$3;->b:Lo/Yu$ActionBar;

    iget-object v0, v0, Lo/Yu$ActionBar;->b:Lo/Yu;

    sget-object v1, Lo/YE;->a:Lo/YE;

    invoke-virtual {v1}, Lo/YE;->c()I

    move-result v1

    iget-object v2, p0, Lo/Yu$ActionBar$3;->d:Lio/reactivex/ObservableEmitter;

    const-string v3, "emitter"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, v1, v2}, Lo/Yu;->d(Lo/Yu;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;ILio/reactivex/ObservableEmitter;)V

    return-void
.end method
