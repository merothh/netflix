.class public Lo/CantAddAccountActivity;
.super Lo/AuthenticatorException;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AuthenticatorException<",
        "Lo/AppIdInt;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lo/AppIdInt;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Lo/AppIdInt;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lo/AuthenticatorException;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ActivityView;

    iget-object p1, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast p1, Lo/AppIdInt;

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lo/AppIdInt;->c()I

    move-result v0

    .line 15
    :goto_0
    new-instance p1, Lo/AppIdInt;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lo/AppIdInt;-><init>([F[I)V

    iput-object p1, p0, Lo/CantAddAccountActivity;->e:Lo/AppIdInt;

    return-void
.end method


# virtual methods
.method synthetic c(Lo/ActivityView;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lo/CantAddAccountActivity;->e(Lo/ActivityView;F)Lo/AppIdInt;

    move-result-object p1

    return-object p1
.end method

.method e(Lo/ActivityView;F)Lo/AppIdInt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "Lo/AppIdInt;",
            ">;F)",
            "Lo/AppIdInt;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lo/CantAddAccountActivity;->e:Lo/AppIdInt;

    iget-object v1, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast v1, Lo/AppIdInt;

    iget-object p1, p1, Lo/ActivityView;->b:Ljava/lang/Object;

    check-cast p1, Lo/AppIdInt;

    invoke-virtual {v0, v1, p1, p2}, Lo/AppIdInt;->b(Lo/AppIdInt;Lo/AppIdInt;F)V

    .line 20
    iget-object p1, p0, Lo/CantAddAccountActivity;->e:Lo/AppIdInt;

    return-object p1
.end method
