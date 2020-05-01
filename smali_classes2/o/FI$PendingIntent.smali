.class final Lo/FI$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI;->b(Lo/Am;Ljava/lang/String;)Lio/reactivex/Observable;
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

.field final synthetic c:Lo/FI;

.field final synthetic d:Lo/Am;


# direct methods
.method constructor <init>(Lo/FI;Lo/Am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/FI$PendingIntent;->c:Lo/FI;

    iput-object p2, p0, Lo/FI$PendingIntent;->d:Lo/Am;

    iput-object p3, p0, Lo/FI$PendingIntent;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lo/FI$PendingIntent;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p0, Lo/FI$PendingIntent;->a:Ljava/lang/String;

    .line 223
    new-instance v2, Lo/FI$StateListAnimator;

    iget-object v3, p0, Lo/FI$PendingIntent;->c:Lo/FI;

    invoke-direct {v2, v3, p1}, Lo/FI$StateListAnimator;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lo/zU;

    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 220
    invoke-interface {v0, v1, p1, v3, v2}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    return-void
.end method
