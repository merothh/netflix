.class Lo/CameraManager$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CompatibilityInfo$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CameraManager;-><init>(Lo/GetCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/GetCommand;

.field final synthetic e:Lo/CameraManager;


# direct methods
.method constructor <init>(Lo/CameraManager;Lo/GetCommand;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/CameraManager$5;->e:Lo/CameraManager;

    iput-object p2, p0, Lo/CameraManager$5;->c:Lo/GetCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/CameraManager$5;->c:Lo/GetCommand;

    invoke-interface {v0, p1, p2}, Lo/GetCommand;->c(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 35
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 36
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 37
    invoke-static {p2}, Lo/CameraManager;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "Fresco"

    const-string p2, "Finalized without closing: %x %x (type = %s).\nStack:\n%s"

    .line 31
    invoke-static {p1, p2, v0}, Lo/DexMetadataHelper;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lo/CameraManager$5;->c:Lo/GetCommand;

    invoke-interface {v0}, Lo/GetCommand;->d()Z

    move-result v0

    return v0
.end method
