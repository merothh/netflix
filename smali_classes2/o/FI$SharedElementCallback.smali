.class final Lo/FI$SharedElementCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI;->d(Lo/Am;Ljava/lang/String;)Lio/reactivex/Observable;
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
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/Am;

.field final synthetic e:Lo/FI;


# direct methods
.method constructor <init>(Lo/FI;Lo/Am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/FI$SharedElementCallback;->e:Lo/FI;

    iput-object p2, p0, Lo/FI$SharedElementCallback;->d:Lo/Am;

    iput-object p3, p0, Lo/FI$SharedElementCallback;->b:Ljava/lang/String;

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

    .line 211
    iget-object v0, p0, Lo/FI$SharedElementCallback;->d:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p0, Lo/FI$SharedElementCallback;->b:Ljava/lang/String;

    new-instance v2, Lo/FI$Activity;

    iget-object v3, p0, Lo/FI$SharedElementCallback;->e:Lo/FI;

    invoke-direct {v2, v3, p1}, Lo/FI$Activity;-><init>(Lo/FI;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lo/zU;

    invoke-interface {v0, v1, v2}, Lo/zG;->c(Ljava/lang/String;Lo/zU;)Z

    return-void
.end method
