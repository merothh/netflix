.class Lo/UncheckedIOException$2;
.super Lo/TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UncheckedIOException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/UncheckedIOException;


# direct methods
.method constructor <init>(Lo/UncheckedIOException;Z)V
    .locals 0

    .line 105
    iput-object p1, p0, Lo/UncheckedIOException$2;->d:Lo/UncheckedIOException;

    invoke-direct {p0, p2}, Lo/TaskDescription;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 108
    iget-object v0, p0, Lo/UncheckedIOException$2;->d:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->f()V

    return-void
.end method
