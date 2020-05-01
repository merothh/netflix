.class public final Lo/AppWidgetHostView;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/bumptech/glide/load/DecodeFormat;

.field private final b:Lo/TimeSparseArray;

.field private final c:Landroid/os/Handler;

.field private final d:Lo/RulesUpdaterContract;


# direct methods
.method public constructor <init>(Lo/TimeSparseArray;Lo/RulesUpdaterContract;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/AppWidgetHostView;->c:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lo/AppWidgetHostView;->b:Lo/TimeSparseArray;

    .line 30
    iput-object p2, p0, Lo/AppWidgetHostView;->d:Lo/RulesUpdaterContract;

    .line 31
    iput-object p3, p0, Lo/AppWidgetHostView;->a:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method
