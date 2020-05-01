.class Lo/iT$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/iT;->a([Lo/aeL$StateListAnimator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic d:Lo/iT;


# direct methods
.method constructor <init>(Lo/iT;Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lo/iT$4;->d:Lo/iT;

    iput-object p2, p0, Lo/iT$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 288
    iget-object v0, p0, Lo/iT$4;->d:Lo/iT;

    iget-object v1, p0, Lo/iT$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/iT;->c(Lo/iT;Ljava/lang/String;)V

    return-void
.end method
