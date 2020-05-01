.class Lo/nQ$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lo/nQ$14;->b:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lo/nQ$14;->b:Lo/nQ;

    invoke-static {v0, p1, p2}, Lo/nQ;->a(Lo/nQ;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
