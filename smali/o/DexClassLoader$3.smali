.class Lo/DexClassLoader$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DexClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/DexClassLoader;


# direct methods
.method constructor <init>(Lo/DexClassLoader;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lo/DexClassLoader$3;->b:Lo/DexClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lo/DexClassLoader$3;->b:Lo/DexClassLoader;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Lo/DexClassLoader;->a(Ljava/lang/Runnable;)V

    return v1

    .line 66
    :cond_1
    iget-object p1, p0, Lo/DexClassLoader$3;->b:Lo/DexClassLoader;

    invoke-virtual {p1}, Lo/DexClassLoader;->e()V

    return v1
.end method
