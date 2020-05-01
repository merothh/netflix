.class Lo/ir$3;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lo/bY$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/ir;


# direct methods
.method constructor <init>(Lo/ir;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/ir$3;->c:Lo/ir;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lo/bY$ActionBar;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lo/bY$ActionBar;

    invoke-virtual {p0, p1}, Lo/ir$3;->c(Lo/bY$ActionBar;)V

    return-void
.end method
