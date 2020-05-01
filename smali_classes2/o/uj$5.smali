.class Lo/uj$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/uj;


# direct methods
.method constructor <init>(Lo/uj;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lo/uj$5;->b:Lo/uj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 212
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lo/uj$5;->b:Lo/uj;

    invoke-static {p1}, Lo/uj;->a(Lo/uj;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
