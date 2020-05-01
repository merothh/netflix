.class public Lo/ExitTransitionCoordinator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>(I[BLjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lo/ExitTransitionCoordinator;->d:I

    .line 38
    iput-object p2, p0, Lo/ExitTransitionCoordinator;->c:[B

    .line 39
    iput-object p3, p0, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    .line 40
    iput-boolean p4, p0, Lo/ExitTransitionCoordinator;->b:Z

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xc8

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, v0, p1, p2, v1}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V

    return-void
.end method
