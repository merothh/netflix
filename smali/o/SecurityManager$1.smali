.class Lo/SecurityManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/SecurityManager;


# direct methods
.method constructor <init>(Lo/SecurityManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lo/SecurityManager$1;->e:Lo/SecurityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lo/SecurityManager$1;->e:Lo/SecurityManager;

    invoke-virtual {v0}, Lo/SecurityManager;->e()V

    return-void
.end method
