.class Lo/UncheckedIOException$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UncheckedIOException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/UncheckedIOException;


# direct methods
.method constructor <init>(Lo/UncheckedIOException;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/UncheckedIOException$4;->a:Lo/UncheckedIOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 150
    iget-object v0, p0, Lo/UncheckedIOException$4;->a:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->n()Z

    return-void
.end method
