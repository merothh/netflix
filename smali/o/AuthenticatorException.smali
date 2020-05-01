.class abstract Lo/AuthenticatorException;
.super Lo/AccountManagerInternal;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/AccountManagerInternal<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/ActivityView<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lo/AccountManagerInternal;-><init>(Ljava/util/List;)V

    return-void
.end method
