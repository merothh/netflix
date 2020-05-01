.class Lo/Uh$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Uh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Uh;


# direct methods
.method constructor <init>(Lo/Uh;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lo/Uh$2;->a:Lo/Uh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 480
    iget-object v0, p0, Lo/Uh$2;->a:Lo/Uh;

    invoke-virtual {v0}, Lo/Uh;->f()V

    return-void
.end method
