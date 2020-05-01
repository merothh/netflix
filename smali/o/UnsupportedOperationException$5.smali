.class Lo/UnsupportedOperationException$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Thread$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnsupportedOperationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Thread$StateListAnimator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/UnsupportedOperationException;


# direct methods
.method constructor <init>(Lo/UnsupportedOperationException;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lo/UnsupportedOperationException$5;->c:Lo/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lo/UnsupportedOperationException$5;->c:Lo/UnsupportedOperationException;

    invoke-virtual {v0, p1, p2}, Lo/UnsupportedOperationException;->d(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
