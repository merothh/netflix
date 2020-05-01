.class Lo/PendingHostUpdate$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PendingHostUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/RestoreSession<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final d:Lo/PendingHostUpdate$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PendingHostUpdate$Application<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLo/PendingHostUpdate$Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lo/PendingHostUpdate$Application<",
            "TData;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/PendingHostUpdate$ActionBar;->a:[B

    .line 62
    iput-object p2, p0, Lo/PendingHostUpdate$ActionBar;->d:Lo/PendingHostUpdate$Application;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lo/PendingHostUpdate$ActionBar;->d:Lo/PendingHostUpdate$Application;

    invoke-interface {v0}, Lo/PendingHostUpdate$Application;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lo/RestoreSession$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lo/RestoreSession$Application<",
            "-TData;>;)V"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lo/PendingHostUpdate$ActionBar;->d:Lo/PendingHostUpdate$Application;

    iget-object v0, p0, Lo/PendingHostUpdate$ActionBar;->a:[B

    invoke-interface {p1, v0}, Lo/PendingHostUpdate$Application;->a([B)Ljava/lang/Object;

    move-result-object p1

    .line 68
    invoke-interface {p2, p1}, Lo/RestoreSession$Application;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 90
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->a:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
