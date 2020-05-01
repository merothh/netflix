.class Lo/ig$4;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ig;
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
.field final synthetic a:Lo/ig;


# direct methods
.method constructor <init>(Lo/ig;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/ig$4;->a:Lo/ig;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lo/bY$ActionBar;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lo/bY$ActionBar;

    invoke-virtual {p0, p1}, Lo/ig$4;->a(Lo/bY$ActionBar;)V

    return-void
.end method
