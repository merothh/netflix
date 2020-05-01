.class public final Lcom/netflix/falcor/impl/cache/sqlite/SqliteDb$sqlWriteHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CheckBoxPreference;-><init>(Lo/GenericInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/CheckBoxPreference;


# direct methods
.method public constructor <init>(Lo/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/falcor/impl/cache/sqlite/SqliteDb$sqlWriteHandler$2;->c:Lo/CheckBoxPreference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Landroid/os/Handler;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/netflix/falcor/impl/cache/sqlite/SqliteDb$sqlWriteHandler$2;->c:Lo/CheckBoxPreference;

    invoke-static {v0}, Lo/CheckBoxPreference;->e(Lo/CheckBoxPreference;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/netflix/falcor/impl/cache/sqlite/SqliteDb$sqlWriteHandler$2;->c()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
