.class public Lo/qY;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/xw;

.field private final e:Lo/ta;


# direct methods
.method public constructor <init>(Lo/ta;Lo/xw;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lo/qY;->e:Lo/ta;

    .line 15
    iput-object p2, p0, Lo/qY;->a:Lo/xw;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lo/qY;->e:Lo/ta;

    invoke-interface {v0, p1, p2}, Lo/ta;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/xK;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lo/qY;->a:Lo/xw;

    invoke-virtual {v0, p1}, Lo/xw;->b(Ljava/util/List;)V

    return-void
.end method
