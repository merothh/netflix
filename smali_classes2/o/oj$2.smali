.class Lo/oj$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/oj;


# direct methods
.method constructor <init>(Lo/oj;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/oj$2;->d:Lo/oj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lo/oj$2;->d:Lo/oj;

    invoke-static {v0}, Lo/oj;->a(Lo/oj;)V

    return-void
.end method
