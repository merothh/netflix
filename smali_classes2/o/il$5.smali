.class Lo/il$5;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/il;
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
.field final synthetic e:Lo/il;


# direct methods
.method constructor <init>(Lo/il;Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/il$5;->e:Lo/il;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lo/bY$ActionBar;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lo/il$5;->e:Lo/il;

    invoke-virtual {v0, p1}, Lo/il;->c(Lo/bY$ActionBar;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lo/il$5;->e:Lo/il;

    invoke-virtual {v0, p1}, Lo/il;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/bY$ActionBar;

    invoke-virtual {p0, p1}, Lo/il$5;->d(Lo/bY$ActionBar;)V

    return-void
.end method
